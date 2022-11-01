import 'package:flutter/material.dart';

class LongPressActionDialog extends StatelessWidget {
  Widget actionWidget;
  LongPressActionDialog({super.key, required this.actionWidget});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
        onLongPress: () => print('long press'), child: actionWidget);
  }
}
