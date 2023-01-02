import 'package:flutter/material.dart' hide BoxDecoration, BoxShadow;
import 'package:flutter_bounce/flutter_bounce.dart';
import 'package:flutter_inset_box_shadow/flutter_inset_box_shadow.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'dart:math';
import '../../../models/rolledDice.dart';
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
    var screenHeight = MediaQuery.of(context).size.height;
    return Bounce(
      duration: Duration(milliseconds: 400),
      onPressed: () {
        ref.watch(isClear.notifier).state = false;
        ref
            .read(rollHistoryProvider.notifier)
            .addRoll(createRolledDiceList(ref));

        ref.watch(displayNumber.notifier).state =
            '${getRolledDiceSum(ref.watch(rollHistoryProvider).last) + ref.watch(rollHistoryProvider).last[0].modifier}';

        calculateStats(ref);
      },
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 32.0),
        child: Container(
          decoration: BoxDecoration(
              color: ref.watch(themeProvider).rollButtonBgColor,
              borderRadius: BorderRadius.all(Radius.circular(
                  ref.watch(themeProvider).numberDisplayBorderRadius)),
              boxShadow: [
                ref.watch(themeProvider).innerShadow,
                ref.watch(themeProvider).shadow,
                ref.watch(themeProvider).rollButtonOutline,
              ]),
          child: Padding(
            padding: const EdgeInsets.symmetric(vertical: 14),
            child: Center(
                child: Text(
              "ROLL D${ref.watch(selectedDiceProvider)}",
              style: TextStyle(
                  fontSize: MediaQuery.of(context).size.height / 22,
                  color: ref.watch(themeProvider).rollButtonTextColor,
                  fontWeight: FontWeight.w900),
            )),
          ),
        ),
      ),
    );
  }
}
