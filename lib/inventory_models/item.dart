import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart';
import 'package:hive/hive.dart';

part 'item.freezed.dart';
part 'item.g.dart';

@freezed
class Item with _$Item {
  @HiveType(typeId: 9) // want to do abilities and spell slots
  const factory Item({
    @Default('') @HiveField(0) String guid,
    @Default('') @HiveField(1) String name,
    @Default('') @HiveField(2) String blurb,
    @Default('') @HiveField(3) String itemCategory,
    @Default('') @HiveField(4) String description,
    @Default(1) @HiveField(5) int amount,
  }) = _Item;

  factory Item.fromJson(Map<String, dynamic> json) => _$ItemFromJson(json);
}
