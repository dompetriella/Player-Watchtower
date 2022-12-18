import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../inventory_models/inventory.dart';
import '../inventory_models/item.dart';
import '../inventory_models/spell.dart';
import '../inventory_models/weapon.dart';

final quickSelectMoneyDisplay = StateProvider<int>(
  (ref) => 0,
);

final inventoryProvider =
    StateNotifierProvider<InventoryModifier, Inventory>((ref) {
  return InventoryModifier();
});

class InventoryModifier extends StateNotifier<Inventory> {
  InventoryModifier() : super(Inventory());

  String addItemToInventory({required Item itemObject}) {
    state = state.copyWith(items: [...state.items, itemObject]);
    return itemObject.guid;
  }

  String addSpellToInventory({required Spell spellObject}) {
    state = state.copyWith(spells: [...state.spells, spellObject]);
    return spellObject.guid;
  }

  String addWeaponToInventory({required Weapon weaponObject}) {
    state = state.copyWith(weapons: [...state.weapons, weaponObject]);
    return weaponObject.guid;
  }
}
