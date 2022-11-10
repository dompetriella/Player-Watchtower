import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:player_watchtower/pages/Stats/components/body_drop_down.dart';
import 'package:player_watchtower/pages/Stats/statsEntries.dart';
import 'package:player_watchtower/providers/theme.dart';
import 'package:player_watchtower/providers/page.dart';

class StatsPage extends ConsumerWidget {
  StatsPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Container(
      color: ref.watch(themeProvider).bgColor,
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: ListView(
          children: [
            BodyDropDown(
                text: "Character",
                statsEntries: CharacterStatsEntries(),
                expandedProvider: characterExpanded),
            Divider(
              thickness: 0,
              height: 10,
            ),
            BodyDropDown(
                text: "Combat Stats",
                statsEntries: CombatStatsEntries(),
                expandedProvider: combatStatsExpanded),
            Divider(
              thickness: 0,
              height: 10,
            ),
            BodyDropDown(
                text: "Ability Scores",
                statsEntries: ScoreStatsEntries(),
                expandedProvider: scoresExpanded),
            Divider(
              thickness: 0,
              height: 10,
            ),
            BodyDropDown(
                text: "Skills",
                statsEntries: SkillsStatsEntries(),
                expandedProvider: skillsExpanded),
            Divider(
              thickness: 0,
              height: 10,
            ),
            BodyDropDown(
                text: "Misc.",
                statsEntries: MiscEntries(),
                expandedProvider: notesExpanded),
          ],
        ),
      ),
    );
  }
}
