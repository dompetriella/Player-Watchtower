// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'savingThrow.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_SavingThrow _$$_SavingThrowFromJson(Map<String, dynamic> json) =>
    _$_SavingThrow(
      savingThrowName: json['savingThrowName'] as String,
      savingThrowModifier: json['savingThrowModifier'] as int? ?? 0,
      isProficient: json['isProficient'] as bool? ?? false,
      autoCalculated: json['autoCalculated'] as bool? ?? true,
    );

Map<String, dynamic> _$$_SavingThrowToJson(_$_SavingThrow instance) =>
    <String, dynamic>{
      'savingThrowName': instance.savingThrowName,
      'savingThrowModifier': instance.savingThrowModifier,
      'isProficient': instance.isProficient,
      'autoCalculated': instance.autoCalculated,
    };
