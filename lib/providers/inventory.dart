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

  refreshItemQuickSelect() {
    List<Item> newQs = [];
    for (var item in state.items) {
      if (item.isQuickSelect) newQs.add(item);
    }
    state = state.copyWith(quickSelectItems: newQs);
  }

  refreshWeaponQuickSelect() {
    List<Weapon> newQs = [];
    for (var item in state.weapons) {
      if (item.isQuickSelect) newQs.add(item);
    }
    state = state.copyWith(quickSelectWeapons: newQs);
  }

  refreshSpellQuickSelect() {
    List<Spell> newQs = [];
    for (var item in state.spells) {
      if (item.isQuickSelect) newQs.add(item);
    }
    state = state.copyWith(quickSelectSpells: newQs);
  }

  Item toggleFlagItemForQuickSelect(
      {required String guid, required WidgetRef ref}) {
    List<Item> itemsCopy = state.items.toList();
    int indexCopy = state.items.indexWhere((element) => element.guid == guid);
    Item changedItem = state.items[indexCopy];
    itemsCopy[indexCopy] =
        changedItem.copyWith(isQuickSelect: !changedItem.isQuickSelect);
    state = state.copyWith(items: itemsCopy);
    ref.read(inventoryProvider.notifier).refreshItemQuickSelect();
    return itemsCopy[indexCopy];
  }

  Weapon toggleFlagWeaponForQuickSelect(
      {required String guid, required WidgetRef ref}) {
    List<Weapon> weaponCopy = state.weapons.toList();
    int indexCopy = state.weapons.indexWhere((element) => element.guid == guid);
    Weapon changedItem = state.weapons[indexCopy];
    weaponCopy[indexCopy] =
        changedItem.copyWith(isQuickSelect: !changedItem.isQuickSelect);
    state = state.copyWith(weapons: weaponCopy);
    ref.read(inventoryProvider.notifier).refreshWeaponQuickSelect();
    return weaponCopy[indexCopy];
  }

  Spell toggleFlagSpellForQuickSelect(
      {required String guid, required WidgetRef ref}) {
    List<Spell> spellCopy = state.spells.toList();
    int indexCopy = state.spells.indexWhere((element) => element.guid == guid);
    Spell changedItem = state.spells[indexCopy];
    spellCopy[indexCopy] =
        changedItem.copyWith(isQuickSelect: !changedItem.isQuickSelect);
    state = state.copyWith(spells: spellCopy);
    ref.read(inventoryProvider.notifier).refreshSpellQuickSelect();
    return spellCopy[indexCopy];
  }

  void deleteItemFromInventory({required String guid, required WidgetRef ref}) {
    List<Item> itemsCopy = state.items.toList();
    int indexCopy = state.items.indexWhere((element) => element.guid == guid);
    itemsCopy.removeAt(indexCopy);
    state = state.copyWith(items: itemsCopy);
    ref.read(inventoryProvider.notifier).refreshItemQuickSelect();
  }

  void deleteWeaponFromInventory(
      {required String guid, required WidgetRef ref}) {
    List<Weapon> weaponsCopy = state.weapons.toList();
    int indexCopy = state.weapons.indexWhere((element) => element.guid == guid);
    weaponsCopy.removeAt(indexCopy);
    state = state.copyWith(weapons: weaponsCopy);
    ref.read(inventoryProvider.notifier).refreshWeaponQuickSelect();
  }

  void deleteSpellFromInventory(
      {required String guid, required WidgetRef ref}) {
    List<Spell> spellCopy = state.spells.toList();
    int indexCopy = state.spells.indexWhere((element) => element.guid == guid);
    spellCopy.removeAt(indexCopy);
    state = state.copyWith(spells: spellCopy);
    ref.read(inventoryProvider.notifier).refreshSpellQuickSelect();
  }

  addToInventory({required dynamic addObject}) {
    print(addObject.runtimeType);

    if (addObject is Item)
      state = state.copyWith(items: [...state.quickSelectItems, addObject]);

    if (addObject is Weapon)
      state = state.copyWith(weapons: [...state.weapons, addObject]);
    if (addObject is Spell)
      state = state.copyWith(spells: [...state.quickSelectSpells, addObject]);
  }
}
