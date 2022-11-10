import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:player_watchtower/providers/player.dart';

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

class CombatStatsEntries extends ConsumerWidget {
  const CombatStatsEntries({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Column(
      children: [
        StatsEntry(
          title: 'Current Hit Points',
          statPropertyName: 'currentHp',
          provider: ref.watch(playerProvider).currentHp,
        ),
        StatsEntry(
          title: 'Total Hit Points',
          statPropertyName: 'totalHp',
          provider: ref.watch(playerProvider).totalHp,
        ),
        StatsEntry(
          title: 'Temporary Hit Points',
          statPropertyName: 'tempHp',
          provider: ref.watch(playerProvider).tempHp,
        ),
        StatsEntry(
          title: 'Armor Class',
          statPropertyName: 'armorClass',
          provider: ref.watch(playerProvider).armorClass,
        ),
        StatsEntry(
          title: 'Proficiency',
          statPropertyName: 'proficiency',
          provider: ref.watch(playerProvider).proficiency,
          isModifier: true,
        ),
        StatsEntry(
          title: 'Speed',
          statPropertyName: 'speed',
          provider: ref.watch(playerProvider).speed,
        ),
        StatsEntry(
          title: 'Initiative',
          statPropertyName: 'initiative',
          provider: ref.watch(playerProvider).initiative,
          isModifier: true,
        ),
      ],
    );
  }
}

class ScoreStatsEntries extends ConsumerWidget {
  const ScoreStatsEntries({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Column(
      children: [
        StatsEntry(
          title: 'Strength',
          statPropertyName: 'strength',
          provider: ref.watch(playerProvider).strength,
        ),
        StatsEntry(
          title: 'Dexterity',
          statPropertyName: 'dexterity',
          provider: ref.watch(playerProvider).dexterity,
        ),
        StatsEntry(
          title: 'Constitution',
          statPropertyName: 'constitution',
          provider: ref.watch(playerProvider).constitution,
        ),
        StatsEntry(
          title: 'Intellegence',
          statPropertyName: 'intellegence',
          provider: ref.watch(playerProvider).intellegence,
        ),
        StatsEntry(
          title: 'Wisdom',
          statPropertyName: 'wisdom',
          provider: ref.watch(playerProvider).wisdom,
        ),
        StatsEntry(
          title: 'Charisma',
          statPropertyName: 'charisma',
          provider: ref.watch(playerProvider).charisma,
        ),
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
