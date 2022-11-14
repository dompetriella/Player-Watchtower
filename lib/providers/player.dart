import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:player_watchtower/models/player.dart';

import '../models/playerSkill.dart';

final playerProvider = StateNotifierProvider<PlayerNotifier, Player>((ref) {
  return PlayerNotifier();
});

class PlayerNotifier extends StateNotifier<Player> {
  PlayerNotifier() : super(Player());

  void playerStatChangeTo(
      {required String propertyName,
      var newValue,
      Type propertyType = String,
      bool isAbilityScore = false}) {
    var playerJson = state.toJson();
    var adjustedValue = newValue;
    if (propertyType == int) {
      adjustedValue = int.parse(newValue);
    }
    playerJson[propertyName] = adjustedValue;
    state = Player.fromJson(playerJson);
  }

  List<dynamic> updateSkillsFromAbilityScore(
      Map<String, dynamic> playerProperties, String propertyName) {
    var relevantSkills = [];
    playerProperties.forEach((key, value) {
      if (value.runtimeType == PlayerSkill) {
        var skillJson = value.toJson();
        if (skillJson['skillType'] == propertyName) {
          relevantSkills.add(skillJson['skillName']);
        }
      }
    });
    return relevantSkills;
  }

  void updatePlayerSkillModifierValue(String skillName, int modifierValue) {
    var playerJson = state.toJson();
    PlayerSkill skillObject = playerJson[skillName];
    var updatedSkill = skillObject.copyWith(skillModifier: modifierValue);
    playerJson[skillName] = updatedSkill;
    state = Player.fromJson(playerJson);
  }

  void increaseHealth() {
    if (state.currentHp < state.totalHp) {
      state = state.copyWith(currentHp: state.currentHp + 1);
    }
  }

  void increaseHealthBy10() {
    if (state.currentHp < state.totalHp) {
      state = state.copyWith(currentHp: state.currentHp + 10);
    }
  }

  void increaseHealthByAmount(String amount) {
    if (state.currentHp < state.totalHp) {
      state = state.copyWith(currentHp: state.currentHp + int.parse(amount));
    }
  }

  void decreaseHealth() {
    if (state.currentHp > 0) {
      state = state.copyWith(currentHp: state.currentHp - 1);
    }
  }

  void decreaseHealthBy10() {
    if (state.currentHp > 0) {
      state = state.copyWith(currentHp: state.currentHp - 1);
    }
  }

  void decreaseHealthByAmount(String amount) {
    if (state.currentHp > 0) {
      state = state.copyWith(currentHp: state.currentHp - int.parse(amount));
    }
  }
}
