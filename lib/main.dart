import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:player_watchtower/pages/screen_chassis.dart';

void main() {
  runApp(ProviderScope(child: PlayerWatchtower()));
}

class PlayerWatchtower extends StatelessWidget {
  const PlayerWatchtower({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: SafeArea(
        child: ScreenChassis(),
      ),
    );
  }
}
