// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'inventory.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class InventoryAdapter extends TypeAdapter<_$_Inventory> {
  @override
  final int typeId = 6;

  @override
  _$_Inventory read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return _$_Inventory(
      guid: fields[0] as String,
      weapons: (fields[1] as List).cast<Weapon>(),
      spells: (fields[2] as List).cast<Spell>(),
      items: (fields[3] as List).cast<Item>(),
      quickSelectWeapons: (fields[4] as List).cast<Weapon>(),
      quickSelectSpells: (fields[5] as List).cast<Spell>(),
      quickSelectItems: (fields[6] as List).cast<Item>(),
      abilities: (fields[7] as List).cast<Ability>(),
      quickSelectAbilities: (fields[8] as List).cast<Ability>(),
    );
  }

  @override
  void write(BinaryWriter writer, _$_Inventory obj) {
    writer
      ..writeByte(9)
      ..writeByte(0)
      ..write(obj.guid)
      ..writeByte(1)
      ..write(obj.weapons)
      ..writeByte(2)
      ..write(obj.spells)
      ..writeByte(3)
      ..write(obj.items)
      ..writeByte(4)
      ..write(obj.quickSelectWeapons)
      ..writeByte(5)
      ..write(obj.quickSelectSpells)
      ..writeByte(6)
      ..write(obj.quickSelectItems)
      ..writeByte(7)
      ..write(obj.abilities)
      ..writeByte(8)
      ..write(obj.quickSelectAbilities);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is InventoryAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Inventory _$$_InventoryFromJson(Map<String, dynamic> json) => _$_Inventory(
      guid: json['guid'] as String? ?? '',
      weapons: (json['weapons'] as List<dynamic>?)
              ?.map((e) => Weapon.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
      spells: (json['spells'] as List<dynamic>?)
              ?.map((e) => Spell.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
      items: (json['items'] as List<dynamic>?)
              ?.map((e) => Item.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
      quickSelectWeapons: (json['quickSelectWeapons'] as List<dynamic>?)
              ?.map((e) => Weapon.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
      quickSelectSpells: (json['quickSelectSpells'] as List<dynamic>?)
              ?.map((e) => Spell.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
      quickSelectItems: (json['quickSelectItems'] as List<dynamic>?)
              ?.map((e) => Item.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
      abilities: (json['abilities'] as List<dynamic>?)
              ?.map((e) => Ability.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
      quickSelectAbilities: (json['quickSelectAbilities'] as List<dynamic>?)
              ?.map((e) => Ability.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
    );

Map<String, dynamic> _$$_InventoryToJson(_$_Inventory instance) =>
    <String, dynamic>{
      'guid': instance.guid,
      'weapons': instance.weapons.map((e) => e.toJson()).toList(),
      'spells': instance.spells.map((e) => e.toJson()).toList(),
      'items': instance.items.map((e) => e.toJson()).toList(),
      'quickSelectWeapons':
          instance.quickSelectWeapons.map((e) => e.toJson()).toList(),
      'quickSelectSpells':
          instance.quickSelectSpells.map((e) => e.toJson()).toList(),
      'quickSelectItems':
          instance.quickSelectItems.map((e) => e.toJson()).toList(),
      'abilities': instance.abilities.map((e) => e.toJson()).toList(),
      'quickSelectAbilities':
          instance.quickSelectAbilities.map((e) => e.toJson()).toList(),
    };
