import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:player_watchtower/functions/calculations.dart';
import 'package:player_watchtower/models/player.dart';

import '../models/playerSkill.dart';

final playerProvider = StateNotifierProvider<PlayerNotifier, Player>((ref) {
  return PlayerNotifier();
});

class PlayerNotifier extends StateNotifier<Player> {
  PlayerNotifier() : super(Player());

  void updatePlayerProperty(
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
    if (isAbilityScore) {
      playerJson = updatePlayerSkillModifierValue(
          playerJson, propertyName, adjustedValue);
    }
    state = Player.fromJson(playerJson);
  }

  Map<String, dynamic> updatePlayerSkillModifierValue(
      Map<String, dynamic> playerProperties,
      String propertyName,
      dynamic adjustedValue) {
    playerProperties.forEach((key, value) {
      if (value is PlayerSkill) {
        var skillJson = value.toJson();
        skillJson['skillModifier'] = getAbilityScoreModifier(adjustedValue);
        PlayerSkill updatedPlayerSkill = PlayerSkill.fromJson(skillJson);
        if (skillJson['skillType'] == propertyName) {
          playerProperties[skillJson['skillName']] = updatedPlayerSkill;
        }
      }
    });
    return playerProperties;
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
