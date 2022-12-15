import 'package:flutter/material.dart' hide BoxDecoration, BoxShadow;
import 'package:flutter_inset_box_shadow/flutter_inset_box_shadow.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:player_watchtower/functions/calculations.dart';
import 'package:player_watchtower/global_components/stroke_text.dart';
import 'package:player_watchtower/providers/dice_provider.dart';
import 'package:player_watchtower/providers/player.dart';
import 'package:player_watchtower/providers/theme.dart';

class ModifierSwitchButton extends ConsumerWidget {
  final DiceAbilityScore diceAbilityScore;
  final String text;
  final int value;
  const ModifierSwitchButton(
      {super.key,
      required this.diceAbilityScore,
      required this.value,
      required this.text});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    bool alreadyClicked() {
      return ref.watch(addDiceAbilityScore) == diceAbilityScore;
    }

    void adjustModifier(bool alreadyClicked, int abilityScore) {
      if (alreadyClicked) {
        ref.read(addDiceAbilityScore.notifier).state = DiceAbilityScore.none;
        ref.read(modifierProvider.notifier).state = 0;
      } else {
        ref.read(addDiceAbilityScore.notifier).state = diceAbilityScore;
        ref.read(modifierProvider.notifier).state =
            getAbilityScoreModifier(abilityScore);
      }
    }

    return GestureDetector(
      onTap: () {
        switch (diceAbilityScore) {
          case DiceAbilityScore.strength:
            adjustModifier(alreadyClicked(), ref.read(playerProvider).strength);
            break;
          case DiceAbilityScore.dexterity:
            adjustModifier(
                alreadyClicked(), ref.read(playerProvider).dexterity);
            break;
          case DiceAbilityScore.constitution:
            adjustModifier(
                alreadyClicked(), ref.read(playerProvider).constitution);
            break;
          case DiceAbilityScore.intellegence:
            adjustModifier(
                alreadyClicked(), ref.read(playerProvider).intellegence);
            break;
          case DiceAbilityScore.wisdom:
            adjustModifier(alreadyClicked(), ref.read(playerProvider).wisdom);
            break;
          case DiceAbilityScore.charisma:
            adjustModifier(alreadyClicked(), ref.read(playerProvider).charisma);
            break;
          default:
        }
      },
      child: AnimatedContainer(
        duration: Duration(milliseconds: 350),
        curve: Curves.decelerate,
        height: 38,
        width: 70,
        decoration: BoxDecoration(
          color: alreadyClicked()
              ? ref.watch(themeProvider).accent
              : ref.watch(themeProvider).cardBg,
          boxShadow: alreadyClicked()
              ? []
              : [ref.watch(themeProvider).diceButtonInnerShadow],
          borderRadius: BorderRadius.circular(15),
        ),
        child: Center(
            child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            StrokeText(
              text: text,
              size: alreadyClicked() ? 10 : 15,
            ),
            if (alreadyClicked())
              StrokeText(text: displayValue(getAbilityScoreModifier(value)))
          ],
        )),
      ),
    );
  }
}
