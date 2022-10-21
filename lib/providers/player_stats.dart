import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:player_watchtower/models/player.dart';

final playerProvider = StateNotifierProvider<PlayerNotifier, Player>((ref) {
  return PlayerNotifier();
});

class PlayerNotifier extends StateNotifier<Player> {
  PlayerNotifier()
      : super(Player(
            characterName: "",
            currentHp: 10,
            totalHp: 10,
            level: 1,
            exp: 0,
            playerClass: '',
            playerRace: '',
            alignment: '',
            background: ''));

  void increaseHealth() {
    if (state.currentHp < state.totalHp) {
      state = state.copyWith(currentHp: state.currentHp + 1);
    }
  }

  void decreaseHealth() {
    if (state.currentHp > 0) {
      state = state.copyWith(currentHp: state.currentHp - 1);
    }
  }
}
