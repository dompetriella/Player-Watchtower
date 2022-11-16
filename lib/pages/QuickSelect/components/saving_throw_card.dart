import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:player_watchtower/functions/calculations.dart';
import 'package:player_watchtower/global_components/stroke_text.dart';
import 'package:player_watchtower/providers/theme.dart';

import '../../../models/savingThrow.dart';

class SavingThrowCard extends ConsumerWidget {
  final String scoreName;
  final SavingThrow savingThrow;
  const SavingThrowCard(
      {super.key, required this.scoreName, required this.savingThrow});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    double width = MediaQuery.of(context).size.width;
    return Stack(
      children: [
        Container(
          width: width / 4,
          height: width / 4,
          decoration: BoxDecoration(
              color: ref.watch(themeProvider).cardBg,
              borderRadius: BorderRadius.circular(10),
              border: Border.all(
                color: Colors.white,
                width: 2,
              ),
              boxShadow: [ref.watch(themeProvider).shadow]),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              StrokeText(
                text: scoreName.substring(0, 3).toUpperCase(),
                size: 12,
              ),
              Center(
                child: Text(
                  "Saving Throw",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.w900,
                  ),
                ),
              ),
              StrokeText(text: displayValue(savingThrow.skillModifier)),
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(2.0),
          child: FaIcon(
            FontAwesomeIcons.graduationCap,
            color: ref.watch(themeProvider).accent,
            size: 16,
          ),
        ),
      ],
    );
  }
}
