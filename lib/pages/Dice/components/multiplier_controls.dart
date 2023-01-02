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

    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            MinusButton(),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16.0),
              child: ClearButton(),
            ),
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
        height: 50,
        decoration: BoxDecoration(
            color: ref.watch(themeProvider).diceButtonBg,
            borderRadius: BorderRadius.all(
                Radius.circular(ref.watch(themeProvider).diceIconBorderRadius)),
            boxShadow: [
              ref.watch(themeProvider).innerShadow,
              ref.watch(themeProvider).shadow
            ]),
        child: Center(
            child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 2.0, horizontal: 24),
          child: Text(
            "CLEAR",
            style: TextStyle(
                fontSize: 18,
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
          height: 50,
          width: 75,
          decoration: BoxDecoration(
              color: ref.watch(themeProvider).numberDisplayBgColor,
              borderRadius: BorderRadius.all(Radius.circular(
                  ref.watch(themeProvider).diceIconBorderRadius)),
              boxShadow: [
                ref.watch(themeProvider).innerShadow,
              ]),
          child: Icon(
            Icons.remove,
            size: 18 * sizeFactor,
            color: ref.watch(themeProvider).multiplierTextColor,
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
          height: 50,
          width: 75,
          decoration: BoxDecoration(
              color: ref.watch(themeProvider).numberDisplayBgColor,
              borderRadius: BorderRadius.all(Radius.circular(
                  ref.watch(themeProvider).diceIconBorderRadius)),
              boxShadow: [ref.watch(themeProvider).innerShadow]),
          child: Icon(
            Icons.add,
            size: 18 * sizeFactor,
            color: ref.watch(themeProvider).multiplierTextColor,
          )),
    );
  }
}
