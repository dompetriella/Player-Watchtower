import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:player_watchtower/pages/Dice/components/drawer/dice_drawer_modifier.dart';

import '../../../../providers/theme.dart';
import 'roll_history.dart';
import 'stats.dart';

class HistoryDrawer extends ConsumerWidget {
  const HistoryDrawer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    var drawerWidth = MediaQuery.of(context).size.width * .70;
    var drawerHeight = MediaQuery.of(context).size.height;
    return Container(
      width: MediaQuery.of(context).size.width * .80,
      height: MediaQuery.of(context).size.height,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.horizontal(
            left: Radius.circular(
                ref.watch(themeProvider).diceButtonBorderRadius)),
        color: ref.watch(themeProvider).diceDrawerBg,
      ),
      child:
          Column(children: [DrawerModifierBar(), RollHistoryBar(), StatsBar()]),
    );
  }
}
