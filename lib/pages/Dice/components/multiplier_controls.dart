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

class PlusButton extends ConsumerWidget {
  const PlusButton({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
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
            height: 60,
            width: 60,
            decoration: BoxDecoration(
                color: ref.watch(themeProvider).numberDisplayBgColor,
                borderRadius: BorderRadius.all(Radius.circular(
                    ref.watch(themeProvider).diceButtonBorderRadius)),
                boxShadow: [ref.watch(themeProvider).innerShadow]),
            child: Center(
                child: Icon(
              Icons.add,
              size: 40,
              color: ref.watch(themeProvider).multiplierTextColor,
            ))),
      ),
    );
  }
}

// class ClearButton extends ConsumerWidget {
//   const ClearButton({
//     Key? key,
//   }) : super(key: key);

//   @override
//   Widget build(BuildContext context, WidgetRef ref) {
//     return Padding(
//       padding: const EdgeInsets.fromLTRB(10.0, 0, 10.0, 0),
//       child: GestureDetector(
//         onTap: () {
//           buttonPressAnimation(ref, multiplierClearButtonPressEffects,
//               multiplierClearButtonPressCondition,
//               speed: 100, name: "Clear");
//           ref.watch(isClear.notifier).state = true;
//           ref.watch(multiplierProvider.notifier).reset();
//           ref.watch(modifierProvider.notifier).state = 0;
//           ref.watch(displayNumber.notifier).state = '0';
//           ref.watch(modifierSignPositive.notifier).state = true;
//         },
//         child: Animate(
//           adapter:
//               TriggerAdapter(ref.watch(multiplierClearButtonPressCondition)),
//           effects: ref.watch(multiplierClearButtonPressEffects),
//           onComplete: (controller) => ref
//               .watch(multiplierClearButtonPressCondition.notifier)
//               .state = false,
//           child: Container(
//             height: 50,
//             width: 60,
//             decoration: BoxDecoration(
//                 color: ref.watch(themeProvider).numberDisplayBgColor,
//                 borderRadius: BorderRadius.all(Radius.circular(
//                     ref.watch(themeProvider).diceButtonBorderRadius)),
//                 border: Border.all(
//                     color: ref.watch(themeProvider).outline, width: 4),
//                 boxShadow: [ref.watch(themeProvider).shadow]),
//             child: Center(
//                 child: Text(
//               "C",
//               style: TextStyle(
//                   fontSize: 30,
//                   fontWeight: FontWeight.w900,
//                   color: ref.watch(themeProvider).multiplierTextColor),
//             )),
//           ),
//         ),
//       ),
//     );
//   }
// }

class MinusButton extends ConsumerWidget {
  const MinusButton({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
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
            height: 60,
            width: 60,
            decoration: BoxDecoration(
                color: ref.watch(themeProvider).numberDisplayBgColor,
                borderRadius: BorderRadius.all(Radius.circular(
                    ref.watch(themeProvider).diceButtonBorderRadius)),
                boxShadow: [
                  ref.watch(themeProvider).innerShadow,
                ]),
            child: Center(
                child: Icon(
              Icons.remove,
              size: 40,
              color: ref.watch(themeProvider).multiplierTextColor,
            ))),
      ),
    );
  }
}
