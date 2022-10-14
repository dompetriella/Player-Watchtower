import 'package:flutter/material.dart';
import 'package:player_watchtower/components/nav_button.dart';

class BottomBar extends StatelessWidget {
  const BottomBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 60,
      decoration: BoxDecoration(
        color: Colors.grey[300],
        border: Border(top: BorderSide(color: Colors.white, width: 3.0)),
        boxShadow: [
          BoxShadow(
              offset: Offset(0, -4),
              color: Color.fromARGB(50, 0, 0, 0),
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
