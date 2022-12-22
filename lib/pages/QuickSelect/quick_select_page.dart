import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:player_watchtower/providers/inventory.dart';
import 'package:player_watchtower/providers/theme.dart';
import 'package:player_watchtower/global_components/bar_drop_down.dart';
import 'package:player_watchtower/providers/page.dart';
import '../../inventory_models/item.dart';
import '../../inventory_models/spell.dart';
import '../../inventory_models/weapon.dart';
import '../Inventory/components/add_new_item.dart';
import '../Inventory/components/item_display.dart';
import '../Inventory/components/spell_display.dart';
import '../Inventory/components/weapon_display.dart';
import 'components/base_card.dart';
import 'components/money_card.dart';

List<Widget> turnWeaponQuickSelectIntoDisplay(WidgetRef ref) {
  List<Widget> displays = [];
  if (ref.watch(inventoryProvider).weapons.isNotEmpty)
    for (Weapon weapon in ref.watch(inventoryProvider).quickSelectWeapons) {
      displays.add(WeaponDisplay(
        guid: weapon.guid,
        canDelete: false,
        name: weapon.name,
        damage: weapon.damage,
      ));
    }
  return displays;
}

List<Widget> turnSpellQuickSelectIntoDisplay(WidgetRef ref) {
  List<Widget> displays = [];
  if (ref.watch(inventoryProvider).quickSelectSpells.isNotEmpty)
    for (Spell spell in ref.watch(inventoryProvider).spells) {
      displays.add(SpellDisplay(
        guid: spell.guid,
        canDelete: false,
        name: spell.name,
        level: spell.spellLevel,
        school: spell.school,
      ));
    }
  return displays;
}

List<Widget> turnItemQuickSelectIntoDisplay(WidgetRef ref) {
  List<Widget> displays = [];
  if (ref.watch(inventoryProvider).items.isNotEmpty)
    for (Item item in ref.watch(inventoryProvider).items) {
      displays.add(ItemDisplay(
        guid: item.guid,
        canDelete: false,
        name: item.name,
        itemType: item.itemCategory,
        itemAmount: item.amount,
      ));
    }
  return displays;
}

class QuickSelectPage extends ConsumerWidget {
  QuickSelectPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Container(
      color: ref.watch(themeProvider).bgColor,
      child: Padding(
        padding: const EdgeInsets.fromLTRB(8.0, 8.0, 8.0, 0),
        child: ListView(
          children: [
            const BaseCard(),
            const MoneyCard(),
            // BarDropDown(
            //   expandedProvider: qsAbilitiesExpanded,
            //   text: 'Abilities',
            // ),
            if (ref.watch(inventoryProvider).quickSelectWeapons.isNotEmpty)
              BarDropDown(
                  expandedProvider: qsWeaponsExpanded,
                  text: 'Weapons',
                  items: turnWeaponQuickSelectIntoDisplay(ref)),
            if (ref.watch(inventoryProvider).quickSelectSpells.isNotEmpty)
              BarDropDown(
                expandedProvider: qsSpellsExpanded,
                text: 'Spells',
                items: turnSpellQuickSelectIntoDisplay(ref),
              ),
            if (ref.watch(inventoryProvider).quickSelectItems.isNotEmpty)
              BarDropDown(
                expandedProvider: qsItemsExpanded,
                text: 'Items',
                items: turnItemQuickSelectIntoDisplay(ref),
              ),
          ],
        ),
      ),
    );
  }
}
