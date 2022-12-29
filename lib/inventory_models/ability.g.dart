// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'ability.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class AbilityAdapter extends TypeAdapter<_$_Ability> {
  @override
  final int typeId = 10;

  @override
  _$_Ability read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return _$_Ability(
      guid: fields[0] as String,
      name: fields[1] as String,
      blurb: fields[2] as String,
      abilityCatergory: fields[3] as String,
      description: fields[4] as String,
      isQuickSelect: fields[5] as bool,
      inventoryType: fields[6] as int,
    );
  }

  @override
  void write(BinaryWriter writer, _$_Ability obj) {
    writer
      ..writeByte(7)
      ..writeByte(0)
      ..write(obj.guid)
      ..writeByte(1)
      ..write(obj.name)
      ..writeByte(2)
      ..write(obj.blurb)
      ..writeByte(3)
      ..write(obj.abilityCatergory)
      ..writeByte(4)
      ..write(obj.description)
      ..writeByte(5)
      ..write(obj.isQuickSelect)
      ..writeByte(6)
      ..write(obj.inventoryType);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is AbilityAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Ability _$$_AbilityFromJson(Map<String, dynamic> json) => _$_Ability(
      guid: json['guid'] as String? ?? '',
      name: json['name'] as String? ?? '',
      blurb: json['blurb'] as String? ?? '',
      abilityCatergory: json['abilityCatergory'] as String? ?? '',
      description: json['description'] as String? ?? '',
      isQuickSelect: json['isQuickSelect'] as bool? ?? false,
      inventoryType: json['inventoryType'] as int? ?? 3,
    );

Map<String, dynamic> _$$_AbilityToJson(_$_Ability instance) =>
    <String, dynamic>{
      'guid': instance.guid,
      'name': instance.name,
      'blurb': instance.blurb,
      'abilityCatergory': instance.abilityCatergory,
      'description': instance.description,
      'isQuickSelect': instance.isQuickSelect,
      'inventoryType': instance.inventoryType,
    };
