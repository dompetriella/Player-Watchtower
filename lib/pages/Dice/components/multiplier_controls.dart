import 'package:flutter/material.dart' hide BoxDecoration, BoxShadow;
import 'package:flutter_bounce/flutter_bounce.dart';
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
    return Bounce(
      duration: Duration(milliseconds: 200),
      onPressed: () {
        ref.watch(isClear.notifier).state = true;
        ref.watch(multiplierProvider.notifier).reset();
        ref.watch(modifierProvider.notifier).state = 0;
        ref.watch(displayNumber.notifier).state = '0';
        ref.watch(modifierSignPositive.notifier).state = true;
      },
      child: Container(
        decoration: BoxDecoration(
            color: ref.watch(themeProvider).diceButtonBg,
            borderRadius: BorderRadius.all(
                Radius.circular(ref.watch(themeProvider).diceIconBorderRadius)),
            border:
                Border.all(color: ref.watch(themeProvider).outline, width: 1),
            boxShadow: [ref.watch(themeProvider).innerShadow]),
        child: Center(
            child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Text(
            "CLEAR",
            style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.w900,
                color: ref.watch(themeProvider).diceButtonTextColor),
          ),
        )),
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
    return Bounce(
      duration: Duration(milliseconds: 200),
      onPressed: () {
        ref.watch(multiplierProvider.notifier).decrement();
      },
      // onLongPress: () {
      //   ref.watch(multiplierProvider.notifier).bigDecrement();
      // },
      child: Container(
          height: screenHeight / 10,
          width: screenWidth / 1.5,
          decoration: BoxDecoration(
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
    return Bounce(
      duration: Duration(milliseconds: 200),
      onPressed: () {
        ref.watch(multiplierProvider.notifier).increment();
      },
      // onLongPress: () {
      //   ref.watch(multiplierProvider.notifier).bigIncrement();
      // },
      child: Container(
          height: screenHeight / 10,
          width: screenWidth / 1.5,
          decoration: BoxDecoration(
              color: ref.watch(themeProvider).numberDisplayBgColor,
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
    );
  }
}
