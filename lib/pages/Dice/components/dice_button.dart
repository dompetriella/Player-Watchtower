import 'package:flutter/material.dart' hide BoxDecoration, BoxShadow;
import 'package:flutter_inset_box_shadow/flutter_inset_box_shadow.dart';
import 'package:flutter_svg/svg.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_animate/flutter_animate.dart';

import '../../../providers/animation_provider.dart';
import '../../../providers/dice_provider.dart';
import '../../../providers/theme.dart';

class DiceButton extends ConsumerWidget {
  final int diceNumber;
  final double padding;
  const DiceButton({Key? key, required this.diceNumber, this.padding = 12})
      : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final double buttonHeight = MediaQuery.of(context).size.width / 4;
    String diceNumberString = diceNumber.toString();

    return Padding(
      padding: EdgeInsets.all(padding),
      child: GestureDetector(
        onTap: () => {
          ref
              .watch(selectedDiceProvider.notifier)
              .changeCurrentDie(diceNumber, ref),
          triggerAnimation(
            ref,
            diceButtonEffects,
            diceButtonCondition,
            [
              ScaleEffect(
                  begin: Offset(1.05, 1.05),
                  duration: 400.ms,
                  curve: Curves.easeInOut)
            ],
          ),
          ref.read(modifierProvider.notifier).state = 0
        },
        child: diceNumber == ref.watch(selectedDiceProvider)
            ? Animate(
                adapter: TriggerAdapter(ref.watch(diceButtonCondition)),
                effects: ref.watch(diceButtonEffects),
                onComplete: (controller) =>
                    ref.watch(diceButtonCondition.notifier).state = false,
                child: DiceButtonContainer(
                    buttonWidth: buttonHeight,
                    buttonHeight: buttonHeight,
                    diceNumber: diceNumber,
                    diceNumberString: diceNumberString),
              )
            : DiceButtonContainer(
                buttonWidth: buttonHeight,
                buttonHeight: buttonHeight,
                diceNumber: diceNumber,
                diceNumberString: diceNumberString),
      ),
    );
  }
}

class DiceButtonContainer extends ConsumerWidget {
  const DiceButtonContainer({
    Key? key,
    required this.buttonWidth,
    required this.buttonHeight,
    required this.diceNumber,
    required this.diceNumberString,
  }) : super(key: key);

  final double buttonWidth;
  final double buttonHeight;
  final int diceNumber;
  final String diceNumberString;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Container(
      width: buttonWidth,
      height: buttonHeight,
      decoration: BoxDecoration(
          color: ref.watch(themeProvider).diceButtonBg,
          borderRadius: BorderRadius.all(
              Radius.circular(ref.watch(themeProvider).diceButtonBorderRadius)),
          boxShadow: [
            ref.watch(themeProvider).innerShadow,
            ref.watch(themeProvider).diceButtonInnerShadow,
            ref.watch(themeProvider).diceButtonOutline,
            ref.watch(selectedDiceProvider) == diceNumber
                ? BoxShadow(
                    color: ref.watch(themeProvider).rollButtonBgColor,
                    offset: Offset(0, 0),
                    spreadRadius: 5,
                    blurRadius: 8,
                    blurStyle: BlurStyle.normal)
                : BoxShadow()
          ]),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            Container(
              height: buttonHeight * .50,
              width: buttonWidth,
              child: Center(
                child: SvgPicture.asset(
                  "assets/D$diceNumberString.svg",
                  color: ref.watch(themeProvider).diceButtonTextColor,
                  clipBehavior: Clip.antiAlias,
                ),
              ),
            ),
            Expanded(
                child: Align(
              alignment: Alignment.bottomCenter,
              child: Text(
                "D$diceNumberString",
                style: TextStyle(
                    color: ref.watch(themeProvider).diceButtonTextColor,
                    fontSize: 20,
                    fontWeight: FontWeight.bold),
              ),
            ))
          ],
        ),
      ),
    );
  }
}
