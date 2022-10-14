import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:player_watchtower/components/nav_button.dart';
import 'package:player_watchtower/providers/theme.dart';

class BottomBar extends ConsumerWidget {
  const BottomBar({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Container(
      height: 60,
      decoration: BoxDecoration(
        color: ref.watch(colorProvider).secondary,
        border: Border(top: BorderSide(color: Colors.white, width: 3.0)),
        boxShadow: [
          BoxShadow(offset: Offset(0, -4), color: Colors.grey, blurRadius: 5)
        ],
      ),
      child: Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            NavButton(
              buttonIcon: Icons.bolt,
              index: 0,
            ),
            NavButton(
              buttonIcon: Icons.mode,
              index: 1,
            ),
            NavButton(
              buttonIcon: Icons.inventory,
              index: 2,
            ),
            NavButton(
              buttonIcon: Icons.twenty_mp_rounded,
              index: 3,
            )
          ],
        ),
      ),
    );
  }
}
