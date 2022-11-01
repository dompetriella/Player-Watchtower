import 'package:flutter/material.dart';

import 'skill.dart';

class SkillsList extends StatelessWidget {
  const SkillsList({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Skill(
          skillType: "DEX",
          text: "Acrobatics",
          modifier: "+2",
        ),
        Skill(skillType: "WIS", modifier: "+2", text: "Animal Handling"),
        Skill(skillType: "INT", modifier: "0", text: "Arcana"),
        Skill(
          skillType: "STR",
          modifier: "+2",
          text: "Athletics",
          isProficient: true,
        )
      ],
    );
  }
}
