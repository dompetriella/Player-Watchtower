import 'package:bordered_text/bordered_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:player_watchtower/providers/theme.dart';
import 'package:player_watchtower/global_components/bar_drop_down.dart';

import 'components/base_card.dart';
import 'components/money_card.dart';

class QuickSelectPage extends ConsumerWidget {
  QuickSelectPage({super.key});

  final abilitiesExpanded = StateProvider<bool>(
    (ref) => true,
  );

  final weaponsExpanded = StateProvider<bool>(
    (ref) => true,
  );

  final spellsExpanded = StateProvider<bool>(
    (ref) => true,
  );

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
              expandedProvider: abilitiesExpanded,
              text: 'Abilities',
            ),
            BarDropDown(
              expandedProvider: weaponsExpanded,
              text: 'Weapons',
            ),
            BarDropDown(
              expandedProvider: spellsExpanded,
              text: 'Spells',
            ),
          ],
        ),
      ),
    );
  }
}
