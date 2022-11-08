import 'package:flutter/material.dart';
import 'package:player_watchtower/global_components/action_dialogs/dialog-input.dart';

class ChangeToDialog extends StatelessWidget {
  const ChangeToDialog({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: DialogInput(text: 'Change To:'),
    );
  }
}
