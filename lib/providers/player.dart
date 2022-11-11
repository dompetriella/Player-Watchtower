import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:player_watchtower/models/player.dart';

final playerProvider = StateNotifierProvider<PlayerNotifier, Player>((ref) {
  return PlayerNotifier();
});

String displayValue(var value) {
  if (value.runtimeType == int) {
    if (value > 0) {
      return '+${value.toString()}';
    }
  }
  return value.toString();
}

class PlayerNotifier extends StateNotifier<Player> {
  PlayerNotifier() : super(Player());

  void playerStatChangeTo(
      String propertyName, var newValue, Type propertyType) {
    var playerJson = state.toJson();
    var adjustedValue = newValue;
    if (propertyType == int) {
      adjustedValue = int.parse(newValue);
    }
    playerJson[propertyName] = adjustedValue;
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

int getAbilityScoreModifier(int score) {
  if (score < 2) return -5;
  if (score < 4) return -4;
  if (score < 6) return -3;
  if (score < 8) return -2;
  if (score < 10) return -1;
  if (score < 12) return 0;
  if (score < 14) return 1;
  if (score < 16) return 2;
  if (score < 18) return 3;
  if (score < 22) return 4;
  if (score < 24) return 5;
  if (score < 26) return 6;
  if (score < 28) return 7;
  if (score < 30) return 8;
  if (score < 32) return 9;
  return 0;
}

int getProficiencyModifier(int level) {
  if (level < 5) return 2;
  if (level < 9) return 3;
  if (level < 13) return 4;
  if (level < 17) return 5;
  return 6;
}
