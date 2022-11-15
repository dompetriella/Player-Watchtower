import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:player_watchtower/functions/calculations.dart';
import 'package:player_watchtower/global_components/stroke_text.dart';
import 'package:player_watchtower/pages/QuickSelect/components/small_score_card.dart';
import 'package:player_watchtower/pages/QuickSelect/drawer/skill.dart';
import 'package:player_watchtower/pages/QuickSelect/drawer/skills_list.dart';
import 'package:player_watchtower/providers/player.dart';
import 'package:player_watchtower/providers/theme.dart';

class SkillsDrawer extends ConsumerWidget {
  const SkillsDrawer({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Container(
      decoration: BoxDecoration(
          color: ref.watch(themeProvider).bgColor,
          border: Border(
              right: BorderSide(
                  color: ref.watch(themeProvider).primary, width: 10))),
      width: MediaQuery.of(context).size.width * .85,
      child: Padding(
        padding: const EdgeInsets.all(10.0),
        child: ListView(
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Align(
                alignment: Alignment.centerLeft,
                child: StrokeText(
                  text: "Skills",
                  size: 28,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                children: [
                  SmallScoreCard(
                    icon: FontAwesomeIcons.eyeLowVision,
                    text:
                        '${getSkillModifier(ref.read(playerProvider).perception) + 10 + addProficiency(ref.read(playerProvider).perception, ref)}',
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 16.0),
                    child: StrokeText(
                      text: "Passive Perception",
                      size: 20,
                    ),
                  )
                ],
              ),
            ),
            SkillsList()
          ],
        ),
      ),
    );
  }
}
