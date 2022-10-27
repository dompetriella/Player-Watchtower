import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:player_watchtower/pages/QuickSelect/components/score_card.dart';
import 'package:player_watchtower/providers/player_stats.dart';
import 'package:player_watchtower/providers/theme.dart';
import 'small_score_card.dart';
import 'package:player_watchtower/global_components/multi_button.dart';
import 'package:player_watchtower/global_components/fillable_bar.dart';

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
                  FaIcon(
                    FontAwesomeIcons.cloud,
                    size: 40,
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
                    text: "16",
                  ),
                  SmallScoreCard(
                      icon: FontAwesomeIcons.graduationCap, text: "+2"),
                  SmallScoreCard(
                    icon: FontAwesomeIcons.handFist,
                    text: "+1",
                  ),
                  SmallScoreCard(
                      icon: FontAwesomeIcons.personRunning, text: "30"),
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
                          text: "+3",
                          icon: FontAwesomeIcons.dumbbell,
                        ),
                        ScoreCard(
                          text: "+1",
                          icon: FontAwesomeIcons.hand,
                        ),
                        ScoreCard(
                          text: "+2",
                          icon: FontAwesomeIcons.heartPulse,
                        ),
                        ScoreCard(
                          text: "-3",
                          icon: FontAwesomeIcons.brain,
                        ),
                        ScoreCard(
                          text: "-1",
                          icon: FontAwesomeIcons.eye,
                        ),
                        ScoreCard(
                          text: "0",
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
