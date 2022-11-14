import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:player_watchtower/pages/QuickSelect/components/score_card.dart';
import 'package:player_watchtower/providers/page.dart';
import 'package:player_watchtower/providers/player.dart';
import 'package:player_watchtower/providers/theme.dart';
import 'small_score_card.dart';
import 'package:player_watchtower/global_components/multi_button.dart';
import 'package:player_watchtower/global_components/fillable_bar.dart';
import 'package:player_watchtower/functions/calculations.dart';

class BaseCard extends ConsumerWidget {
  const BaseCard({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Container(
      height: 350,
      decoration: BoxDecoration(
          color: ref.watch(themeProvider).baseCardBg,
          boxShadow: [ref.watch(themeProvider).shadow],
          border:
              Border.all(color: ref.watch(themeProvider).outline, width: 2.0),
          borderRadius: BorderRadius.circular(10)),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Flex(
          direction: Axis.vertical,
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  GestureDetector(
                    child: FaIcon(
                      FontAwesomeIcons.cloud,
                      size: 40,
                    ),
                  ),
                  HealthBarWithButtons(
                    healthbarWidth: 220,
                  ),
                ],
              ),
            ),
            Expanded(
                child: Container(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  SmallScoreCard(
                    icon: FontAwesomeIcons.shieldHalved,
                    text: ref.watch(playerProvider).armorClass.toString(),
                  ),
                  SmallScoreCard(
                      icon: FontAwesomeIcons.graduationCap,
                      text: ref.watch(autoCalculate)
                          ? displayValue(getProficiencyModifier(
                              ref.watch(playerProvider).level))
                          : displayValue(
                              ref.watch(playerProvider).proficiency)),
                  SmallScoreCard(
                      icon: FontAwesomeIcons.handFist,
                      text: ref.watch(autoCalculate)
                          ? displayValue(getAbilityScoreModifier(
                              ref.watch(playerProvider).dexterity))
                          : displayValue(ref.watch(playerProvider).initiative)),
                  SmallScoreCard(
                      icon: FontAwesomeIcons.personRunning,
                      text: ref.watch(playerProvider).speed.toString()),
                ],
              ),
            )),
            Expanded(
                flex: 4,
                child: Container(
                  child: Center(
                    child: Wrap(
                      spacing: 20,
                      runSpacing: 10,
                      alignment: WrapAlignment.spaceEvenly,
                      children: [
                        ScoreCard(
                          text: displayValue(getAbilityScoreModifier(
                              ref.watch(playerProvider).strength)),
                          icon: FontAwesomeIcons.dumbbell,
                        ),
                        ScoreCard(
                          text: displayValue(getAbilityScoreModifier(
                              ref.watch(playerProvider).dexterity)),
                          icon: FontAwesomeIcons.hand,
                        ),
                        ScoreCard(
                          text: displayValue(getAbilityScoreModifier(
                              ref.watch(playerProvider).constitution)),
                          icon: FontAwesomeIcons.heartPulse,
                        ),
                        ScoreCard(
                          text: displayValue(getAbilityScoreModifier(
                              ref.watch(playerProvider).intellegence)),
                          icon: FontAwesomeIcons.brain,
                        ),
                        ScoreCard(
                          text: displayValue(getAbilityScoreModifier(
                              ref.watch(playerProvider).wisdom)),
                          icon: FontAwesomeIcons.eye,
                        ),
                        ScoreCard(
                          text: displayValue(getAbilityScoreModifier(
                              ref.watch(playerProvider).charisma)),
                          icon: FontAwesomeIcons.solidComments,
                        ),
                      ],
                    ),
                  ),
                ))
          ],
        ),
      ),
    );
  }
}

class HealthBarWithButtons extends ConsumerWidget {
  final int total;
  final int current;
  final Color buttonBg;
  final Color iconColor;
  final Color healthColor;
  final double height;
  final double healthbarWidth;

  const HealthBarWithButtons(
      {Key? key,
      this.buttonBg = Colors.black,
      this.iconColor = Colors.white,
      this.healthColor = Colors.green,
      this.height = 30,
      this.healthbarWidth = 200,
      this.current = 20,
      this.total = 40})
      : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    Color percentageToHsl(double percent, int hue0, int hue1) {
      double returnHue = ((percent * (hue1 - hue0)) + hue0);
      double saturation = percent > 0.75 ? .55 - (.05 * (percent * 4)) : .42;
      return HSLColor.fromAHSL(1, returnHue, .9, saturation).toColor();
    }

    return Container(
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          MultiButton(
            onTap: () {
              ref.read(playerProvider.notifier).decreaseHealth();
              print(ref.read(playerProvider).currentHp);
            },
            color: iconColor,
            bgColor: buttonBg,
            icon: FontAwesomeIcons.minus,
            size: height * .95,
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(4.0, 0, 4.0, 0),
            child: FillableBar(
              current: ref.watch(playerProvider).currentHp,
              total: ref.watch(playerProvider).totalHp,
              width: healthbarWidth,
              isHp: true,
              color: percentageToHsl(
                  ref.watch(playerProvider).currentHp /
                      ref.watch(playerProvider).totalHp,
                  0,
                  120),
            ),
          ),
          MultiButton(
            onTap: () {
              ref.read(playerProvider.notifier).increaseHealth();
              print(ref.watch(playerProvider).currentHp);
            },
            color: iconColor,
            bgColor: buttonBg,
            icon: FontAwesomeIcons.plus,
            size: height * .95,
          ),
        ],
      ),
    );
  }
}
