// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'savingThrow.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class SavingThrowAdapter extends TypeAdapter<_$_SavingThrow> {
  @override
  final int typeId = 2;

  @override
  _$_SavingThrow read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return _$_SavingThrow(
      savingThrowName: fields[0] as String,
      savingThrowModifier: fields[1] as int,
      isProficient: fields[2] as bool,
      autoCalculated: fields[3] as bool,
    );
  }

  @override
  void write(BinaryWriter writer, _$_SavingThrow obj) {
    writer
      ..writeByte(4)
      ..writeByte(0)
      ..write(obj.savingThrowName)
      ..writeByte(1)
      ..write(obj.savingThrowModifier)
      ..writeByte(2)
      ..write(obj.isProficient)
      ..writeByte(3)
      ..write(obj.autoCalculated);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is SavingThrowAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}

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
