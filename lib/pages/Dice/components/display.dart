import 'package:flutter/material.dart' hide BoxDecoration, BoxShadow;
import 'package:flutter_inset_box_shadow/flutter_inset_box_shadow.dart';
import 'package:flutter_svg/svg.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:player_watchtower/global_components/stroke_text.dart';
import 'package:player_watchtower/pages/Dice/components/multiplier_controls.dart';

import '../../../providers/animation_provider.dart';
import '../../../providers/dice_provider.dart';
import '../../../providers/theme.dart';
import 'rolled_dice_icon.dart';

class Display extends ConsumerWidget {
  const Display({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    var screenHeight = MediaQuery.of(context).size.height;
    var screenWidth = MediaQuery.of(context).size.width;
    var sizeFactor = screenHeight / screenWidth;
    return Container(
      height: 80 * sizeFactor,
      width: screenWidth,
      decoration: BoxDecoration(
          color: ref.watch(themeProvider).numberDisplayBgColor,
          borderRadius: BorderRadius.all(Radius.circular(
              ref.watch(themeProvider).numberDisplayBorderRadius)),
          boxShadow: [ref.watch(themeProvider).innerShadow]),
      child: Stack(
        children: [
          Animate(
            adapter: TriggerAdapter(ref.watch(diceTotalCondition)),
            effects: ref.watch(diceTotalEffects),
            onComplete: (controller) =>
                ref.watch(diceTotalCondition.notifier).state = false,
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: Align(
                alignment: Alignment.bottomCenter,
                // Beeg display
                child: StrokeText(
                  text: ref.watch(displayNumber),
                  size: screenHeight / 10,
                ),
              ),
            ),
          ),
          Align(
              alignment: Alignment.bottomRight,
              child: DisplayMultiplierTotal(screenHeight: screenHeight)),
          Align(
              alignment: Alignment.bottomLeft,
              child: DiceIconDisplay(screenHeight: screenHeight)),
          Column(children: [
            Padding(
                padding: const EdgeInsets.all(16),
                child: SizedBox(
                  width: screenWidth,
                  child: Row(
                    children: [
                      Expanded(child: RolledDiceView(size: 18 * sizeFactor)),
                      ClearButton()
                    ],
                  ),
                )),
          ]),
        ],
      ),
    );
  }
}

class DisplayMultiplierTotal extends ConsumerWidget {
  const DisplayMultiplierTotal({
    Key? key,
    required this.screenHeight,
  }) : super(key: key);

  final double screenHeight;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Text('x${(ref.watch(multiplierProvider).toString())}',
          style: TextStyle(
              color: ref.watch(themeProvider).numberDisplayTextColor,
              fontSize: screenHeight / 25,
              fontWeight: FontWeight.w900)),
    );
  }
}

class DiceIconDisplay extends ConsumerWidget {
  const DiceIconDisplay({
    Key? key,
    required this.screenHeight,
  }) : super(key: key);

  final double screenHeight;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    String formatModifierToString() {
      if (ref.read(modifierSignPositive))
        return '+${ref.watch(modifierProvider)}';
      return '- ${ref.watch(modifierProvider)}';
    }

    return Padding(
      padding: const EdgeInsets.all(16),
      child: Stack(
        clipBehavior: Clip.none,
        children: [
          SizedBox(
            width: screenHeight / 16,
            height: screenHeight / 16,
            child: GestureDetector(
              onTap: () => (ref.read(modifierProvider) < 99)
                  ? ref.read(modifierProvider.notifier).state += 1
                  : null,
              onLongPress: (() => ref
                  .read(modifierSignPositive.notifier)
                  .state = !ref.read(modifierSignPositive)),
              onDoubleTap: (() =>
                  ref.read(modifierProvider.notifier).state = 0),
              child: Container(
                decoration: BoxDecoration(
                    color: ref.watch(themeProvider).diceTypeBgColor,
                    borderRadius: BorderRadius.all(Radius.circular(
                        ref.watch(themeProvider).diceTypeBorderRadius))),
                child: Padding(
                  padding: const EdgeInsets.all(6.0),
                  child: SvgPicture.asset(
                    'assets/D${ref.watch(selectedDiceProvider).toString()}.svg',
                    color: ref.watch(themeProvider).diceTypeStrokeColor,
                  ),
                ),
              ),
            ),
          ),
          if (ref.watch(modifierProvider) != 0)
            Positioned(
                top: -8,
                right: -8,
                child: Container(
                  height: 25,
                  width: 25,
                  decoration: BoxDecoration(
                      color: ref.watch(modifierSignPositive)
                          ? ref.watch(themeProvider).rollButtonBgColor
                          : ref.watch(themeProvider).rollButtonTextColor,
                      borderRadius: BorderRadius.circular(
                          ref.watch(themeProvider).diceButtonBorderRadius),
                      border: Border.all(
                        color: ref.watch(modifierSignPositive)
                            ? ref.watch(themeProvider).rollButtonTextColor
                            : ref.watch(themeProvider).rollButtonBgColor,
                      )),
                  child: Center(
                    child: Text(
                      ref.watch(modifierSignPositive)
                          ? '+${ref.watch(modifierProvider)}'
                          : '- ${ref.watch(modifierProvider)}',
                      style: TextStyle(
                        fontSize: 12,
                        color: ref.watch(modifierSignPositive)
                            ? ref.watch(themeProvider).rollButtonTextColor
                            : ref.watch(themeProvider).rollButtonBgColor,
                      ),
                    ),
                  ),
                ).animate().scale(begin: Offset(0.5, 0.5), duration: 100.ms))
        ],
      ),
    );
  }
}

class RolledDiceView extends ConsumerWidget {
  final double size;
  const RolledDiceView({Key? key, required this.size}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return SizedBox(
        height: size,
        child: ListView(
            scrollDirection: Axis.horizontal,
            children: ref.watch(isClear)
                ? []
                : AnimateList(
                    children: ref
                        .watch(rollHistoryProvider)
                        .last
                        .map(
                          (e) => RolledDiceIcon(
                            originalDice: e.diceValue,
                            rolledValue: e.rollValue,
                            size: size,
                          ),
                        )
                        .toList(),
                    adapter:
                        TriggerAdapter(ref.watch(rollButtonPressCondition)),
                    effects: ref.watch(rolledDisplayDiceEffects),
                    onComplete: (controller) => ref
                        .watch(rolledDisplayDiceCondition.notifier)
                        .state = false,
                  )));
  }
}
