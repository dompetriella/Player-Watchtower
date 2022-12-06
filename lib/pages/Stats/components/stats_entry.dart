import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:player_watchtower/global_components/action_dialogs/base_dialog.dart';
import 'package:player_watchtower/global_components/stroke_text.dart';
import 'package:player_watchtower/providers/theme.dart';
import 'package:player_watchtower/functions/calculations.dart';

class StatsEntry extends ConsumerWidget {
  final String title;
  final String statPropertyName;
  final bool isModifier;
  final bool isAbilityScore;
  final Widget displayWidget;
  final dynamic provider;
  final String editDialogType;
  final List<String> dropDownOptions;
  final int maximumIncreaseDecrease;
  const StatsEntry(
      {super.key,
      required this.provider,
      required this.title,
      required this.statPropertyName,
      this.dropDownOptions = const ['Custom'],
      this.isAbilityScore = false,
      this.editDialogType = 'changeTo',
      this.displayWidget = const SizedBox.shrink(),
      this.isModifier = false,
      this.maximumIncreaseDecrease = 0});
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    double width = MediaQuery.of(context).size.width;

    return GestureDetector(
      onLongPress: () {
        showDialog(
            context: context,
            builder: (_) => BaseDialog(
                  editDialogType: editDialogType,
                  title: title,
                  provider: provider,
                  statPropertyName: statPropertyName,
                  statPropertyType: provider.runtimeType,
                  isAbilityScore: isAbilityScore,
                  dropDownOptions: dropDownOptions,
                  isIncreaseDecrease:
                      editDialogType == 'increaseDecrease' ? true : false,
                  maximumIncreaseDecrease: maximumIncreaseDecrease,
                ));
      },
      child: Padding(
        padding: const EdgeInsets.fromLTRB(0, 6, 0, 6),
        child: Container(
          decoration: BoxDecoration(
              color: ref.watch(themeProvider).cardBg,
              borderRadius: BorderRadius.circular(10)),
          child: Padding(
            padding: const EdgeInsets.all(6.0),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Container(
                      width: width * 0.33,
                      child: Padding(
                        padding: const EdgeInsets.fromLTRB(0, 8, 0, 8),
                        child: StrokeText(
                          text: title,
                          size: width / 20,
                        ),
                      ),
                    ),
                    Container(
                      width: 160,
                      decoration: BoxDecoration(
                          color: ref.watch(themeProvider).bgColor,
                          border: Border.all(color: Colors.white),
                          borderRadius: BorderRadius.circular(10)),
                      child: Padding(
                        padding: const EdgeInsets.fromLTRB(5, 10, 5, 10),
                        child: StrokeText(
                          text: isModifier
                              ? displayValue(provider)
                              : provider.toString(),
                          size: width / 18,
                        ),
                      ),
                    ),
                  ],
                ),
                displayWidget
              ],
            ),
          ),
        ),
      ),
    );
  }
}
