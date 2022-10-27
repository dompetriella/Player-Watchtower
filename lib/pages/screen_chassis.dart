import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:player_watchtower/global_components/bottom_bar.dart';
import 'package:player_watchtower/global_components/stroke_text.dart';
import 'package:player_watchtower/pages/Dice/dice.dart';
import 'package:player_watchtower/pages/Inventory/inventory.dart';
import 'package:player_watchtower/pages/Stats/stats_page.dart';
import 'package:player_watchtower/providers/player_stats.dart';
import 'package:player_watchtower/providers/theme.dart';
import 'package:player_watchtower/themes.dart';
import 'QuickSelect/quick_select_page.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:player_watchtower/providers/page.dart';

class ScreenChassis extends ConsumerWidget {
  ScreenChassis({super.key});

  int index = 0;
  List<String> themesNames = ['Daylight', 'Twilight', 'Sunset', 'Midnight'];

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    List<Widget> pages = [
      QuickSelectPage(),
      StatsPage(),
      InventoryPage(),
      DicePage()
    ];

    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: ref.watch(themeProvider).appBarColor,
        title: Stack(
          children: [
            Center(
                child: StrokeText(
              text: ref.watch(playerProvider).characterName,
              size: 20,
            )),
            Container(
                alignment: Alignment.centerRight,
                child: GestureDetector(
                    onTap: () {
                      print(index);
                      print(themesNames[index]);
                      ref.watch(themeProvider.notifier).state =
                          themesDictionary[themesNames[index]]!;
                      index == themesNames.length - 1 ? index = 0 : index++;
                    },
                    child: Icon(Icons.settings)))
          ],
        ),
      ),
      bottomNavigationBar: BottomBar(),
      body: pages[ref.watch(currentPage)],
    );
  }
}
