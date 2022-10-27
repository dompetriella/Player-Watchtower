import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:player_watchtower/global_components/nav_button.dart';
import 'package:player_watchtower/providers/theme.dart';

class BottomBar extends ConsumerWidget {
  const BottomBar({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Container(
      height: 60,
      decoration: BoxDecoration(
        color: ref.watch(themeProvider).baseCardBg,
        border: Border(
            top: BorderSide(
                color: ref.watch(themeProvider).outline, width: 3.0)),
        boxShadow: [
          BoxShadow(
              offset: Offset(0, -4),
              color: Color.fromRGBO(0, 0, 0, .50),
              blurRadius: 5)
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
              buttonIcon: FontAwesomeIcons.briefcase,
              index: 2,
            ),
            NavButton(
              buttonIcon: FontAwesomeIcons.diceD20,
              index: 3,
            )
          ],
        ),
      ),
    );
  }
}
