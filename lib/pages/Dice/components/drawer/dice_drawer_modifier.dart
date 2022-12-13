import 'package:flutter/material.dart' hide BoxDecoration, BoxShadow;
import 'package:flutter_inset_box_shadow/flutter_inset_box_shadow.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:player_watchtower/pages/Dice/components/drawer/modifier_switch_button.dart';

import '../../../../providers/theme.dart';

class DrawerModifierBar extends ConsumerWidget {
  const DrawerModifierBar({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Flexible(
      flex: 2,
      child: Padding(
        padding: const EdgeInsets.fromLTRB(16.0, 16, 16.0, 0),
        child: Container(
          decoration: BoxDecoration(
              color: ref.watch(themeProvider).diceDrawerColumnBg,
              borderRadius: BorderRadius.all(Radius.circular(
                  ref.watch(themeProvider).diceDrawerBorderRadius)),
              boxShadow: [ref.watch(themeProvider).shadow]),
          child: Column(
            children: [
              Expanded(
                flex: 1,
                child: Padding(
                  padding: const EdgeInsets.fromLTRB(12, 0, 12, 8),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Text(
                        'Stats Modifiers',
                        style: TextStyle(
                            fontSize: MediaQuery.of(context).size.height * 0.03,
                            fontWeight: FontWeight.w900,
                            color: ref
                                .watch(themeProvider)
                                .diceDrawerColumnTextColor),
                      )
                    ],
                  ),
                ),
              ),
              Expanded(
                flex: 2,
                child: Padding(
                  padding: const EdgeInsets.fromLTRB(8.0, 2, 8.0, 8.0),
                  child: Container(
                    decoration: BoxDecoration(
                        boxShadow: [
                          ref.watch(themeProvider).columnShadow,
                          ref.watch(themeProvider).diceButtonOutline,
                        ],
                        borderRadius: BorderRadius.all(Radius.circular(
                            ref.watch(themeProvider).diceDrawerBorderRadius)),
                        color:
                            ref.watch(themeProvider).diceDrawerColumnContentBg),
                    child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              ModifierSwitchButton(
                                text: 'STR',
                              ),
                              ModifierSwitchButton(text: 'DEX'),
                              ModifierSwitchButton(text: 'CON'),
                            ],
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              ModifierSwitchButton(
                                text: 'INT',
                              ),
                              ModifierSwitchButton(text: 'WIS'),
                              ModifierSwitchButton(text: 'CHA'),
                            ],
                          ),
                        ]),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
