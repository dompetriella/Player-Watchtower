import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:player_watchtower/functions/database.dart';

import '../dictionaries/inventory.dart';
import '../inventory_models/ability.dart';
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

  refreshQuickSelect(InventoryType inventoryType) {
    switch (inventoryType) {
      case InventoryType.item:
        List<Item> newQs = [];
        for (var item in state.items) {
          if (item.isQuickSelect) newQs.add(item);
        }
        state = state.copyWith(quickSelectItems: newQs);
        break;
      case InventoryType.weapon:
        List<Weapon> newQs = [];
        for (var item in state.weapons) {
          if (item.isQuickSelect) newQs.add(item);
        }
        state = state.copyWith(quickSelectWeapons: newQs);
        break;
      case InventoryType.spell:
        List<Spell> newQs = [];
        for (var item in state.spells) {
          if (item.isQuickSelect) newQs.add(item);
        }
        state = state.copyWith(quickSelectSpells: newQs);
        break;
      case InventoryType.ability:
        List<Ability> newQs = [];
        for (var item in state.abilities) {
          if (item.isQuickSelect) newQs.add(item);
        }
        state = state.copyWith(quickSelectAbilities: newQs);
        break;
      default:
    }
  }

  refreshQuickSelectInventory() {
    refreshQuickSelect(InventoryType.item);
    refreshQuickSelect(InventoryType.weapon);
    refreshQuickSelect(InventoryType.spell);
    refreshQuickSelect(InventoryType.ability);
  }

  Object toggleFlagForQuickSelect(
      {required String guid,
      required WidgetRef ref,
      required InventoryType inventoryType}) {
    dynamic inventoryState;

    switch (inventoryType) {
      case InventoryType.weapon:
        inventoryState = state.weapons;
        break;
      case InventoryType.spell:
        inventoryState = state.spells;
        break;
      case InventoryType.item:
        inventoryState = state.items;
        break;
      case InventoryType.ability:
        inventoryState = state.abilities;
        break;
    }
    dynamic inventoryStateCopy = inventoryState.toList();
    int indexCopy =
        inventoryState.indexWhere((element) => element.guid == guid);
    dynamic changedItem = inventoryState[indexCopy];
    inventoryStateCopy[indexCopy] =
        changedItem.copyWith(isQuickSelect: !changedItem.isQuickSelect);
    switch (inventoryType) {
      case InventoryType.weapon:
        state = state.copyWith(weapons: inventoryStateCopy);
        break;
      case InventoryType.spell:
        state = state.copyWith(spells: inventoryStateCopy);
        break;
      case InventoryType.item:
        state = state.copyWith(items: inventoryStateCopy);
        break;
      case InventoryType.ability:
        state = state.copyWith(abilities: inventoryStateCopy);
    }
    ref.read(inventoryProvider.notifier).refreshQuickSelect(inventoryType);
    writeInventoryStateToHive(state);
    return inventoryStateCopy[indexCopy];
  }

  void deleteItemFromInventory(
      {required String guid,
      required WidgetRef ref,
      required InventoryType inventoryType}) {
    dynamic inventoryState;

    switch (inventoryType) {
      case InventoryType.weapon:
        inventoryState = state.weapons;
        break;
      case InventoryType.spell:
        inventoryState = state.spells;
        break;
      case InventoryType.item:
        inventoryState = state.items;
        break;
      case InventoryType.ability:
        inventoryState = state.abilities;
        break;
    }

    dynamic inventoryStateCopy = inventoryState.toList();
    int indexCopy =
        inventoryState.indexWhere((element) => element.guid == guid);
    inventoryStateCopy.removeAt(indexCopy);
    switch (inventoryType) {
      case InventoryType.weapon:
        state = state.copyWith(weapons: inventoryStateCopy);
        break;
      case InventoryType.spell:
        state = state.copyWith(spells: inventoryStateCopy);
        break;
      case InventoryType.item:
        state = state.copyWith(items: inventoryStateCopy);
        break;
      case InventoryType.ability:
        state = state.copyWith(abilities: inventoryStateCopy);
        break;
    }
    ref.read(inventoryProvider.notifier).refreshQuickSelect(inventoryType);
    writeInventoryStateToHive(state);
  }

  changeItemAmount(
      {required String guid, required WidgetRef ref, bool increase = false}) {
    var stateCopy = state.items.toList();
    int indexCopy = state.items.indexWhere((element) => element.guid == guid);
    if (increase && stateCopy[indexCopy].amount < 100000) {
      stateCopy[indexCopy].copyWith(amount: stateCopy[indexCopy].amount + 1);
    }
    if (!increase && stateCopy[indexCopy].amount > 0) {
      stateCopy[indexCopy].copyWith(amount: stateCopy[indexCopy].amount - 1);
    }
    state = state.copyWith(items: stateCopy);
  }

  addToInventory({
    required dynamic addObject,
  }) {
    var inventoryType = InventoryType.values[addObject.inventoryType];
    switch (InventoryType.values[addObject.inventoryType]) {
      case InventoryType.item:
        state = state.copyWith(items: [...state.items, addObject]);
        writeInventoryStateToHive(state);
        break;
      case InventoryType.weapon:
        state = state.copyWith(weapons: [...state.weapons, addObject]);
        writeInventoryStateToHive(state);
        break;
      case InventoryType.spell:
        state = state.copyWith(spells: [...state.spells, addObject]);
        writeInventoryStateToHive(state);
        break;
      case InventoryType.ability:
        state = state.copyWith(abilities: [...state.abilities, addObject]);
        writeInventoryStateToHive(state);
        break;
    }
  }
}
