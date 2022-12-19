import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart';
import 'package:hive/hive.dart';

part 'spell.freezed.dart';
part 'spell.g.dart';

@freezed
class Spell with _$Spell {
  @HiveType(typeId: 7) // want to do abilities and spell slots
  const factory Spell(
      {@Default('') @HiveField(0) String guid,
      @Default('') @HiveField(1) String name,
      @Default('') @HiveField(2) String blurb,
      @Default(0) @HiveField(3) int spellLevel,
      @Default('') @HiveField(4) String effectType,
      @Default('') @HiveField(5) String range,
      @Default('') @HiveField(6) String castingTime,
      @Default('') @HiveField(7) String duration,
      @Default('') @HiveField(8) String school,
      @Default([]) @HiveField(9) List<String> components,
      @Default('') @HiveField(10) String description,
      @Default(false) @HiveField(11) bool isQuickSelect}) = _Spell;

  factory Spell.fromJson(Map<String, dynamic> json) => _$SpellFromJson(json);
}
