import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:player_watchtower/dictionaries/skills_dict.dart';
import 'package:player_watchtower/functions/calculations.dart';
import 'package:player_watchtower/models/player.dart';
import 'package:player_watchtower/models/savingThrow.dart';

import '../functions/database.dart';
import '../models/playerSkill.dart';
import 'inventory.dart';

final playerProvider = StateNotifierProvider<PlayerNotifier, Player>((ref) {
  return PlayerNotifier();
});

class PlayerNotifier extends StateNotifier<Player> {
  PlayerNotifier() : super(Player());

  void updatePlayerProperty(
      {required String propertyName,
      required dynamic newValue,
      Type propertyType = String,
      bool isAbilityScore = false}) {
    var playerJson = state.toJson();
    var adjustedValue = newValue;
    if (propertyType == int && newValue.runtimeType != int) {
      adjustedValue = int.parse(newValue);
    }
    playerJson[propertyName] = adjustedValue;
    if (isAbilityScore) {
      playerJson = updatePlayerSkillModifierValue(
          playerJson, propertyName, adjustedValue);

      playerJson = updateSavingThrowModifierValue(
          playerJson, propertyName, adjustedValue);
    }

    state = Player.fromJson(playerJson);
    writeStateToHive(state);
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

  Map<String, dynamic> updateSavingThrowModifierValue(
      Map<String, dynamic> playerProperties,
      String propertyName,
      dynamic adjustedValue) {
    SavingThrow currentST = playerProperties['${propertyName}SavingThrow'];
    var stJson = currentST.toJson();
    stJson['savingThrowModifier'] = getAbilityScoreModifier(adjustedValue);
    playerProperties['${propertyName}SavingThrow'] =
        SavingThrow.fromJson(stJson);
    return playerProperties;
  }

  void increaseHealth() {
    if (state.currentHp < state.totalHp) {
      state = state.copyWith(currentHp: state.currentHp + 1);
      Hive.box<Player>('player').put(state.guid, state);
    }
  }

  void decreaseHealth() {
    if (state.currentHp > 0) {
      state = state.copyWith(currentHp: state.currentHp - 1);
      Hive.box<Player>('player').put(state.guid, state);
    }
  }

  void increaseCoin(WidgetRef ref) {
    switch (ref.read(quickSelectMoneyDisplay)) {
      case 1:
        state = state.copyWith(copper: state.copper + 1);
        Hive.box<Player>('player').put(state.guid, state);
        break;
      case 2:
        state = state.copyWith(silver: state.silver + 1);
        Hive.box<Player>('player').put(state.guid, state);
        break;
      case 3:
        state = state.copyWith(gold: state.gold + 1);
        Hive.box<Player>('player').put(state.guid, state);
        break;
      case 4:
        state = state.copyWith(platinum: state.platinum + 1);
        Hive.box<Player>('player').put(state.guid, state);
        break;
      default:
    }
  }

  void decreaseCoin(WidgetRef ref) {
    switch (ref.read(quickSelectMoneyDisplay)) {
      case 1:
        if (state.copper > 0) {
          state = state.copyWith(copper: state.copper - 1);
          Hive.box<Player>('player').put(state.guid, state);
        }
        break;
      case 2:
        if (state.silver > 0) {
          state = state.copyWith(copper: state.silver - 1);
          Hive.box<Player>('player').put(state.guid, state);
        }
        break;
      case 3:
        if (state.gold > 0) {
          state = state.copyWith(copper: state.gold - 1);
          Hive.box<Player>('player').put(state.guid, state);
        }
        break;
      case 4:
        if (state.platinum > 0) {
          state = state.copyWith(copper: state.platinum - 1);
          Hive.box<Player>('player').put(state.guid, state);
        }
        break;
      default:
    }
  }
}
