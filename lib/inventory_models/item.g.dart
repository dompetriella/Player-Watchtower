// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'item.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class ItemAdapter extends TypeAdapter<_$_Item> {
  @override
  final int typeId = 9;

  @override
  _$_Item read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return _$_Item(
      guid: fields[0] as String,
      name: fields[1] as String,
      blurb: fields[2] as String,
      itemCategory: fields[3] as String,
      description: fields[4] as String,
      amount: fields[5] as int,
      isQuickSelect: fields[6] as bool,
      inventoryType: fields[7] as int,
    );
  }

  @override
  void write(BinaryWriter writer, _$_Item obj) {
    writer
      ..writeByte(8)
      ..writeByte(0)
      ..write(obj.guid)
      ..writeByte(1)
      ..write(obj.name)
      ..writeByte(2)
      ..write(obj.blurb)
      ..writeByte(3)
      ..write(obj.itemCategory)
      ..writeByte(4)
      ..write(obj.description)
      ..writeByte(5)
      ..write(obj.amount)
      ..writeByte(6)
      ..write(obj.isQuickSelect)
      ..writeByte(7)
      ..write(obj.inventoryType);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is ItemAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Item _$$_ItemFromJson(Map<String, dynamic> json) => _$_Item(
      guid: json['guid'] as String? ?? '',
      name: json['name'] as String? ?? '',
      blurb: json['blurb'] as String? ?? '',
      itemCategory: json['itemCategory'] as String? ?? '',
      description: json['description'] as String? ?? '',
      amount: json['amount'] as int? ?? 1,
      isQuickSelect: json['isQuickSelect'] as bool? ?? false,
      inventoryType: json['inventoryType'] as int? ?? 0,
    );

Map<String, dynamic> _$$_ItemToJson(_$_Item instance) => <String, dynamic>{
      'guid': instance.guid,
      'name': instance.name,
      'blurb': instance.blurb,
      'itemCategory': instance.itemCategory,
      'description': instance.description,
      'amount': instance.amount,
      'isQuickSelect': instance.isQuickSelect,
      'inventoryType': instance.inventoryType,
    };
