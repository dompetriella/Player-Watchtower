import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:player_watchtower/providers/theme.dart';

class MultiButton extends ConsumerWidget {
  final IconData icon;
  final Color bgColor;
  final Color color;
  final double size;
  final Function()? onTap;
  final Function()? onLongPress;
  final Function()? onDoubleTap;

  const MultiButton(
      {super.key,
      required this.icon,
      required this.bgColor,
      required this.color,
      this.onTap = null,
      this.onLongPress = null,
      this.onDoubleTap = null,
      this.size = 30});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return GestureDetector(
      onTap: onTap,
      onDoubleTap: onDoubleTap,
      onLongPress: onLongPress,
      child: Container(
        height: size,
        width: size,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(5),
            color: bgColor,
            boxShadow: [ref.watch(themeProvider).shadow]),
        child: Center(
          child: FaIcon(
            icon,
            size: size * .66,
            color: color,
          ),
        ),
      ),
    );
  }
}
