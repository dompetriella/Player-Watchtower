import 'package:flutter/material.dart';

import 'skill.dart';

class SkillsList extends StatelessWidget {
  const SkillsList({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: const [
        Skill(
          skillType: "DEX",
          text: "Acrobatics",
          modifier: "+2",
        ),
        Skill(
          skillType: "WIS",
          modifier: "+2",
          text: "Animal Handling",
          isProficient: true,
        ),
        Skill(skillType: "INT", modifier: "0", text: "Arcana"),
        Skill(
          skillType: "STR",
          modifier: "+2",
          text: "Athletics",
          isProficient: true,
        ),
        Skill(
          skillType: "CHA",
          modifier: "0",
          text: "Deception",
        ),
        Skill(
          skillType: "Int",
          modifier: "+2",
          text: "History",
        ),
        Skill(
          skillType: "WIS",
          modifier: "+2",
          text: "Insight",
        ),
        Skill(
          skillType: "CHA",
          modifier: "+2",
          text: "Intimidation",
          isProficient: true,
        ),
        Skill(
          skillType: "INT",
          modifier: "+2",
          text: "Investigation",
        ),
        Skill(
          skillType: "WIS",
          modifier: "0",
          text: "Medicine",
        ),
        Skill(
          skillType: "Int",
          modifier: "+2",
          text: "Nature",
        ),
        Skill(
          skillType: "WIS",
          modifier: "+2",
          text: "Perception",
        ),
        Skill(
          skillType: "CHA",
          modifier: "+2",
          text: "Performance",
        ),
        Skill(
          skillType: "CHA",
          modifier: "+2",
          text: "Persuasion",
        ),
        Skill(
          skillType: "INT",
          modifier: "+2",
          text: "Religion",
        ),
        Skill(
          skillType: "DEX",
          modifier: "+2",
          text: "Sleight of Hand",
        ),
        Skill(
          skillType: "DEX",
          modifier: "+2",
          text: "Stealth",
        ),
        Skill(
          skillType: "WIS",
          modifier: "+2",
          text: "Survival",
        ),
      ],
    );
  }
}
