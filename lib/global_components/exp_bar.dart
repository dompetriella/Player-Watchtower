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
              text: 'Lv. $playerLevel',
              size: 18,
            ),
            StrokeText(
              text: 'Lv. ${playerLevel + 1}',
              size: 18,
            )
          ],
        ),
        Padding(
          padding: const EdgeInsets.only(top: 4.0),
          child: FillableBar(
            total: levelDict[playerLevel + 1]! - levelDict[playerLevel]!,
            current: exp - levelDict[playerLevel]!,
            height: height,
            color: color,
          ),
        ),
      ],
    );
  }
}
