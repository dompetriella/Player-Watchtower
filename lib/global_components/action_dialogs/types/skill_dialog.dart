import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:player_watchtower/models/playerSkill.dart';
import 'package:player_watchtower/providers/forms.dart';
import 'package:player_watchtower/providers/theme.dart';

class SkillDialog extends ConsumerWidget {
  final bool isSkillProficient;
  final PlayerSkill playerSkillProvider;
  const SkillDialog(
      {super.key,
      required this.isSkillProficient,
      required this.playerSkillProvider});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Center(
      child: Container(
        decoration: BoxDecoration(
            color: ref.watch(themeProvider).bgColor,
            borderRadius: BorderRadius.circular(10),
            border: Border.all(color: Colors.white, width: 2)),
        height: 60,
        child: CheckboxListTile(
          activeColor: ref.watch(themeProvider).accent,
          checkColor: Colors.white,
          enableFeedback: false,
          selected: ref.read(checkboxProvider),
          secondary: FaIcon(FontAwesomeIcons.graduationCap),
          title: Text('Proficient?'),
          value: ref.watch(checkboxProvider.notifier).state,
          onChanged: (value) {
            ref.watch(checkboxProvider.notifier).state =
                !ref.watch(checkboxProvider);
          },
        ),
      ),
    );
  }
}
