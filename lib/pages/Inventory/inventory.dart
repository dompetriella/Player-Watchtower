import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:player_watchtower/global_components/info_item.dart';
import 'package:player_watchtower/pages/Inventory/components/add_new_item.dart';
import 'package:player_watchtower/pages/Inventory/components/currency_item.dart';
import 'package:player_watchtower/providers/page.dart';
import 'package:player_watchtower/providers/player.dart';

import '../../global_components/bar_drop_down.dart';
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
            BarDropDown(
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
