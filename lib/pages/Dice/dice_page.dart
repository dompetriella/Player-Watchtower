import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:player_watchtower/version.dart';
import 'package:sticky_headers/sticky_headers.dart';

import '../../providers/theme.dart';
import 'components/buttons_dialer.dart';
import 'components/display.dart';
import 'components/multiplier_controls.dart';
import 'components/roll_button.dart';

class DicePage extends ConsumerWidget {
  const DicePage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: ListView(
        children: [
          StickyHeader(
            header: Padding(
              padding: const EdgeInsets.only(bottom: 8.0),
              child: Container(
                color: ref.watch(themeProvider).bgColor,
                child: Column(
                  children: [
                    const Display(),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        MinusButton(),
                        const RollButton(),
                        PlusButton()
                      ],
                    ),
                  ],
                ),
              ),
            ),
            content: const ButtonsDialer(),
          ),
        ],
      ),
    );
  }
}
