import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:player_watchtower/inventory_models/item.dart';
import 'package:player_watchtower/pages/Inventory/components/item_display.dart';
import 'package:player_watchtower/pages/Inventory/components/add_new_item.dart';
import 'package:player_watchtower/pages/Inventory/components/currency_item.dart';
import 'package:player_watchtower/pages/Inventory/components/spell_display.dart';
import 'package:player_watchtower/pages/Inventory/components/weapon_display.dart';
import 'package:player_watchtower/providers/inventory.dart';
import 'package:player_watchtower/providers/page.dart';
import 'package:player_watchtower/providers/player.dart';

import '../../global_components/bar_drop_down.dart';
import '../../inventory_models/spell.dart';
import '../../inventory_models/weapon.dart';
import '../../providers/theme.dart';

Color platinum = Colors.grey[800]!;
Color gold = Colors.yellow;
Color silver = Colors.grey[400]!;
Color copper = Colors.brown;

List<Widget> turnItemInventoryIntoDisplay(WidgetRef ref) {
  List<Widget> displays = [];
  if (ref.watch(inventoryProvider).items.isNotEmpty)
    for (Item item in ref.watch(inventoryProvider).items) {
      displays.add(ItemDisplay(
        guid: item.guid,
        isQuickSelect: item.isQuickSelect,
        name: item.name,
        itemType: item.itemCategory,
        itemAmount: item.amount,
      ));
    }
  displays.add(AddNewItem(typeName: 'Item'));
  return displays;
}

List<Widget> turnWeaponInventoryIntoDisplay(WidgetRef ref) {
  List<Widget> displays = [];
  if (ref.watch(inventoryProvider).weapons.isNotEmpty)
    for (Weapon weapon in ref.watch(inventoryProvider).weapons) {
      displays.add(WeaponDisplay(
        guid: weapon.guid,
        isQuickSelect: weapon.isQuickSelect,
        weaponType: weapon.weaponType,
        name: weapon.name,
        damage: weapon.damage,
      ));
    }
  displays.add(AddNewItem(typeName: 'Weapon'));
  return displays;
}

List<Widget> turnSpellInventoryIntoDisplay(WidgetRef ref) {
  List<Widget> displays = [];
  if (ref.watch(inventoryProvider).spells.isNotEmpty)
    for (Spell spell in ref.watch(inventoryProvider).spells) {
      displays.add(SpellDisplay(
        guid: spell.guid,
        isQuickSelect: spell.isQuickSelect,
        name: spell.name,
        level: spell.spellLevel,
        school: spell.school,
      ));
    }
  displays.add(AddNewItem(typeName: 'Spell'));
  return displays;
}

class InventoryPage extends ConsumerWidget {
  const InventoryPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Container(
      color: ref.watch(themeProvider).bgColor,
      child: Padding(
        padding: const EdgeInsets.fromLTRB(8.0, 0, 8.0, 0),
        child: ListView(
          children: [
            CurrencyDropdown(),
            BarDropDown(
                expandedProvider: weaponsExpanded,
                text: 'Weapons',
                items: turnWeaponInventoryIntoDisplay(ref)),
            BarDropDown(
                expandedProvider: spellsExpanded,
                text: 'Spells',
                items: turnSpellInventoryIntoDisplay(ref)),
            BarDropDown(
              expandedProvider: itemsExpanded,
              text: 'Items',
              items: turnItemInventoryIntoDisplay(ref),
            ),
          ],
        ),
      ),
    );
  }
}

class CurrencyDropdown extends ConsumerWidget {
  const CurrencyDropdown({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return BarDropDown(
      expandedProvider: moneyExpanded,
      text: 'Currency',
      items: [
        CurrencyItem(
            currencyName: 'Copper',
            iconColor: copper,
            provider: ref.read(playerProvider).copper),
        Divider(
          thickness: 2,
          indent: 20,
          endIndent: 20,
        ),
        CurrencyItem(
            currencyName: 'Silver',
            iconColor: silver,
            provider: ref.read(playerProvider).silver),
        Divider(
          thickness: 2,
          indent: 20,
          endIndent: 20,
        ),
        CurrencyItem(
            currencyName: 'Gold',
            iconColor: gold,
            provider: ref.read(playerProvider).gold),
        Divider(
          thickness: 2,
          indent: 20,
          endIndent: 20,
        ),
        CurrencyItem(
            currencyName: 'Platinum',
            iconColor: platinum,
            provider: ref.read(playerProvider).platinum),
      ],
    );
  }
}
