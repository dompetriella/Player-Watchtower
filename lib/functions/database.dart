import 'package:flutter_guid/flutter_guid.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:player_watchtower/providers/inventory.dart';
import 'package:player_watchtower/providers/player.dart';
import '../inventory_models/inventory.dart';
import '../models/player.dart';

Player createNewCharacterEntry(
    Box<Player> playerBox, Box<Inventory> inventoryBox) {
  String guid = Guid.generate().toString();
  Map<String, dynamic> status = {'theme': 'Daylight'};
  Hive.box('characters').put(guid, status);
  Player firstPlayer = const Player().copyWith(guid: guid);
  Inventory firstInventory = const Inventory().copyWith(guid: guid);
  playerBox.put(guid, firstPlayer);
  inventoryBox.put(guid, firstInventory);
  return firstPlayer;
}

Future getInitState(WidgetRef ref) async {
  // await Hive.deleteBoxFromDisk('player');
  // await Hive.deleteBoxFromDisk('characters');
  // await Hive.deleteBoxFromDisk('inventory');
  var characterBox = await Hive.openBox('characters');
  var playerBox = await Hive.openBox<Player>('player');
  var inventoryBox = await Hive.openBox<Inventory>('inventory');
  if (characterBox.isEmpty) {
    ref.watch(playerProvider.notifier).state =
        createNewCharacterEntry(playerBox, inventoryBox);
  } else {
    // gets the first player guid for now
    String characterGuid = characterBox.keys.first;
    ref.watch(playerProvider.notifier).state = playerBox.get(characterGuid)!;
    ref.watch(inventoryProvider.notifier).state =
        inventoryBox.get(characterGuid)!;
    ref.watch(inventoryProvider.notifier).refreshQuickSelectInventory();
  }
}

void writeStateToHive(Player state) {
  Hive.box<Player>('player').put(state.guid, state);
}

void writeInventoryStateToHive(Inventory state) {
  Hive.box<Inventory>('inventory').put(state.guid, state);
}
