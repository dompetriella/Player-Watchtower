import 'package:flutter/material.dart';

import '../components/dialog-input.dart';

class ChangeToDialog extends StatelessWidget {
  const ChangeToDialog({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: DialogInput(text: 'Change To:'),
    );
  }
}
