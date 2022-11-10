import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart';

part 'player.freezed.dart';
part 'player.g.dart';

@freezed
class Player with _$Player {
  const factory Player(
      {@Default('Player') String characterName,
      @Default(1) int level,
      @Default(0) int exp,
      @Default('Fighter') String playerClass,
      @Default('Human') String playerRace,
      @Default('True Neutral') String alignment,
      @Default('Hermit') String background,
      @Default(10) int currentHp,
      @Default(10) int totalHp,
      @Default(0) int tempHp,
      @Default(10) int armorClass,
      @Default(1) int proficiency,
      @Default(10) int speed,
      @Default(0) int initiative,
      @Default(10) int strength,
      @Default(10) int dexterity,
      @Default(10) int constitution,
      @Default(10) int intellegence,
      @Default(10) int wisdom,
      @Default(10) int charisma}) = _Player;

  factory Player.fromJson(Map<String, dynamic> json) => _$PlayerFromJson(json);
}
