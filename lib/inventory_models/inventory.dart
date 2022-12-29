import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart';
import 'package:hive/hive.dart';
import 'package:player_watchtower/inventory_models/spell.dart';
import 'package:player_watchtower/inventory_models/weapon.dart';

import 'ability.dart';
import 'item.dart';

part 'inventory.freezed.dart';
part 'inventory.g.dart';

@freezed
class Inventory with _$Inventory {
  @HiveType(typeId: 6) // want to do abilities and spell slots
  const factory Inventory({
    @Default('') @HiveField(0) String guid,
    @Default([]) @HiveField(1) List<Weapon> weapons,
    @Default([]) @HiveField(2) List<Spell> spells,
    @Default([]) @HiveField(3) List<Item> items,
    @Default([]) @HiveField(4) List<Weapon> quickSelectWeapons,
    @Default([]) @HiveField(5) List<Spell> quickSelectSpells,
    @Default([]) @HiveField(6) List<Item> quickSelectItems,
    @Default([]) @HiveField(7) List<Ability> abilities,
    @Default([]) @HiveField(8) List<Ability> quickSelectAbilities,
  }) = _Inventory;

  factory Inventory.fromJson(Map<String, dynamic> json) =>
      _$InventoryFromJson(json);
}
