import 'package:flutter/material.dart' hide BoxDecoration, BoxShadow;
import 'package:flutter_inset_box_shadow/flutter_inset_box_shadow.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../../models/rolledDice.dart';
import '../../../../providers/dice_provider.dart';
import '../../../../providers/theme.dart';

class StatsLog extends ConsumerWidget {
  final String diceValue;
  const StatsLog({Key? key, required this.diceValue}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    double buttonSize = MediaQuery.of(context).size.height * 0.08;

    StateProvider<StatsDice> chosenDice() {
      switch (diceValue) {
        case '20':
          return d20Stats;
        case '4':
          return d4Stats;
        case '6':
          return d6Stats;
        case '8':
          return d8Stats;
        case '10':
          return d10Stats;
        case '12':
          return d12Stats;
        case '100':
          return d100Stats;
        default:
          return d20Stats;
      }
    }

    var thisDieProvider = chosenDice();

    return Padding(
      padding: const EdgeInsets.all(4.0),
      child: Container(
        width: buttonSize * 1.1,
        height: buttonSize,
        decoration: BoxDecoration(
          color: ref.watch(themeProvider).diceButtonBg,
          border: Border.all(color: ref.watch(themeProvider).outline, width: 2),
          boxShadow: [ref.watch(themeProvider).shadow],
          borderRadius: BorderRadius.all(
              Radius.circular(ref.watch(themeProvider).diceButtonBorderRadius)),
        ),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(
                'D$diceValue',
                style: TextStyle(
                    color: ref.watch(themeProvider).diceButtonTextColor,
                    fontWeight: FontWeight.bold,
                    fontSize: MediaQuery.of(context).size.height * 0.020),
              ),
              Text(
                'Rolls: ${ref.watch(thisDieProvider).times}',
                style: TextStyle(
                    color: ref.watch(themeProvider).diceButtonTextColor,
                    fontWeight: FontWeight.normal,
                    fontSize: MediaQuery.of(context).size.height * 0.012),
              ),
              Text(
                'Avg: ${double.parse((ref.watch(thisDieProvider).average).toStringAsFixed(1))}',
                style: TextStyle(
                    color: ref.watch(themeProvider).diceButtonTextColor,
                    fontWeight: FontWeight.normal,
                    fontSize: MediaQuery.of(context).size.height * 0.015),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
