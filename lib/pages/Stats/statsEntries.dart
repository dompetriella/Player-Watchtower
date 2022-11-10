import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:player_watchtower/providers/player_stats.dart';

import 'components/stats_entry.dart';

class CharacterStatsEntries extends ConsumerWidget {
  const CharacterStatsEntries({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Column(
      children: [
        StatsEntry(
          title: 'Character Name',
          statPropertyName: 'characterName',
          provider: ref.watch(playerProvider).characterName,
        ),
        StatsEntry(
          title: 'Level',
          statPropertyName: 'level',
          provider: ref.watch(playerProvider).level,
        ),
        StatsEntry(
          title: 'Experience',
          statPropertyName: 'exp',
          provider: ref.watch(playerProvider).exp,
        ),
        StatsEntry(
          title: 'Class',
          statPropertyName: 'playerClass',
          provider: ref.watch(playerProvider).playerClass,
        ),
        StatsEntry(
          title: 'Race',
          statPropertyName: 'playerRace',
          provider: ref.watch(playerProvider).playerRace,
        ),
        StatsEntry(
          title: 'Alignment',
          statPropertyName: 'alignment',
          provider: ref.watch(playerProvider).alignment,
        ),
        StatsEntry(
          title: 'Background',
          statPropertyName: 'background',
          provider: ref.watch(playerProvider).background,
        ),
      ],
    );
  }
}

class CombatStatsEntries extends StatelessWidget {
  const CombatStatsEntries({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        // StatsEntry(
        //   title: 'Current Hit Points',
        //   entry: '40',
        // ),
        // StatsEntry(
        //   title: 'Total Hit Points',
        //   entry: '40',
        // ),
        // StatsEntry(
        //   title: 'Temporary Hit Points',
        //   entry: '0',
        // ),
        // StatsEntry(
        //   title: 'Armor Class',
        //   entry: '14',
        // ),
        // StatsEntry(
        //   title: 'Proficiency',
        //   entry: '+3',
        // ),
        // StatsEntry(
        //   title: 'Speed',
        //   entry: '40',
        // ),
        // StatsEntry(
        //   title: 'Initiative',
        //   entry: '+2',
        // ),
      ],
    );
  }
}

class ScoreStatsEntries extends StatelessWidget {
  const ScoreStatsEntries({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        // StatsEntry(
        //   title: 'Strength',
        //   property: 'strength',
        //   entry: '18',
        // ),
        // StatsEntry(
        //   title: 'Dexterity',
        //   entry: '12',
        // ),
        // StatsEntry(
        //   title: 'Constitution',
        //   entry: '14',
        // ),
        // StatsEntry(
        //   title: 'Intellegence',
        //   entry: '6',
        // ),
        // StatsEntry(
        //   title: 'Wisdom',
        //   entry: '8',
        // ),
        // StatsEntry(
        //   title: 'Charisma',
        //   entry: '10',
        // ),
      ],
    );
  }
}

class SkillsStatsEntries extends StatelessWidget {
  const SkillsStatsEntries({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        // StatsEntry(
        //   title: 'Athletics',
        //   entry: '+2',
        // ),
        // StatsEntry(
        //   title: 'Animal Handling',
        //   entry: '+1',
        // ),
      ],
    );
  }
}

class MiscEntries extends StatelessWidget {
  const MiscEntries({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        // StatsEntry(
        //   title: 'Languages',
        //   entry: 'Common',
        // ),
        // StatsEntry(
        //   title: 'Traits',
        //   entry: '',
        // ),
        // StatsEntry(
        //   title: 'Features',
        //   entry: '',
        // ),
        // StatsEntry(
        //   title: 'Notes',
        //   entry: '',
        // ),
      ],
    );
  }
}
