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
        padding: const EdgeInsets.fromLTRB(8.0, 8.0, 8.0, 0),
        child: ListView(
          children: [
            BodyDropDown(
                text: "Character",
                statsEntries: CharacterStatsEntries(),
                expandedProvider: statsCharacterExpanded),
            Divider(
              thickness: 0,
              height: 10,
            ),
            BodyDropDown(
                text: "Combat Stats",
                statsEntries: CombatStatsEntries(),
                expandedProvider: statsCombatStatsExpanded),
            Divider(
              thickness: 0,
              height: 10,
            ),
            BodyDropDown(
                text: "Ability Scores",
                statsEntries: ScoreStatsEntries(),
                expandedProvider: statsScoresExpanded),
            Divider(
              thickness: 0,
              height: 10,
            ),
            BodyDropDown(
                text: "Skills",
                statsEntries: SkillsStatsEntries(),
                expandedProvider: statsSkillsExpanded),
            // Divider(
            //   thickness: 0,
            //   height: 10,
            // ),
            // BodyDropDown(
            //     text: "Misc.",
            //     statsEntries: MiscEntries(),
            //     expandedProvider: statsNotesExpanded),
          ],
        ),
      ),
    );
  }
}
