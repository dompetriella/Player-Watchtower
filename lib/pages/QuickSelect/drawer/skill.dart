import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:player_watchtower/global_components/stroke_text.dart';
import 'package:player_watchtower/models/playerSkill.dart';
import 'package:player_watchtower/providers/theme.dart';

import '../../../functions/calculations.dart';
import '../../../providers/page.dart';
import '../../../providers/player.dart';

class Skill extends ConsumerWidget {
  final PlayerSkill playerSkill;
  const Skill({super.key, required this.playerSkill});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    String formatSkillTypeString(String skillType) {
      return skillType.substring(0, 3).toUpperCase();
    }

    String formatSkillNameString(String text) {
      return text.replaceAllMapped(RegExp(r'^([a-z])|[A-Z]'),
          (Match m) => m[1] == null ? " ${m[0]}" : m[1]!.toUpperCase());
    }

    String formatSkillModifierString(PlayerSkill skill) {
      if (ref.watch(autoCalculate)) {
        switch (skill.skillType) {
          case 'strength':
            return displayValue(
                getAbilityScoreModifier(ref.watch(playerProvider).strength));
          case 'dexterity':
            return displayValue(
                getAbilityScoreModifier(ref.watch(playerProvider).dexterity));
          case 'constitution':
            return displayValue(getAbilityScoreModifier(
                ref.watch(playerProvider).constitution));
          case 'intellegence':
            return displayValue(getAbilityScoreModifier(
                ref.watch(playerProvider).intellegence));
          case 'wisdom':
            return displayValue(
                getAbilityScoreModifier(ref.watch(playerProvider).wisdom));
          case 'charisma':
            return displayValue(
                getAbilityScoreModifier(ref.watch(playerProvider).charisma));
        }
      }
      return displayValue(skill.skillModifier);
    }

    return Padding(
      padding: const EdgeInsets.all(4.0),
      child: Stack(
        children: [
          Container(
            decoration: BoxDecoration(
                color: ref.watch(themeProvider).cardBg,
                borderRadius: BorderRadius.circular(10),
                border: Border.all(
                    color: ref.watch(themeProvider).outline, width: 2),
                boxShadow: [ref.watch(themeProvider).shadow]),
            child: Padding(
              padding: const EdgeInsets.all(2.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    width: 40,
                    child: Padding(
                      padding: const EdgeInsets.fromLTRB(0, 4, 0, 4),
                      child: StrokeText(
                        text: formatSkillTypeString(playerSkill.skillType),
                        size: 16,
                      ),
                    ),
                  ),
                  Container(
                    width: 150,
                    child: Padding(
                      padding: const EdgeInsets.fromLTRB(0, 4, 0, 4),
                      child: StrokeText(
                        text: formatSkillNameString(playerSkill.skillName),
                        size: 16,
                      ),
                    ),
                  ),
                  Stack(
                    clipBehavior: Clip.none,
                    children: [
                      Container(
                        width: 50,
                        decoration: BoxDecoration(
                            color: ref.watch(themeProvider).primary,
                            border: Border.all(color: Colors.white),
                            borderRadius: BorderRadius.circular(10)),
                        child: Padding(
                          padding: const EdgeInsets.fromLTRB(0, 4, 0, 4),
                          child: Center(
                            child: StrokeText(
                              text: formatSkillModifierString(playerSkill),
                              size: 16,
                            ),
                          ),
                        ),
                      ),
                      if (playerSkill.isProficient)
                        Positioned(
                          top: -5,
                          right: -5,
                          child: StrokeText(
                            text: displayValue(
                                ref.watch(playerProvider).proficiency),
                            size: 12,
                          ),
                        )
                    ],
                  ),
                ],
              ),
            ),
          ),
          if (playerSkill.isProficient)
            FaIcon(
              FontAwesomeIcons.graduationCap,
              size: 16,
              color: ref.watch(themeProvider).accent,
            )
        ],
      ),
    );
  }
}
