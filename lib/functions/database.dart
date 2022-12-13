import 'package:flutter_guid/flutter_guid.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:player_watchtower/providers/player.dart';
import '../models/player.dart';

createNewCharacterEntry(Box<Player> playerBox) {
  String guid = Guid.generate().toString();
  Map<String, dynamic> status = {'theme': 'Daylight'};
  Hive.box('characters').put(guid, status);
  Player firstPlayer = Player().copyWith(guid: guid);
  playerBox.put(guid, firstPlayer);
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
    String characterGuid = characterBox.keys.first;
    Player newPlayer = playerBox.get(characterGuid)!;
    ref.read(playerProvider.notifier).state = newPlayer;
  }
}

void writeStateToHive(Player state) {
  Hive.box<Player>('player').put(state.guid, state);
}
