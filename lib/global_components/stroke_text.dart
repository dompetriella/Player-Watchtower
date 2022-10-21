import 'package:flutter/material.dart';
import 'package:bordered_text/bordered_text.dart';

class StrokeText extends StatelessWidget {
  final String text;
  final double size;
  final FontWeight boldness;
  final Color strokeColor;
  final Color color;

  const StrokeText(
      {super.key,
      this.boldness = FontWeight.w900,
      this.color = Colors.white,
      this.size = 15,
      this.strokeColor = Colors.black,
      required this.text});

  @override
  Widget build(BuildContext context) {
    return BorderedText(
      strokeWidth: 5.0,
      strokeColor: strokeColor,
      child: Text(
        text,
        textAlign: TextAlign.center,
        style: TextStyle(
            fontSize: size,
            letterSpacing: 1.2,
            color: color,
            fontWeight: boldness),
      ),
    );
  }
}
