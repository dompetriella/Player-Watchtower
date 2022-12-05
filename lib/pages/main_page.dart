import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:player_watchtower/functions/database.dart';
import 'package:player_watchtower/global_components/bottom_bar.dart';
import 'package:player_watchtower/global_components/stroke_text.dart';
import 'package:player_watchtower/pages/Dice/components/drawer/history_drawer.dart';
import 'package:player_watchtower/pages/Dice/dice_page.dart';
import 'package:player_watchtower/pages/Inventory/inventory.dart';
import 'package:player_watchtower/pages/QuickSelect/drawer/skills_drawer.dart';
import 'package:player_watchtower/pages/Stats/stats_page.dart';
import 'package:player_watchtower/providers/player.dart';
import 'package:player_watchtower/providers/theme.dart';
import 'package:player_watchtower/themes.dart';
import '../functions/calculations.dart';
import 'QuickSelect/quick_select_page.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:player_watchtower/providers/page.dart';

class MainPage extends ConsumerStatefulWidget {
  const MainPage({super.key});

  @override
  ConsumerState<MainPage> createState() => _MainPageState();
}

class _MainPageState extends ConsumerState<MainPage> {
  @override
  void initState() {
    // Hive.deleteBoxFromDisk('player');
    // getInitState(ref);
    super.initState();
  }

  int index = 0;
  List<String> themesNames = ['Daylight', 'Twilight', 'Midnight'];

  @override
  Widget build(BuildContext context) {
    List<Widget> pages = [
      QuickSelectPage(),
      StatsPage(),
      InventoryPage(),
      DicePage()

      // Container(
      //   color: Colors.lightBlue,
      //   child: Center(
      //       child: Text(
      //     'Dice Roller\nComing in v0.2a',
      //     textAlign: TextAlign.center,
      //   )),
      // )
    ];

    double width = MediaQuery.of(context).size.width;

    return Scaffold(
        backgroundColor: ref.watch(themeProvider).bgColor,
        drawerEnableOpenDragGesture: ref.watch(currentPage) == 0 ? true : false,
        endDrawerEnableOpenDragGesture:
            ref.watch(currentPage) == 3 ? true : false,
        appBar: AppBar(
          actions: <Widget>[Container()],
          automaticallyImplyLeading: false,
          centerTitle: true,
          backgroundColor: ref.watch(themeProvider).appBarColor,
          title: Stack(
            children: [
              Center(
                  child: StrokeText(
                text:
                    '${truncateWithEllipsis(12, ref.watch(playerProvider).characterName)} - Lv.${getPlayerLevelByExp(ref.watch(playerProvider).exp)}',
                size: width / 18,
              )),
              if (ref.watch(currentPage) == 0)
                Builder(builder: (context) {
                  return GestureDetector(
                      onPanUpdate: (swipe) {
                        if (swipe.delta.dx > 0) {
                          Scaffold.of(context).openDrawer();
                        }
                      },
                      onTap: () => Scaffold.of(context).openDrawer(),
                      child: FaIcon(
                        FontAwesomeIcons.personCircleCheck,
                        color: ref.watch(themeProvider).appBarIconColor,
                      ));
                }),
              ref.watch(currentPage) == 3
                  ? Builder(builder: (context) {
                      return Container(
                          alignment: Alignment.centerRight,
                          child: GestureDetector(
                              onPanUpdate: (swipe) {
                                if (swipe.delta.dx < 0) {
                                  Scaffold.of(context).openEndDrawer();
                                }
                              },
                              onTap: () => Scaffold.of(context).openEndDrawer(),
                              child: FaIcon(
                                FontAwesomeIcons.dice,
                                color: ref.watch(themeProvider).appBarIconColor,
                              )));
                    })
                  : Container(
                      alignment: Alignment.centerRight,
                      child: GestureDetector(
                          onTap: () {
                            ref.watch(themeProvider.notifier).state =
                                themesDictionary[themesNames[index]]!;
                            index == themesNames.length - 1
                                ? index = 0
                                : index++;
                          },
                          child: Icon(
                            Icons.settings,
                            color: ref.watch(themeProvider).appBarIconColor,
                          ))),
            ],
          ),
        ),
        drawer: SkillsDrawer(),
        endDrawer: HistoryDrawer(),
        bottomNavigationBar: BottomBar(),
        body: PageView(
          controller: pageController,
          onPageChanged: (index) =>
              ref.read(currentPage.notifier).state = index,
          children: pages,
        ));
  }
}
