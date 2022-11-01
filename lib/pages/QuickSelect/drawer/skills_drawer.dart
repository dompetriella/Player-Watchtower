import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:player_watchtower/global_components/stroke_text.dart';
import 'package:player_watchtower/pages/QuickSelect/drawer/skill.dart';
import 'package:player_watchtower/pages/QuickSelect/drawer/skills_list.dart';
import 'package:player_watchtower/providers/theme.dart';

class SkillsDrawer extends ConsumerWidget {
  const SkillsDrawer({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Container(
      color: ref.watch(themeProvider).bgColor,
      width: MediaQuery.of(context).size.width * .85,
      child: Padding(
        padding: const EdgeInsets.all(10.0),
        child: ListView(
          children: [
            Align(
              alignment: Alignment.centerLeft,
              child: StrokeText(
                text: "Skills",
                size: 28,
              ),
            ),
            SkillsList()
          ],
        ),
      ),
    );
  }
}
