import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:player_watchtower/pages/Stats/components/body_drop_down.dart';
import 'package:player_watchtower/pages/Stats/statsEntries.dart';
import 'package:player_watchtower/providers/theme.dart';

class StatsPage extends ConsumerWidget {
  StatsPage({super.key});

  final characterExpanded = StateProvider<bool>(
    (ref) => false,
  );

  final combatStatsExpanded = StateProvider<bool>(
    (ref) => false,
  );

  final scoresExpanded = StateProvider<bool>(
    (ref) => false,
  );

  final skillsExpanded = StateProvider<bool>(
    (ref) => false,
  );

  final notesExpanded = StateProvider<bool>(
    (ref) => false,
  );

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
                statsEntries: characterStatsEntries,
                expandedProvider: characterExpanded),
            Divider(
              thickness: 0,
              height: 10,
            ),
            BodyDropDown(
                text: "Combat Stats",
                statsEntries: combatStatsEntries,
                expandedProvider: combatStatsExpanded),
            Divider(
              thickness: 0,
              height: 10,
            ),
            BodyDropDown(
                text: "Ability Scores",
                statsEntries: scoreStatsEntries,
                expandedProvider: scoresExpanded),
            Divider(
              thickness: 0,
              height: 10,
            ),
            BodyDropDown(
                text: "Skills",
                statsEntries: skillsStatsEntry,
                expandedProvider: skillsExpanded),
            Divider(
              thickness: 0,
              height: 10,
            ),
            BodyDropDown(
                text: "Languages/Notes",
                statsEntries: notesEntries,
                expandedProvider: notesExpanded),
          ],
        ),
      ),
    );
  }
}
