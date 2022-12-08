import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:player_watchtower/pages/main_page.dart';

import 'models/player.dart';
import 'models/playerSkill.dart';
import 'models/savingThrow.dart';

void main() async {
  Hive.registerAdapter(PlayerAdapter());
  Hive.registerAdapter(PlayerSkillAdapter());
  Hive.registerAdapter(SavingThrowAdapter());
  await Hive.initFlutter();
  runApp(ProviderScope(child: PlayerWatchtower()));
}

class PlayerWatchtower extends StatelessWidget {
  const PlayerWatchtower({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SafeArea(
        child: MainPage(),
      ),
    );
  }
}
