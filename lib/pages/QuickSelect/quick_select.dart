import 'package:bordered_text/bordered_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:player_watchtower/providers/player_stats.dart';
import 'package:player_watchtower/providers/theme.dart';
import 'package:player_watchtower/global_components/bar_drop_down.dart';

import 'components/base_card.dart';

class QuickSelectPage extends ConsumerWidget {
  QuickSelectPage({super.key});

  final abilitiesExpanded = StateProvider<bool>(
    (ref) => false,
  );

  final weaponsExpanded = StateProvider<bool>(
    (ref) => false,
  );

  final spellsExpanded = StateProvider<bool>(
    (ref) => false,
  );

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Container(
      color: ref.watch(colorProvider).bg,
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

class MoneyCard extends ConsumerWidget {
  const MoneyCard({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Padding(
      padding: const EdgeInsets.only(top: 8.0),
      child: Container(
        height: 50,
        decoration: BoxDecoration(
          color: ref.watch(colorProvider).secondary,
          boxShadow: [ref.watch(colorProvider).hoverShadow],
          border: Border.all(color: Colors.white, width: 2.0),
          borderRadius: BorderRadius.circular(10),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Row(
              children: [
                FaIcon(
                  FontAwesomeIcons.coins,
                  color: Colors.yellow,
                ),
                BorderedText(
                  strokeWidth: 5.0,
                  strokeColor: Colors.black,
                  child: Text(
                    '32',
                    style: TextStyle(
                        fontSize: 20,
                        letterSpacing: 1.2,
                        color: Colors.white,
                        fontWeight: FontWeight.bold),
                  ),
                ),
              ],
            ),
            Row(
              children: [
                FaIcon(
                  FontAwesomeIcons.coins,
                  color: Colors.grey.shade200,
                ),
                BorderedText(
                  strokeWidth: 5.0,
                  strokeColor: Colors.black,
                  child: Text(
                    '2',
                    style: TextStyle(
                        fontSize: 20,
                        letterSpacing: 1.2,
                        color: Colors.white,
                        fontWeight: FontWeight.bold),
                  ),
                ),
              ],
            ),
            Row(
              children: [
                FaIcon(
                  FontAwesomeIcons.coins,
                  color: Colors.brown,
                ),
                BorderedText(
                  strokeWidth: 5.0,
                  strokeColor: Colors.black,
                  child: Text(
                    '100',
                    style: TextStyle(
                        fontSize: 20,
                        letterSpacing: 1.2,
                        color: Colors.white,
                        fontWeight: FontWeight.bold),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
