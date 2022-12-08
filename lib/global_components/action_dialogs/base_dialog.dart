import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:player_watchtower/functions/provider_logic.dart';
import 'package:player_watchtower/global_components/action_dialogs/types/changeTo_dialog.dart';
import 'package:player_watchtower/global_components/action_dialogs/types/drop_down_dialog.dart';
import 'package:player_watchtower/global_components/action_dialogs/types/increase_decrease_dialog.dart';
import 'package:player_watchtower/global_components/action_dialogs/types/skill_dialog.dart';
import 'package:player_watchtower/global_components/stroke_text.dart';
import 'package:player_watchtower/providers/forms.dart';
import 'package:player_watchtower/providers/player.dart';
import 'package:player_watchtower/providers/theme.dart';
import '../../models/playerSkill.dart';

class BaseDialog extends ConsumerWidget {
  final String title;
  final String editDialogType;
  final dynamic provider;
  final String statPropertyName;
  final Type statPropertyType;
  final bool isAbilityScore;
  final bool isIncreaseDecrease;
  final int maximumIncreaseDecrease;
  final List<String> dropDownOptions;
  const BaseDialog(
      {super.key,
      this.editDialogType = "change-to",
      this.dropDownOptions = const ['Custom'],
      this.isAbilityScore = false,
      this.isIncreaseDecrease = false,
      this.maximumIncreaseDecrease = 0,
      required this.title,
      required this.provider,
      required this.statPropertyName,
      required this.statPropertyType});

  Widget editTypeFilter(String editTypeSwitch, WidgetRef ref) {
    switch (editTypeSwitch) {
      case 'changeTo':
        return ChangeToDialog(inputType: statPropertyType);
      case 'dropDown':
        return DropDownDialog(dropDownOptions: dropDownOptions);
      case 'increaseDecrease':
        return IncreaseDecreaseDialog();
      case 'skill':
        return SkillDialog(
            isSkillProficient: (provider).isProficient,
            playerSkillProvider: provider);
      default:
        return Text("Error");
    }
  }

  int tryBoundariesReturnIncreaseDecrease(
      int currentValue, int newValue, int maxBoundary) {
    if (currentValue + newValue < 1) return 0;
    if (currentValue + newValue > maxBoundary) return maxBoundary;
    var newSum = currentValue + newValue;
    return newSum;
  }

  int increaseDecreaseWithBoundaries(
      int newValueIncreaseDecrease, String statPropertyName, WidgetRef ref) {
    switch (statPropertyName) {
      case 'currentHp':
        return tryBoundariesReturnIncreaseDecrease(
            ref.read(playerProvider).currentHp,
            newValueIncreaseDecrease,
            ref.read(playerProvider).totalHp);
      case 'exp':
        return tryBoundariesReturnIncreaseDecrease(
            ref.read(playerProvider).exp, newValueIncreaseDecrease, 355000);
      default:
        var playerJson = ref.read(playerProvider).toJson();
        return playerJson[statPropertyName];
    }
  }

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return BackdropFilter(
      filter: ImageFilter.blur(sigmaX: 4, sigmaY: 4),
      child: AlertDialog(
        actionsAlignment: MainAxisAlignment.spaceEvenly,
        title: Center(
            child: StrokeText(
          text: title.toUpperCase(),
          size: 20,
        )),
        titlePadding: EdgeInsets.all(8),
        backgroundColor: Colors.transparent,
        elevation: 38,
        contentPadding: EdgeInsets.all(0),
        content: AnimatedContainer(
          duration: Duration(milliseconds: 5000),
          decoration: BoxDecoration(
              color: ref.watch(themeProvider).primary,
              border: Border.all(color: Colors.white),
              borderRadius: BorderRadius.circular(10)),
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  child: Column(
                    children: [
                      if (editDialogType != 'skill')
                        Padding(
                          padding: const EdgeInsets.only(bottom: 16.0),
                          child: Column(
                            children: [
                              StrokeText(text: "CURRENT VALUE"),
                              Padding(
                                padding: const EdgeInsets.only(
                                    top: 4.0, bottom: 4.0),
                                child: Container(
                                  height: 50,
                                  decoration: BoxDecoration(
                                      color: ref.watch(themeProvider).bgColor,
                                      border: Border.all(
                                          color: Colors.white, width: 4),
                                      borderRadius: BorderRadius.circular(10)),
                                  child: Center(
                                      child: TextFormField(
                                    style:
                                        TextStyle(fontWeight: FontWeight.w900),
                                    readOnly: true,
                                    initialValue: provider.toString(),
                                    textAlign: TextAlign.center,
                                    textAlignVertical: TextAlignVertical.center,
                                  )),
                                ),
                              )
                            ],
                          ),
                        ),
                    ],
                  ),
                ),
                editTypeFilter(editDialogType, ref)
              ],
            ),
          ),
        ),
        actions: [
          GestureDetector(
            onTap: () {
              wipeTemporaryFormData(ref);
              Navigator.pop(context);
            },
            child: DialogActionButton(
              text: 'Cancel',
            ),
          ),
          GestureDetector(
              onTap: () {
                if (formValuesChanged(ref)) {
                  // if it's an increased or decreased integer

                  switch (editDialogType) {
                    case 'increaseDecrease':
                      int totalValueChange = ref.read(increaseValueProvider) +
                          (-1 * ref.read(decreaseValueProvider));

                      int newBoundedValue = increaseDecreaseWithBoundaries(
                          totalValueChange, statPropertyName, ref);
                      ref.read(playerProvider.notifier).updatePlayerProperty(
                          propertyName: statPropertyName,
                          newValue: newBoundedValue,
                          propertyType: int,
                          isAbilityScore: isAbilityScore);
                      wipeTemporaryFormData(ref);
                      break;

                    // this is not a permanent solution, only updates isProficient for now
                    case 'skill':
                      PlayerSkill updatedSkill = provider.copyWith(
                          isProficient: ref.read(finalCheckboxProvider));
                      ref.watch(playerProvider.notifier).updatePlayerProperty(
                          propertyName: statPropertyName,
                          newValue: updatedSkill,
                          propertyType: statPropertyType,
                          isAbilityScore: isAbilityScore);
                      wipeTemporaryFormData(ref);
                      break;
                    default:
                      // is a simple string or integer value
                      ref.watch(playerProvider.notifier).updatePlayerProperty(
                          propertyName: statPropertyName,
                          newValue: ref.read(changeToFinalProvider),
                          propertyType: statPropertyType,
                          isAbilityScore: isAbilityScore);
                      wipeTemporaryFormData(ref);
                  }
                }

                Navigator.pop(context);
              },
              child: DialogActionButton(text: 'OK'))
        ],
      ),
    );
  }
}

class DialogActionButton extends ConsumerWidget {
  final String text;
  const DialogActionButton({Key? key, required this.text}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Container(
      width: 120,
      height: 35,
      decoration: BoxDecoration(
          color: ref.watch(themeProvider).bgColor,
          border: Border.all(color: Colors.white, width: 4),
          borderRadius: BorderRadius.circular(10)),
      child: StrokeText(
        text: text,
      ),
    );
  }
}
