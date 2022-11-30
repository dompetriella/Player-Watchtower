import 'package:flutter/material.dart';
import 'package:flutter_bounce/flutter_bounce.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:player_watchtower/pages/QuickSelect/components/saving_throw_card.dart';
import 'package:player_watchtower/pages/QuickSelect/components/score_card.dart';
import 'package:player_watchtower/providers/page.dart';
import 'package:player_watchtower/providers/player.dart';
import 'package:player_watchtower/providers/theme.dart';
import '../../../models/savingThrow.dart';
import 'small_score_card.dart';
import 'package:player_watchtower/global_components/multi_button.dart';
import 'package:player_watchtower/global_components/fillable_bar.dart';
import 'package:player_watchtower/functions/calculations.dart';

double adjustSize(double height, double width) {
  double size = height / width;
  if (size < 2) {
    return size + (width / 1500);
  }
  return size;
}

class BaseCard extends ConsumerWidget {
  const BaseCard({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;

    return Container(
      height: 190 * adjustSize(height, width),
      decoration: BoxDecoration(
          color: ref.watch(themeProvider).baseCardBg,
          boxShadow: [ref.watch(themeProvider).shadow],
          border:
              Border.all(color: ref.watch(themeProvider).outline, width: 2.0),
          borderRadius: BorderRadius.circular(10)),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  PlayerAvatar(width: width, height: height),
                  HealthBarWithButtons(
                    height: 40,
                    healthbarWidth: 90 * adjustSize(height, width),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(bottom: 2.0),
              child: SmallScoreCards(),
            ),
            BigScoreCards()
          ],
        ),
      ),
    );
  }
}

class SmallScoreCards extends ConsumerWidget {
  const SmallScoreCards({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        SmallScoreCard(
          icon: FontAwesomeIcons.shieldHalved,
          text: ref.watch(playerProvider).armorClass.toString(),
        ),
        SmallScoreCard(
          icon: FontAwesomeIcons.graduationCap,
          text: displayValue(
              getProficiencyModifier(ref.watch(playerProvider).level)),
        ),
        SmallScoreCard(
            icon: FontAwesomeIcons.handFist,
            text: displayValue(
                getAbilityScoreModifier(ref.watch(playerProvider).dexterity))),
        SmallScoreCard(
            icon: FontAwesomeIcons.personRunning,
            text: ref.watch(playerProvider).speed.toString()),
      ],
    );
  }
}

class BigScoreCards extends ConsumerWidget {
  const BigScoreCards({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Expanded(
      child: Container(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                SwitchableScoreCard(
                    abilityScoreName: "strength",
                    switchProvider: strengthAbilityScoreCard,
                    scoreProvider: ref.read(playerProvider).strength,
                    savingThrow: ref.read(playerProvider).strengthSavingThrow,
                    icon: FontAwesomeIcons.dumbbell),
                SwitchableScoreCard(
                    abilityScoreName: "dexterity",
                    switchProvider: dexterityAbilityScoreCard,
                    scoreProvider: ref.read(playerProvider).dexterity,
                    savingThrow: ref.read(playerProvider).dexteritySavingThrow,
                    icon: FontAwesomeIcons.hand),
                SwitchableScoreCard(
                    abilityScoreName: "constitution",
                    switchProvider: constitutionAbilityScoreCard,
                    scoreProvider: ref.read(playerProvider).constitution,
                    savingThrow:
                        ref.read(playerProvider).constitutionSavingThrow,
                    icon: FontAwesomeIcons.heartPulse),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                SwitchableScoreCard(
                    abilityScoreName: "intellegence",
                    switchProvider: intellegenceAbilityScoreCard,
                    scoreProvider: ref.read(playerProvider).intellegence,
                    savingThrow:
                        ref.read(playerProvider).intellegenceSavingThrow,
                    icon: FontAwesomeIcons.brain),
                SwitchableScoreCard(
                    abilityScoreName: "wisdom",
                    switchProvider: wisdomAbilityScoreCard,
                    scoreProvider: ref.read(playerProvider).wisdom,
                    savingThrow: ref.read(playerProvider).wisdomSavingThrow,
                    icon: FontAwesomeIcons.eye),
                SwitchableScoreCard(
                    abilityScoreName: "charisma",
                    switchProvider: charismaAbilityScoreCard,
                    scoreProvider: ref.read(playerProvider).charisma,
                    savingThrow: ref.read(playerProvider).charismaSavingThrow,
                    icon: FontAwesomeIcons.solidComments),
              ],
            )
          ],
        ),
      ),
    );
  }
}

