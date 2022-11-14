import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:player_watchtower/functions/calculations.dart';
import 'package:player_watchtower/models/playerSkill.dart';
import 'package:player_watchtower/providers/page.dart';
import 'package:player_watchtower/providers/player.dart';

import 'skill.dart';

class SkillsList extends ConsumerWidget {
  const SkillsList({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Column(
      children: [
        Skill(
          playerSkill: ref.watch(playerProvider).acrobatics,
        ),
        Skill(
          playerSkill: ref.watch(playerProvider).animalHandling,
        ),
        Skill(
          playerSkill: ref.watch(playerProvider).arcana,
        ),
        Skill(
          playerSkill: ref.watch(playerProvider).atheletics,
        ),
        Skill(
          playerSkill: ref.watch(playerProvider).deception,
        ),
        Skill(
          playerSkill: ref.watch(playerProvider).history,
        ),
        Skill(
          playerSkill: ref.watch(playerProvider).insight,
        ),
        Skill(
          playerSkill: ref.watch(playerProvider).intimidation,
        ),
        Skill(
          playerSkill: ref.watch(playerProvider).investigation,
        ),
        Skill(
          playerSkill: ref.watch(playerProvider).medicine,
        ),
        Skill(
          playerSkill: ref.watch(playerProvider).nature,
        ),
        Skill(
          playerSkill: ref.watch(playerProvider).perfomance,
        ),
        Skill(
          playerSkill: ref.watch(playerProvider).persuasian,
        ),
        Skill(
          playerSkill: ref.watch(playerProvider).religion,
        ),
        Skill(
          playerSkill: ref.watch(playerProvider).sleightOfHand,
        ),
        Skill(
          playerSkill: ref.watch(playerProvider).stealth,
        ),
        Skill(
          playerSkill: ref.watch(playerProvider).survival,
        ),
      ],
    );
  }
}
