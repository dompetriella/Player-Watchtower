import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart';

part 'playerSkill.freezed.dart';
part 'playerSkill.g.dart';

@freezed
class PlayerSkill with _$PlayerSkill {
  const factory PlayerSkill({
    required String skillName,
    required String skillType,
    @Default(0) int skillModifier,
    @Default(false) bool isProficient,
    @Default(true) bool autoCalculated,
  }) = _PlayerSkill;

  factory PlayerSkill.fromJson(Map<String, dynamic> json) =>
      _$PlayerSkillFromJson(json);
}
