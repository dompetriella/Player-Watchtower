import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:player_watchtower/global_components/stroke_text.dart';
import 'package:player_watchtower/providers/theme.dart';

class Skill extends ConsumerWidget {
  final String skillType;
  final String text;
  final String modifier;
  final bool isProficient;
  const Skill(
      {super.key,
      required this.skillType,
      required this.modifier,
      required this.text,
      this.isProficient = false});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
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
              padding: const EdgeInsets.all(6.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    width: 40,
                    child: Padding(
                      padding: const EdgeInsets.fromLTRB(0, 8, 0, 8),
                      child: StrokeText(
                        text: skillType,
                        size: 18,
                      ),
                    ),
                  ),
                  Container(
                    width: 150,
                    child: Padding(
                      padding: const EdgeInsets.fromLTRB(0, 8, 0, 8),
                      child: StrokeText(
                        text: text,
                        size: 16,
                      ),
                    ),
                  ),
                  Container(
                    width: 50,
                    decoration: BoxDecoration(
                        color: ref.watch(themeProvider).primary,
                        border: Border.all(color: Colors.white),
                        borderRadius: BorderRadius.circular(10)),
                    child: Padding(
                      padding: const EdgeInsets.fromLTRB(0, 8, 0, 8),
                      child: Center(
                        child: StrokeText(
                          text: modifier,
                          size: 16,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          if (isProficient)
            FaIcon(
              FontAwesomeIcons.graduationCap,
              size: 22,
              color: ref.watch(themeProvider).accent,
            )
        ],
      ),
    );
  }
}
