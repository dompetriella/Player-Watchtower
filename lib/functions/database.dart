import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:uuid/uuid.dart';
import '../models/player.dart';

String createNewCharacterEntry() {
  var box = Hive.box('characters');
  String guid = Uuid().toString();
  Map<String, dynamic> status = {'current': 0, 'theme': 'Daylight'};
  box.put(guid, status);
  return guid;
}

Future getInitState(WidgetRef ref) async {
  var characterBox = await Hive.openBox('characters');
  if (characterBox.isEmpty) {}
}

void writeStateToHive(String propertyName, bool isAbilityScore, Player state) {
  var box = Hive.box('player');
  box.put('character', state);
}