class SwitchableScoreCard extends ConsumerWidget {
  final String abilityScoreName;
  final StateProvider<bool> switchProvider;
  final int scoreProvider;
  final IconData icon;
  final SavingThrow savingThrow;
  const SwitchableScoreCard(
      {Key? key,
      required this.abilityScoreName,
      required this.switchProvider,
      required this.scoreProvider,
      required this.savingThrow,
      required this.icon})
      : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return GestureDetector(
      onTap: () =>
          ref.read(switchProvider.notifier).state = !ref.read(switchProvider),
      child: Container(
        child: ref.watch(switchProvider)
            ? ScoreCard(
                text: displayValue(getAbilityScoreModifier(scoreProvider)),
                icon: icon,
              )
            : SavingThrowCard(
                scoreName: abilityScoreName,
                savingThrow: savingThrow,
              ),
      ),
    );
  }
}

class PlayerAvatar extends ConsumerWidget {
  final double height;
  final double width;
  const PlayerAvatar({
    Key? key,
    required this.height,
    required this.width,
  }) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return GestureDetector(
        child: Container(
      height: 35 * adjustSize(height, width),
      width: 35 * adjustSize(height, width),
      decoration: BoxDecoration(
          border: Border.all(color: Colors.white, width: 2),
          color: ref.watch(themeProvider).primary,
          borderRadius: BorderRadius.circular(200),
          boxShadow: [ref.watch(themeProvider).shadow]),
      child: Center(
        child: FaIcon(
          FontAwesomeIcons.firefox,
          color: Colors.white,
          size: 30,
        ),
      ),
    ));
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
      child: Column(
        children: [
          FillableBar(
            current: ref.watch(playerProvider).currentHp,
            total: ref.watch(playerProvider).totalHp,
            width: healthbarWidth,
            height: height,
            isHp: true,
            color: percentageToHsl(
                ref.watch(playerProvider).currentHp /
                    ref.watch(playerProvider).totalHp,
                0,
                120),
          ),
          Padding(
            padding: const EdgeInsets.all(4.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                HpButton(
                  height: height * .8,
                  healthbarWidth: healthbarWidth,
                  icon: FontAwesomeIcons.minus,
                ),
                HpButton(
                  height: height * .8,
                  healthbarWidth: healthbarWidth,
                  icon: FontAwesomeIcons.plus,
                  increase: true,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class HpButton extends ConsumerWidget {
  const HpButton(
      {Key? key,
      required this.height,
      required this.healthbarWidth,
      required this.icon,
      this.increase = false})
      : super(key: key);

  final double height;
  final double healthbarWidth;
  final IconData icon;
  final bool increase;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Padding(
      padding: const EdgeInsets.all(2.0),
      child: Bounce(
        duration: Duration(milliseconds: 150),
        onPressed: () => increase
            ? ref.read(playerProvider.notifier).increaseHealth()
            : ref.read(playerProvider.notifier).decreaseHealth(),
        child: Container(
          height: height,
          width: healthbarWidth / 2 * .95,
          decoration: BoxDecoration(
              color: ref.watch(themeProvider).primary,
              borderRadius: BorderRadius.circular(5),
              border: Border.all(
                color: Colors.white,
              ),
              boxShadow: [ref.watch(themeProvider).shadow]),
          child: Center(
              child: FaIcon(
            icon,
            color: Colors.white,
            size: 15,
          )),
        ),
      ),
    );
  }
}
