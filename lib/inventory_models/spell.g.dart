// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'spell.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class SpellAdapter extends TypeAdapter<_$_Spell> {
  @override
  final int typeId = 7;

  @override
  _$_Spell read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return _$_Spell(
      guid: fields[0] as String,
      name: fields[1] as String,
      blurb: fields[2] as String,
      spellLevel: fields[3] as int,
      range: fields[5] as String,
      castingTime: fields[6] as String,
      duration: fields[7] as String,
      school: fields[8] as String,
      components: (fields[9] as List).cast<String>(),
      description: fields[10] as String,
      isQuickSelect: fields[11] as bool,
    );
  }

  @override
  void write(BinaryWriter writer, _$_Spell obj) {
    writer
      ..writeByte(11)
      ..writeByte(0)
      ..write(obj.guid)
      ..writeByte(1)
      ..write(obj.name)
      ..writeByte(2)
      ..write(obj.blurb)
      ..writeByte(3)
      ..write(obj.spellLevel)
      ..writeByte(5)
      ..write(obj.range)
      ..writeByte(6)
      ..write(obj.castingTime)
      ..writeByte(7)
      ..write(obj.duration)
      ..writeByte(8)
      ..write(obj.school)
      ..writeByte(10)
      ..write(obj.description)
      ..writeByte(11)
      ..write(obj.isQuickSelect)
      ..writeByte(9)
      ..write(obj.components);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is SpellAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Spell _$$_SpellFromJson(Map<String, dynamic> json) => _$_Spell(
      guid: json['guid'] as String? ?? '',
      name: json['name'] as String? ?? '',
      blurb: json['blurb'] as String? ?? '',
      spellLevel: json['spellLevel'] as int? ?? 0,
      range: json['range'] as String? ?? '',
      castingTime: json['castingTime'] as String? ?? '',
      duration: json['duration'] as String? ?? '',
      school: json['school'] as String? ?? '',
      components: (json['components'] as List<dynamic>?)
              ?.map((e) => e as String)
              .toList() ??
          const [],
      description: json['description'] as String? ?? '',
      isQuickSelect: json['isQuickSelect'] as bool? ?? false,
    );

Map<String, dynamic> _$$_SpellToJson(_$_Spell instance) => <String, dynamic>{
      'guid': instance.guid,
      'name': instance.name,
      'blurb': instance.blurb,
      'spellLevel': instance.spellLevel,
      'range': instance.range,
      'castingTime': instance.castingTime,
      'duration': instance.duration,
      'school': instance.school,
      'components': instance.components,
      'description': instance.description,
      'isQuickSelect': instance.isQuickSelect,
    };
