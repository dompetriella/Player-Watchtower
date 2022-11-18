import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:player_watchtower/dictionaries/skills_dict.dart';
import 'package:player_watchtower/models/savingThrow.dart';
import 'package:player_watchtower/providers/player.dart';
import '../models/player.dart';
import '../models/playerSkill.dart';

Future getInitState(WidgetRef ref) async {
  var box = await Hive.openBox('player');
  Map<String, dynamic> player = const Player().toJson();
  player.forEach((key, value) {
    var valueFromHive = box.get(key);
    if (valueFromHive != null) {
      if (allSkillsList.contains(key) || key.contains('SavingThrow')) {
        if (allSkillsList.contains(key)) {
          PlayerSkill skill = PlayerSkill.fromJson(Map.from(valueFromHive));
          player[key] = skill;
        }
        if (key.contains('SavingThrow')) {
          SavingThrow savingThrow =
              SavingThrow.fromJson(Map.from(valueFromHive));
          player[key] = savingThrow;
        }
      } else {
        player[key] = valueFromHive;
      }
    }
  });

  ref.read(playerProvider.notifier).state = Player.fromJson(player);
}

void writeStateToHive(String propertyName, bool isAbilityScore, Player state) {
  var box = Hive.box('player');
  var playerJson = state.toJson();
  box.put(propertyName, playerJson[propertyName]);
  if (isAbilityScore) {
    for (var element in skillsDict[propertyName]!) {
      PlayerSkill skill = playerJson[element];
      box.put(element, skill.toJson());
    }
    String savingThrowName = '${propertyName}SavingThrow';
    SavingThrow savingThrow = playerJson[savingThrowName];
    box.put(savingThrowName, savingThrow.toJson());
  }
}
