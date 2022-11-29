import 'package:flutter/material.dart' hide BoxDecoration, BoxShadow;
import 'package:flutter_inset_box_shadow/flutter_inset_box_shadow.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_animate/flutter_animate.dart';

import '../../../providers/animation_provider.dart';
import '../../../providers/dice_provider.dart';
import '../../../providers/theme.dart';

class MultiplierControls extends ConsumerWidget {
  const MultiplierControls({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    var screenHeight = MediaQuery.of(context).size.height;
    var screenWidth = MediaQuery.of(context).size.width;
    var sizeFactor = screenHeight / screenWidth;

    return Container(
      height: screenHeight * 0.08,
      width: screenWidth,
      child: Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            MinusButton(),
            // ClearButton(),
            PlusButton(),
          ],
        ),
      ),
    );
  }
}

class ClearButton extends ConsumerWidget {
  const ClearButton({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return GestureDetector(
      onTap: () {
        buttonPressAnimation(ref, multiplierClearButtonPressEffects,
            multiplierClearButtonPressCondition,
            speed: 100, name: "Clear");
        ref.watch(isClear.notifier).state = true;
        ref.watch(multiplierProvider.notifier).reset();
        ref.watch(modifierProvider.notifier).state = 0;
        ref.watch(displayNumber.notifier).state = '0';
        ref.watch(modifierSignPositive.notifier).state = true;
      },
      child: Animate(
        adapter: TriggerAdapter(ref.watch(multiplierClearButtonPressCondition)),
        effects: ref.watch(multiplierClearButtonPressEffects),
        onComplete: (controller) => ref
            .watch(multiplierClearButtonPressCondition.notifier)
            .state = false,
        child: Container(
          decoration: BoxDecoration(
              color: ref.watch(themeProvider).diceButtonBg,
              borderRadius: BorderRadius.all(Radius.circular(
                  ref.watch(themeProvider).diceIconBorderRadius)),
              border:
                  Border.all(color: ref.watch(themeProvider).outline, width: 1),
              boxShadow: [ref.watch(themeProvider).shadow]),
          child: Center(
              child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              "CLEAR",
              style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.w900,
                  color: ref.watch(themeProvider).diceButtonTextColor),
            ),
          )),
        ),
      ),
    );
  }
}

class MinusButton extends ConsumerWidget {
  const MinusButton({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    var screenHeight = MediaQuery.of(context).size.height;
    var screenWidth = MediaQuery.of(context).size.width;
    var sizeFactor = screenHeight / screenWidth;
    return GestureDetector(
      onTap: () {
        buttonPressAnimation(ref, multiplierMinusButtonPressEffects,
            multiplierMinusButtonPressCondition,
            speed: 100, name: 'Minus');
        ref.watch(multiplierProvider.notifier).decrement();
      },
      onLongPress: () {
        buttonPressAnimation(ref, multiplierMinusButtonPressEffects,
            multiplierMinusButtonPressCondition,
            speed: 300);
        ref.watch(multiplierProvider.notifier).bigDecrement();
      },
      child: Animate(
        adapter: TriggerAdapter(ref.watch(multiplierMinusButtonPressCondition)),
        effects: ref.watch(multiplierMinusButtonPressEffects),
        onComplete: (controller) => ref
            .watch(multiplierMinusButtonPressCondition.notifier)
            .state = false,
        child: Container(
            height: screenHeight / 8,
            width: screenWidth / 1.5,
            decoration: BoxDecoration(
                border: Border.all(color: Colors.white, width: 1),
                color: ref.watch(themeProvider).numberDisplayBgColor,
                borderRadius: BorderRadius.all(Radius.circular(
                    ref.watch(themeProvider).numberDisplayBorderRadius)),
                boxShadow: [
                  ref.watch(themeProvider).innerShadow,
                ]),
            child: Align(
              alignment: Alignment.centerLeft,
              child: Padding(
                padding: const EdgeInsets.only(left: 8.0),
                child: Icon(
                  Icons.remove,
                  size: 18 * sizeFactor,
                  color: ref.watch(themeProvider).multiplierTextColor,
                ),
              ),
            )),
      ),
    );
  }
}

class PlusButton extends ConsumerWidget {
  const PlusButton({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    var screenHeight = MediaQuery.of(context).size.height;
    var screenWidth = MediaQuery.of(context).size.width;
    var sizeFactor = screenHeight / screenWidth;
    return GestureDetector(
      onTap: () {
        buttonPressAnimation(ref, multiplierPlusButtonPressEffects,
            multiplierPlusButtonPressCondition,
            speed: 100, name: 'Plus');
        ref.watch(multiplierProvider.notifier).increment();
      },
      onLongPress: () {
        buttonPressAnimation(
          ref,
          multiplierPlusButtonPressEffects,
          multiplierPlusButtonPressCondition,
          speed: 300,
        );
        ref.watch(multiplierProvider.notifier).bigIncrement();
      },
      child: Animate(
        adapter: TriggerAdapter(ref.watch(multiplierPlusButtonPressCondition)),
        effects: ref.watch(multiplierPlusButtonPressEffects),
        onComplete: (controller) => ref
            .watch(multiplierPlusButtonPressCondition.notifier)
            .state = false,
        child: Container(
            height: screenHeight / 8,
            width: screenWidth / 1.5,
            decoration: BoxDecoration(
                color: ref.watch(themeProvider).numberDisplayBgColor,
                border: Border.all(color: Colors.white, width: 1),
                borderRadius: BorderRadius.all(Radius.circular(
                    ref.watch(themeProvider).numberDisplayBorderRadius)),
                boxShadow: [ref.watch(themeProvider).innerShadow]),
            child: Align(
              alignment: Alignment.centerRight,
              child: Padding(
                padding: const EdgeInsets.only(right: 8.0),
                child: Icon(
                  Icons.add,
                  size: 18 * sizeFactor,
                  color: ref.watch(themeProvider).multiplierTextColor,
                ),
              ),
            )),
      ),
    );
  }
}
