import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:player_watchtower/pages/Inventory/components/add_new_inventory.dart';

import '../dictionaries/inventory.dart';
import '../pages/Inventory/components/inventory_object_display.dart';
import '../providers/inventory.dart';

String stringNameFromInventoryType(InventoryType inventoryType) {
  switch (inventoryType) {
    case InventoryType.weapon:
      return 'Weapon';
    case InventoryType.spell:
      return 'Spell';
    case InventoryType.ability:
      return 'Ability';
    default:
      return 'Item';
  }
}

List<Widget> turnInventoryObjectIntoDisplay(
    {required WidgetRef ref,
    required InventoryType inventoryType,
    bool isInventory = true,
    bool isPlayerValue = false}) {
  List<Widget> displays = [];
  dynamic qsState = ref.watch(inventoryProvider).quickSelectItems;
  dynamic state = ref.watch(inventoryProvider).items;

  switch (inventoryType) {
    case InventoryType.weapon:
      qsState = ref.watch(inventoryProvider).quickSelectWeapons;
      state = ref.watch(inventoryProvider).weapons;
      break;
    case InventoryType.spell:
      qsState = ref.watch(inventoryProvider).quickSelectSpells;
      state = ref.watch(inventoryProvider).spells;
      break;
    case InventoryType.ability:
      qsState = ref.watch(inventoryProvider).quickSelectAbilities;
      state = ref.watch(inventoryProvider).abilities;
      break;
    default:
  }
  if (isInventory) {
    for (dynamic item in state) {
      displays.add(InventoryObjectDisplay(
        inventoryObject: item,
        isQuickSelect: item.isQuickSelect,
        inventoryType: inventoryType,
        isPlayerValue: isPlayerValue,
      ));
    }
  } else {
    if (qsState.isNotEmpty) {
      for (dynamic item in qsState) {
        displays.add(InventoryObjectDisplay(
          inventoryObject: item,
          isInventory: false,
          inventoryType: inventoryType,
          isPlayerValue: isPlayerValue,
        ));
      }
    }
  }
  if (isInventory)
    displays.add(AddNewInventory(
      inventoryType: inventoryType,
      isPlayerValue: isPlayerValue,
    ));
  return displays;
}
