// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'playerSkill.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class PlayerSkillAdapter extends TypeAdapter<_$_PlayerSkill> {
  @override
  final int typeId = 1;

  @override
  _$_PlayerSkill read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return _$_PlayerSkill(
      skillName: fields[0] as String,
      skillType: fields[1] as String,
      skillModifier: fields[2] as int,
      isProficient: fields[3] as bool,
      autoCalculated: fields[4] as bool,
    );
  }

  @override
  void write(BinaryWriter writer, _$_PlayerSkill obj) {
    writer
      ..writeByte(5)
      ..writeByte(0)
      ..write(obj.skillName)
      ..writeByte(1)
      ..write(obj.skillType)
      ..writeByte(2)
      ..write(obj.skillModifier)
      ..writeByte(3)
      ..write(obj.isProficient)
      ..writeByte(4)
      ..write(obj.autoCalculated);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is PlayerSkillAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_PlayerSkill _$$_PlayerSkillFromJson(Map<String, dynamic> json) =>
    _$_PlayerSkill(
      skillName: json['skillName'] as String,
      skillType: json['skillType'] as String,
      skillModifier: json['skillModifier'] as int? ?? 0,
      isProficient: json['isProficient'] as bool? ?? false,
      autoCalculated: json['autoCalculated'] as bool? ?? true,
    );

Map<String, dynamic> _$$_PlayerSkillToJson(_$_PlayerSkill instance) =>
    <String, dynamic>{
      'skillName': instance.skillName,
      'skillType': instance.skillType,
      'skillModifier': instance.skillModifier,
      'isProficient': instance.isProficient,
      'autoCalculated': instance.autoCalculated,
    };
