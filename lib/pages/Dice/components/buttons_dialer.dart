import 'package:flutter/material.dart';

import 'dice_button.dart';

class ButtonsDialer extends StatelessWidget {
  const ButtonsDialer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Wrap(
      alignment: WrapAlignment.center,
      children: [
        DiceButton(diceNumber: 4),
        DiceButton(diceNumber: 6),
        DiceButton(diceNumber: 8),
        DiceButton(diceNumber: 10),
        DiceButton(diceNumber: 12),
        DiceButton(diceNumber: 20),
        DiceButton(
          diceNumber: 100,
        ),
      ],
    );
  }
}
