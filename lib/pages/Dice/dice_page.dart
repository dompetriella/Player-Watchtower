import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
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
      padding: const EdgeInsets.fromLTRB(8.0, 8.0, 8.0, 0),
      child: ListView(
        children: [
          StickyHeader(
            header: Container(
              color: ref.watch(themeProvider).bgColor,
              child: Column(
                children: [
                  const Display(),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Stack(
                      alignment: AlignmentDirectional.centerStart,
                      children: [
                        Align(
                            alignment: Alignment.centerLeft,
                            child: MinusButton()),
                        Align(
                            alignment: Alignment.centerRight,
                            child: PlusButton()),
                        Align(
                            alignment: Alignment.center,
                            child: const RollButton()),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            content: const ButtonsDialer(),
          ),
        ],
      ),
    );
  }
}
