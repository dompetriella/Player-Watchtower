import 'package:flutter/material.dart';

import 'dice_button.dart';

class ButtonsDialer extends StatelessWidget {
  const ButtonsDialer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var screenWidth = MediaQuery.of(context).size.width;
    return Container(
      width: screenWidth,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [DiceButton(diceNumber: 20), DiceButton(diceNumber: 6)],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [DiceButton(diceNumber: 4), DiceButton(diceNumber: 8)],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [DiceButton(diceNumber: 10), DiceButton(diceNumber: 12)],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              DiceButton(
                diceNumber: 100,
              ),
            ],
          ),
        ],
      ),
    );
  }
}
