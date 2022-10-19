import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:player_watchtower/components/bottom_bar.dart';
import 'package:player_watchtower/pages/Dice/dice.dart';
import 'package:player_watchtower/pages/Inventory/inventory.dart';
import 'package:player_watchtower/pages/Stats/stats.dart';
import 'QuickSelect/quick_select.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:player_watchtower/providers/page.dart';

class ScreenChassis extends ConsumerWidget {
  const ScreenChassis({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    const List<Widget> pages = [
      QuickSelectPage(),
      StatsPage(),
      InventoryPage(),
      DicePage()
    ];

    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: HexColor('423B52'),
        title: Stack(
          children: [
            Center(child: Text('PLAYER')),
            Container(
                alignment: Alignment.centerRight, child: Icon(Icons.settings))
          ],
        ),
      ),
      bottomNavigationBar: BottomBar(),
      body: pages[ref.watch(currentPage)],
    );
  }
}
