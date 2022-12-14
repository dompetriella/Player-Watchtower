import 'package:flutter/material.dart' hide BoxDecoration, BoxShadow;
import 'package:flutter_inset_box_shadow/flutter_inset_box_shadow.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../../providers/theme.dart';

class RolledDiceIcon extends ConsumerWidget {
  final int originalDice;
  final int rolledValue;
  final double size;
  const RolledDiceIcon(
      {Key? key,
      required this.originalDice,
      required this.rolledValue,
      required this.size})
      : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(2.0, 0, 2.0, 0),
      child: Container(
        height: size,
        width: size,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.all(
                Radius.circular(ref.watch(themeProvider).diceIconBorderRadius)),
            color: ref.watch(themeProvider).diceIconBgColor),
        child: Stack(
          children: [
            Padding(
              padding: const EdgeInsets.all(2.0),
              child: Opacity(
                opacity: .90,
                child: SvgPicture.asset(
                    'assets/D${originalDice.toString()}.svg',
                    color: ref.watch(themeProvider).diceIconTextColor),
              ),
            ),
            Center(
                child: Text(
              rolledValue.toString(),
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: ref.watch(themeProvider).diceIconTextColor,
                  fontSize: size * .50),
            ))
          ],
        ),
      ),
    );
  }
}
