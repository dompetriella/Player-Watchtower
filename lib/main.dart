import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:player_watchtower/pages/main_page.dart';

import 'inventory_models/ability.dart';
import 'inventory_models/inventory.dart';
import 'inventory_models/item.dart';
import 'inventory_models/spell.dart';
import 'inventory_models/weapon.dart';
import 'models/player.dart';
import 'models/playerSkill.dart';
import 'models/savingThrow.dart';

void main() async {
  Hive.registerAdapter(PlayerAdapter());
  Hive.registerAdapter(PlayerSkillAdapter());
  Hive.registerAdapter(SavingThrowAdapter());
  Hive.registerAdapter(InventoryAdapter());
  Hive.registerAdapter(ItemAdapter());
  Hive.registerAdapter(WeaponAdapter());
  Hive.registerAdapter(SpellAdapter());
  Hive.registerAdapter(AbilityAdapter());
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
