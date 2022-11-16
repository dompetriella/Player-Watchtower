// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'savingThrow.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_SavingThrow _$$_SavingThrowFromJson(Map<String, dynamic> json) =>
    _$_SavingThrow(
      skillName: json['skillName'] as String,
      skillModifier: json['skillModifier'] as int? ?? 0,
      isProficient: json['isProficient'] as bool? ?? false,
      autoCalculated: json['autoCalculated'] as bool? ?? true,
    );

Map<String, dynamic> _$$_SavingThrowToJson(_$_SavingThrow instance) =>
    <String, dynamic>{
      'skillName': instance.skillName,
      'skillModifier': instance.skillModifier,
      'isProficient': instance.isProficient,
      'autoCalculated': instance.autoCalculated,
    };
