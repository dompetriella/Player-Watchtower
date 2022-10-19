import 'package:bordered_text/bordered_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:player_watchtower/providers/theme.dart';

class SmallScoreCard extends ConsumerWidget {
  final IconData icon;
  final String text;
  const SmallScoreCard({super.key, required this.icon, required this.text});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Container(
      width: 50,
      height: 50,
      decoration: BoxDecoration(
          color: ref.watch(colorProvider).secondary,
          borderRadius: BorderRadius.circular(10),
          border: Border.all(
            color: Colors.white,
            width: 2,
          ),
          boxShadow: [ref.watch(colorProvider).hoverShadow]),
      child: Stack(
        children: [
          Center(
              child: FaIcon(
            icon,
            size: 30,
          )),
          Align(
              alignment: Alignment.bottomCenter,
              child: BorderedText(
                strokeWidth: 5.0,
                strokeColor: Colors.black,
                child: Text(
                  text,
                  style: TextStyle(
                      fontSize: 15,
                      letterSpacing: 1.2,
                      color: Colors.white,
                      fontWeight: FontWeight.w900),
                ),
              ))
        ],
      ),
    );
  }
}
