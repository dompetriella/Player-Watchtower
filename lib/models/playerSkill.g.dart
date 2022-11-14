// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'playerSkill.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_PlayerSkill _$$_PlayerSkillFromJson(Map<String, dynamic> json) =>
    _$_PlayerSkill(
      skillName: json['skillName'] as String,
      skillType: json['skillType'] as String,
      isProficient: json['isProficient'] as bool? ?? false,
      autoCalculated: json['autoCalculated'] as bool? ?? true,
    );

Map<String, dynamic> _$$_PlayerSkillToJson(_$_PlayerSkill instance) =>
    <String, dynamic>{
      'skillName': instance.skillName,
      'skillType': instance.skillType,
      'isProficient': instance.isProficient,
      'autoCalculated': instance.autoCalculated,
    };
