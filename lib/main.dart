import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:player_watchtower/pages/main_page.dart';

void main() async {
  await Hive.initFlutter();
  await Hive.openBox('player');
  runApp(ProviderScope(child: PlayerWatchtower()));
}

class PlayerWatchtower extends StatelessWidget {
  const PlayerWatchtower({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: SafeArea(
        child: MainPage(),
      ),
    );
  }
}
