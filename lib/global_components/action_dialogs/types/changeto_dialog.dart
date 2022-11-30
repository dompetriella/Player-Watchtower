import 'package:flutter/material.dart';

import '../components/dialog_input.dart';

class ChangeToDialog extends StatelessWidget {
  final Type inputType;
  const ChangeToDialog({super.key, this.inputType = String});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: DialogInput(text: 'Change To:', inputType: inputType),
    );
  }
}
