import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart';

part 'player.freezed.dart';
part 'player.g.dart';

@freezed
class Player with _$Player {
  const factory Player({
    @Default('') String characterName,
    @Default(1) int level,
    @Default(0) int exp,
    @Default('Fighter') String playerClass,
    @Default('Human') String playerRace,
    @Default('True Neutral') String alignment,
    @Default('Hermit') String background,
    @Default(10) int currentHp,
    @Default(10) int totalHp,
  }) = _Player;

  factory Player.fromJson(Map<String, dynamic> json) => _$PlayerFromJson(json);
}
