import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart';
import 'package:hive/hive.dart';
import 'package:player_watchtower/dictionaries/inventory.dart';

part 'ability.freezed.dart';
part 'ability.g.dart';

@freezed
class Ability with _$Ability {
  @HiveType(typeId: 10) // want to do abilities and spell slots
  const factory Ability(
      {@Default('') @HiveField(0) String guid,
      @Default('') @HiveField(1) String name,
      @Default('') @HiveField(2) String blurb,
      @Default('') @HiveField(3) String abilityCatergory,
      @Default('') @HiveField(4) String description,
      @Default(false) @HiveField(5) bool isQuickSelect,
      @Default(3) @HiveField(6) int inventoryType}) = _Ability;

  factory Ability.fromJson(Map<String, dynamic> json) =>
      _$AbilityFromJson(json);
}
