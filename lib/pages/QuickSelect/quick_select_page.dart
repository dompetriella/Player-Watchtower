import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:player_watchtower/functions/inventory.dart';
import 'package:player_watchtower/pages/Inventory/inventory_page.dart';
import 'package:player_watchtower/providers/inventory.dart';
import 'package:player_watchtower/providers/theme.dart';
import 'package:player_watchtower/global_components/bar_drop_down.dart';
import 'package:player_watchtower/providers/page.dart';
import '../../dictionaries/inventory.dart';
import 'components/base_card.dart';
import 'components/money_card.dart';

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
            if (ref.watch(inventoryProvider).quickSelectWeapons.isNotEmpty)
              BarDropDown(
                  expandedProvider: weaponsExpanded,
                  text: 'Weapons',
                  items: turnInventoryObjectIntoDisplay(
                      ref: ref,
                      inventoryType: InventoryType.weapon,
                      isInventory: false)),
            if (ref.watch(inventoryProvider).quickSelectSpells.isNotEmpty)
              BarDropDown(
                  expandedProvider: spellsExpanded,
                  text: 'Spells',
                  items: turnInventoryObjectIntoDisplay(
                      ref: ref,
                      inventoryType: InventoryType.spell,
                      isInventory: false)),
            if (ref.watch(inventoryProvider).quickSelectItems.isNotEmpty)
              BarDropDown(
                expandedProvider: itemsExpanded,
                text: 'Items',
                items: turnInventoryObjectIntoDisplay(
                    ref: ref,
                    inventoryType: InventoryType.item,
                    isInventory: false),
              ),
          ],
        ),
      ),
    );
  }
}
