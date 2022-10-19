import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:player_watchtower/providers/theme.dart';
import 'package:player_watchtower/components/bar_drop_down.dart';

import 'components/base_card.dart';

class QuickSelectPage extends ConsumerWidget {
  const QuickSelectPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Container(
      color: ref.watch(colorProvider).bg,
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: ListView(
          children: [
            BaseCard(),
            Padding(
              padding: const EdgeInsets.only(top: 8.0),
              child: Container(
                height: 50,
                decoration: BoxDecoration(
                    color: ref.watch(colorProvider).secondary,
                    boxShadow: [ref.watch(colorProvider).hoverShadow],
                    border: Border.all(color: Colors.white, width: 2.0),
                    borderRadius: BorderRadius.circular(10)),
              ),
            ),
            BarDropDown(
              text: 'Abilities',
            ),
            BarDropDown(text: 'Weapons'),
            BarDropDown(text: 'Spells'),
          ],
        ),
      ),
    );
  }
}
