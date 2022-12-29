import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart';
import 'package:hive/hive.dart';

import '../dictionaries/inventory.dart';

part 'weapon.freezed.dart';
part 'weapon.g.dart';

@freezed
class Weapon with _$Weapon {
  @HiveType(typeId: 8) // want to do abilities and spell slots
  const factory Weapon(
      {@Default('') @HiveField(0) String guid,
      @Default('') @HiveField(1) String name,
      @Default('') @HiveField(2) String blurb,
      @Default('') @HiveField(3) String damage,
      @Default('') @HiveField(4) String damageType,
      @Default([]) @HiveField(5) List<String> weaponProperties,
      @Default('') @HiveField(6) String weaponType,
      @Default('') @HiveField(7) String description,
      @Default(false) @HiveField(8) bool isQuickSelect,
      @Default(1) @HiveField(9) int inventoryType}) = _Weapon;

  factory Weapon.fromJson(Map<String, dynamic> json) => _$WeaponFromJson(json);
}
