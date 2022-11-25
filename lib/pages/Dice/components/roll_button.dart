import 'package:flutter/material.dart' hide BoxDecoration, BoxShadow;
import 'package:flutter_inset_box_shadow/flutter_inset_box_shadow.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'dart:math';
import 'package:flutter_animate/flutter_animate.dart';

import '../../../models/rolledDice.dart';
import '../../../providers/animation_provider.dart';
import '../../../providers/dice_provider.dart';
import '../../../providers/theme.dart';

class RollButton extends ConsumerWidget {
  const RollButton({Key? key}) : super(key: key);

  int randomInt(int min, int max) {
    var randomInt = min + Random.secure().nextInt((max + 1) - min);
    return randomInt;
  }

  int getRolledDiceSum(List<RolledDice> rolledDice) {
    int sum = 0;
    for (var die in rolledDice) {
      sum += die.rollValue;
    }
    return sum < 1000 ? sum : 999;
  }

  List<RolledDice> createRolledDiceList(WidgetRef ref) {
    List<RolledDice> rolledDiceList = [];
    for (var i = 0; i < ref.read(multiplierProvider); i++) {
      RolledDice die = RolledDice(
          rollValue: randomInt(1, ref.read(selectedDiceProvider)),
          diceValue: ref.read(selectedDiceProvider),
          modifier: (ref.read(modifierSignPositive)
              ? ref.read(modifierProvider)
              : ref.read(modifierProvider) * -1));
      rolledDiceList.add(die);
    }
    return rolledDiceList;
  }

  void handleNewRoll(
      dynamic dice, WidgetRef ref, int addToTotal, List<RolledDice> lastRoll) {
    ref.read(dice.notifier).state.total += addToTotal;
    ref.read(dice.notifier).state.times += lastRoll.length;
    ref.read(dice.notifier).state.average = double.parse(
        (ref.read(dice).total / ref.read(d20Stats).times).toStringAsFixed(3));
  }

  void calculateStats(WidgetRef ref) {
    List<RolledDice> lastRoll = ref.read(rollHistoryProvider).last;
    int diceValue = lastRoll[0].diceValue;
    int addToTotal = 0;
    lastRoll.forEach((element) {
      addToTotal += element.rollValue;
    });
    switch (diceValue) {
      case 20:
        handleNewRoll(d20Stats, ref, addToTotal, lastRoll);
        break;

      case 4:
        handleNewRoll(d4Stats, ref, addToTotal, lastRoll);
        break;

      case 6:
        handleNewRoll(d6Stats, ref, addToTotal, lastRoll);
        break;

      case 8:
        handleNewRoll(d8Stats, ref, addToTotal, lastRoll);
        break;

      case 10:
        handleNewRoll(d10Stats, ref, addToTotal, lastRoll);
        break;

      case 12:
        handleNewRoll(d12Stats, ref, addToTotal, lastRoll);
        break;

      case 100:
        handleNewRoll(d100Stats, ref, addToTotal, lastRoll);
        break;

      default:
    }
  }

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    int getRandomNumber(int min, int max) {
      final random = Random();
      return min + random.nextInt(max - min);
    }

    var throwDirection = getRandomNumber(-20, 20);
    var screenWidth = MediaQuery.of(context).size.width;
    return Padding(
      padding: const EdgeInsets.fromLTRB(0.0, 8, 0, 8),
      child: GestureDetector(
        onTap: () {
          buttonPressAnimation(
              ref, rollButtonPressEffects, rollButtonPressCondition);
          ref.watch(isClear.notifier).state = false;
          ref
              .read(rollHistoryProvider.notifier)
              .addRoll(createRolledDiceList(ref));

          ref.watch(displayNumber.notifier).state =
              '${getRolledDiceSum(ref.watch(rollHistoryProvider).last) + ref.watch(rollHistoryProvider).last[0].modifier}';
          triggerAnimation(ref, diceTotalEffects, diceTotalCondition, [
            ScaleEffect(
                begin: Offset(1.05, 1.05),
                delay: 300.ms,
                curve: Curves.easeInOut),
            MoveEffect(delay: 300.ms, begin: Offset(0, 5), curve: Curves.easeIn)
          ]);

          triggerAnimation(
              ref, rolledDisplayDiceEffects, rolledDisplayDiceCondition, [
            FadeEffect(duration: 200.ms, delay: 50.ms),
            RotateEffect(
                duration: 500.ms,
                begin: throwDirection >= 0 ? -.40 : .40,
                end: throwDirection >= 0 ? -1.0 : 1.0),
            MoveEffect(
                duration: 500.ms,
                begin: Offset(throwDirection.toDouble(), -20),
                curve: Curves.elasticOut,
                delay: 200.ms),
            ScaleEffect(
                duration: 200.ms,
                curve: Curves.elasticIn,
                begin: Offset(.7, .7)),
          ]);

          calculateStats(ref);
        },
        child: Animate(
          adapter: TriggerAdapter(ref.watch(rollButtonPressCondition)),
          effects: ref.watch(rollButtonPressEffects),
          onComplete: (controller) =>
              ref.watch(rollButtonPressCondition.notifier).state = false,
          child: Container(
            width: screenWidth,
            constraints: BoxConstraints(minHeight: 100),
            decoration: BoxDecoration(
                color: ref.watch(themeProvider).rollButtonBgColor,
                borderRadius: BorderRadius.all(Radius.circular(
                    ref.watch(themeProvider).numberDisplayBorderRadius)),
                boxShadow: [
                  ref.watch(themeProvider).innerShadow,
                  ref.watch(themeProvider).rollButtonOutline
                ]),
            child: Center(
                child: Text(
              "ROLL D" + ref.watch(selectedDiceProvider).toString(),
              style: TextStyle(
                  fontSize: MediaQuery.of(context).size.height * 0.05,
                  color: ref.watch(themeProvider).rollButtonTextColor,
                  fontWeight: FontWeight.w900),
            )),
          ),
        ),
      ),
    );
  }
}
