import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:player_watchtower/providers/theme.dart';
import 'package:bordered_text/bordered_text.dart';

class ScoreCard extends ConsumerWidget {
  final String text;
  final IconData icon;
  const ScoreCard({super.key, required this.text, required this.icon});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Container(
      width: 100,
      height: 100,
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
          BorderedText(
            strokeWidth: 5.0,
            strokeColor: ref.watch(themeProvider).outlineText,
            child: Text(
              text,
              style: TextStyle(
                  fontSize: 40,
                  letterSpacing: 1.2,
                  color: ref.watch(themeProvider).textColor,
                  fontWeight: FontWeight.bold),
            ),
          ),
          FaIcon(
            icon,
            size: 35,
            color: ref.watch(themeProvider).cardIconColor,
          )
        ],
      ),
    );
  }
}
