import 'package:flutter/material.dart';
import 'package:bordered_text/bordered_text.dart';
import 'package:player_watchtower/providers/theme.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class StrokeText extends ConsumerWidget {
  final String text;
  final double size;
  final FontWeight boldness;
  final TextAlign textAlignment;

  const StrokeText(
      {super.key,
      this.boldness = FontWeight.w900,
      this.size = 15,
      this.textAlignment = TextAlign.center,
      required this.text});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return BorderedText(
      strokeWidth: 5.0,
      strokeColor: ref.watch(themeProvider).outlineText,
      child: Text(
        text,
        textAlign: textAlignment,
        style: TextStyle(
            fontSize: size,
            letterSpacing: 1.2,
            color: ref.watch(themeProvider).textColor,
            fontWeight: boldness),
      ),
    );
  }
}
