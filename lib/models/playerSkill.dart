import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart';
import 'package:hive/hive.dart';

part 'playerSkill.freezed.dart';
part 'playerSkill.g.dart';

@freezed
class PlayerSkill extends HiveObject with _$PlayerSkill {
  @HiveType(typeId: 1)
  const factory PlayerSkill({
    @HiveField(0) required String skillName,
    @HiveField(1) required String skillType,
    @Default(0) @HiveField(2) int skillModifier,
    @Default(false) @HiveField(3) bool isProficient,
    @Default(true) @HiveField(4) bool autoCalculated,
  }) = _PlayerSkill;

  factory PlayerSkill.fromJson(Map<String, dynamic> json) =>
      _$PlayerSkillFromJson(json);
}
