import 'package:flutter/material.dart' hide BoxDecoration, BoxShadow;
import 'package:flutter_inset_box_shadow/flutter_inset_box_shadow.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:player_watchtower/global_components/stroke_text.dart';
import 'package:player_watchtower/providers/theme.dart';

class ModifierSwitchButton extends ConsumerWidget {
  final String text;
  const ModifierSwitchButton({super.key, required this.text});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Container(
      height: 38,
      width: 70,
      decoration: BoxDecoration(
          color: ref.watch(themeProvider).cardBg,
          boxShadow: [ref.watch(themeProvider).diceButtonInnerShadow],
          borderRadius: BorderRadius.circular(15)),
      child: Center(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          StrokeText(
            text: text,
          )
        ],
      )),
    );
  }
}
