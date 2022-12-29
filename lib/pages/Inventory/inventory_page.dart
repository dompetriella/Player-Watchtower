import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:player_watchtower/dictionaries/inventory.dart';
import 'package:player_watchtower/inventory_models/item.dart';
import 'package:player_watchtower/pages/Inventory/components/inventory_object_display.dart';
import 'package:player_watchtower/pages/Inventory/components/add_new_inventory.dart';
import 'package:player_watchtower/pages/Inventory/components/currency_item.dart';
import 'package:player_watchtower/pages/Inventory/components/spell_display.dart';
import 'package:player_watchtower/pages/Inventory/components/weapon_display.dart';
import 'package:player_watchtower/providers/inventory.dart';
import 'package:player_watchtower/providers/page.dart';
import 'package:player_watchtower/providers/player.dart';

import '../../functions/inventory.dart';
import '../../global_components/bar_drop_down.dart';
import '../../inventory_models/spell.dart';
import '../../inventory_models/weapon.dart';
import '../../providers/theme.dart';

Color platinum = Colors.grey[800]!;
Color gold = Colors.yellow;
Color silver = Colors.grey[400]!;
Color copper = Colors.brown;

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
              items: turnInventoryObjectIntoDisplay(
                  ref: ref, inventoryType: InventoryType.weapon),
            ),
            BarDropDown(
              expandedProvider: spellsExpanded,
              text: 'Spells',
              items: turnInventoryObjectIntoDisplay(
                  ref: ref, inventoryType: InventoryType.spell),
            ),
            BarDropDown(
              expandedProvider: itemsExpanded,
              text: 'Items',
              items: turnInventoryObjectIntoDisplay(
                  ref: ref, inventoryType: InventoryType.item),
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
