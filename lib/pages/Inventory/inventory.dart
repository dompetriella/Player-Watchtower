import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:player_watchtower/pages/Inventory/components/add_new_item.dart';
import 'package:player_watchtower/providers/page.dart';

import '../../global_components/bar_drop_down.dart';
import '../../providers/theme.dart';

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
            BarDropDown(
              expandedProvider: moneyExpanded,
              text: 'Money',
            ),
            BarDropDown(
              expandedProvider: itemsExpanded,
              text: 'Items',
              items: [AddNewItem()],
            ),
            BarDropDown(
              expandedProvider: weaponsExpanded,
              text: 'Weapons',
              items: [AddNewItem()],
            ),
            BarDropDown(
              expandedProvider: spellsExpanded,
              text: 'Spells',
              items: [AddNewItem()],
            ),
          ],
        ),
      ),
    );
  }
}
