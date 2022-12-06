import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:player_watchtower/dictionaries/info.dart';
import 'package:player_watchtower/models/playerSkill.dart';
import 'package:player_watchtower/providers/page.dart';
import 'package:player_watchtower/providers/player.dart';
import 'package:player_watchtower/providers/theme.dart';

import '../../global_components/exp_bar.dart';
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
          title: 'Experience',
          statPropertyName: 'exp',
          provider: ref.watch(playerProvider).exp,
          editDialogType: 'increaseDecrease',
          displayWidget: Padding(
            padding: const EdgeInsets.all(8.0),
            child: ExpBar(
              exp: ref.watch(playerProvider).exp,
              color: ref.watch(themeProvider).primary,
              height: 35,
            ),
          ),
        ),
        StatsEntry(
          title: 'Class',
          statPropertyName: 'playerClass',
          provider: ref.watch(playerProvider).playerClass,
          editDialogType: 'dropDown',
          dropDownOptions: classes5e,
        ),
        StatsEntry(
          title: 'Race',
          statPropertyName: 'playerRace',
          provider: ref.watch(playerProvider).playerRace,
          editDialogType: 'dropDown',
          dropDownOptions: races5e,
        ),
        StatsEntry(
          title: 'Alignment',
          statPropertyName: 'alignment',
          provider: ref.watch(playerProvider).alignment,
          editDialogType: 'dropDown',
          dropDownOptions: alignments5e,
        ),
        StatsEntry(
          title: 'Background',
          statPropertyName: 'background',
          provider: ref.watch(playerProvider).background,
          editDialogType: 'dropDown',
          dropDownOptions: backgrounds5e,
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
          title: 'Armor Class',
          statPropertyName: 'armorClass',
          provider: ref.watch(playerProvider).armorClass,
        ),
        StatsEntry(
          title: 'Current Hit Points',
          statPropertyName: 'currentHp',
          provider: ref.watch(playerProvider).currentHp,
          editDialogType: 'increaseDecrease',
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
          title: 'Speed',
          statPropertyName: 'speed',
          provider: ref.watch(playerProvider).speed,
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
          isAbilityScore: true,
        ),
        StatsEntry(
          title: 'Dexterity',
          statPropertyName: 'dexterity',
          provider: ref.watch(playerProvider).dexterity,
          isAbilityScore: true,
        ),
        StatsEntry(
          title: 'Constitution',
          statPropertyName: 'constitution',
          provider: ref.watch(playerProvider).constitution,
          isAbilityScore: true,
        ),
        StatsEntry(
          title: 'Intellegence',
          statPropertyName: 'intellegence',
          provider: ref.watch(playerProvider).intellegence,
          isAbilityScore: true,
        ),
        StatsEntry(
          title: 'Wisdom',
          statPropertyName: 'wisdom',
          provider: ref.watch(playerProvider).wisdom,
          isAbilityScore: true,
        ),
        StatsEntry(
          title: 'Charisma',
          statPropertyName: 'charisma',
          provider: ref.watch(playerProvider).charisma,
          isAbilityScore: true,
        ),
      ],
    );
  }
}

class SkillsStatsEntries extends ConsumerWidget {
  const SkillsStatsEntries({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Column(
      children: [
        StatsEntry(
          title: 'Acrobatics',
          editDialogType: 'skill',
          provider: ref.watch(playerProvider).acrobatics,
          statPropertyName: ref.read(playerProvider).acrobatics.skillName,
        ),
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
