import 'package:flutter/material.dart';
import 'package:player_watchtower/global_components/action_dialogs/edit_dialog.dart';

class InventoryPage extends StatelessWidget {
  const InventoryPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.lightBlue.shade900,
      child: Center(
          child: EditDialog(
        title: 'Test',
      )),
    );
  }
}
