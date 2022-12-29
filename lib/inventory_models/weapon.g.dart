// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'weapon.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class WeaponAdapter extends TypeAdapter<_$_Weapon> {
  @override
  final int typeId = 8;

  @override
  _$_Weapon read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return _$_Weapon(
      guid: fields[0] as String,
      name: fields[1] as String,
      blurb: fields[2] as String,
      damage: fields[3] as String,
      damageType: fields[4] as String,
      weaponProperties: (fields[5] as List).cast<String>(),
      weaponType: fields[6] as String,
      description: fields[7] as String,
      isQuickSelect: fields[8] as bool,
      inventoryType: fields[9] as int,
    );
  }

  @override
  void write(BinaryWriter writer, _$_Weapon obj) {
    writer
      ..writeByte(10)
      ..writeByte(0)
      ..write(obj.guid)
      ..writeByte(1)
      ..write(obj.name)
      ..writeByte(2)
      ..write(obj.blurb)
      ..writeByte(3)
      ..write(obj.damage)
      ..writeByte(4)
      ..write(obj.damageType)
      ..writeByte(6)
      ..write(obj.weaponType)
      ..writeByte(7)
      ..write(obj.description)
      ..writeByte(8)
      ..write(obj.isQuickSelect)
      ..writeByte(9)
      ..write(obj.inventoryType)
      ..writeByte(5)
      ..write(obj.weaponProperties);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is WeaponAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Weapon _$$_WeaponFromJson(Map<String, dynamic> json) => _$_Weapon(
      guid: json['guid'] as String? ?? '',
      name: json['name'] as String? ?? '',
      blurb: json['blurb'] as String? ?? '',
      damage: json['damage'] as String? ?? '',
      damageType: json['damageType'] as String? ?? '',
      weaponProperties: (json['weaponProperties'] as List<dynamic>?)
              ?.map((e) => e as String)
              .toList() ??
          const [],
      weaponType: json['weaponType'] as String? ?? '',
      description: json['description'] as String? ?? '',
      isQuickSelect: json['isQuickSelect'] as bool? ?? false,
      inventoryType: json['inventoryType'] as int? ?? 1,
    );

Map<String, dynamic> _$$_WeaponToJson(_$_Weapon instance) => <String, dynamic>{
      'guid': instance.guid,
      'name': instance.name,
      'blurb': instance.blurb,
      'damage': instance.damage,
      'damageType': instance.damageType,
      'weaponProperties': instance.weaponProperties,
      'weaponType': instance.weaponType,
      'description': instance.description,
      'isQuickSelect': instance.isQuickSelect,
      'inventoryType': instance.inventoryType,
    };
