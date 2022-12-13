import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:player_watchtower/providers/player.dart';
import 'package:uuid/uuid.dart';
import '../models/player.dart';

createNewCharacterEntry(Box<Player> playerBox) {
  String guid = Uuid().toString();
  Map<String, dynamic> status = {'theme': 'Daylight'};
  Hive.box('characters').put(guid, status);
  playerBox.put(guid, Player().copyWith(guid: guid));
}

Future getInitState(WidgetRef ref) async {
  // await Hive.deleteBoxFromDisk('player');
  // await Hive.deleteBoxFromDisk('characters');
  var characterBox = await Hive.openBox('characters');
  var playerBox = await Hive.openBox<Player>('player');
  if (characterBox.isEmpty) {
    createNewCharacterEntry(playerBox);
  } else {
    // gets the first player guid for now
    String characterGuid = characterBox.keyAt(0);
    Player newPlayer = playerBox.get(characterGuid)!;
    ref.read(playerProvider.notifier).state = newPlayer;
  }
}

void writeStateToHive(Player state, Box<Player> box) {
  box.put(state.guid, state);
}
