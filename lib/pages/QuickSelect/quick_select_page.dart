import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:player_watchtower/providers/theme.dart';
import 'package:player_watchtower/global_components/bar_drop_down.dart';
import 'package:player_watchtower/providers/page.dart';
import '../../functions/calculations.dart';
import '../../models/playerSkill.dart';
import '../../providers/player.dart';
import 'components/base_card.dart';
import 'components/money_card.dart';

class QuickSelectPage extends ConsumerWidget {
  QuickSelectPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Container(
      color: ref.watch(themeProvider).bgColor,
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: ListView(
          children: [
            BaseCard(),
            MoneyCard(),
            BarDropDown(
              expandedProvider: qsAbilitiesExpanded,
              text: 'Abilities',
            ),
            BarDropDown(
              expandedProvider: qsWeaponsExpanded,
              text: 'Weapons',
            ),
            BarDropDown(
              expandedProvider: qsSpellsExpanded,
              text: 'Spells',
            ),
          ],
        ),
      ),
    );
  }
}
