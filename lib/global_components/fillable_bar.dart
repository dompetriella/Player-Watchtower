import 'package:bordered_text/bordered_text.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:player_watchtower/providers/theme.dart';

class FillableBar extends ConsumerWidget {
  final Color color;
  final int total;
  final int current;
  final double height;
  final double width;
  final bool isHp;
  final int fillSpeed;
  const FillableBar(
      {super.key,
      this.color = Colors.green,
      required this.total,
      required this.current,
      this.height = 30,
      this.width = double.infinity,
      this.fillSpeed = 325,
      this.isHp = false});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Container(
      width: width,
      height: height,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(2),
          border: Border.all(color: ref.watch(themeProvider).outline, width: 2),
          boxShadow: [ref.watch(themeProvider).shadow],
          color: ref.watch(themeProvider).cardBg),
      child: Stack(
        children: [
          AnimatedFractionallySizedBox(
            duration: Duration(milliseconds: fillSpeed),
            heightFactor: 1,
            widthFactor: current / total,
            child: Container(
              color: color,
            ),
          ),
          Align(
              alignment: Alignment.center,
              child: BorderedText(
                strokeWidth: 5.0,
                strokeColor: ref.watch(themeProvider).outlineText,
                child: Text(
                  isHp
                      ? 'HP: ${current.toString()} / ${total.toString()}'
                      : '${current.toString()} / ${total.toString()}',
                  style: TextStyle(
                      fontSize: height * .45,
                      letterSpacing: 1.0,
                      color: ref.watch(themeProvider).textColor,
                      fontWeight: FontWeight.w900),
                ),
              )),
        ],
      ),
    );
  }
}
