import 'package:flutter/material.dart';
import 'package:player_watchtower/functions/calculations.dart';
import 'fillable_bar.dart';
import 'stroke_text.dart';

class ExpBar extends StatelessWidget {
  final Color color;
  final double height;
  final int exp;
  const ExpBar(
      {Key? key, required this.exp, this.color = Colors.blue, this.height = 50})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    int playerLevel = getPlayerLevelByExp(exp);

    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            StrokeText(
              text: playerLevel.toString(),
              size: 25,
            ),
            StrokeText(
              text: (playerLevel + 1).toString(),
              size: 25,
            )
          ],
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: FillableBar(
            total: levelDict[playerLevel + 1]!,
            current: exp,
            height: 50,
            color: color,
          ),
        ),
      ],
    );
  }
}
