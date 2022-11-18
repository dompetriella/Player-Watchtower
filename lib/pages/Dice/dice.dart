import 'package:flutter/material.dart';

import '../../version.dart';

class DicePage extends StatelessWidget {
  const DicePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.lightBlue,
      child: Center(child: Text('Coming Soon v$appVersion')),
    );
  }
}
