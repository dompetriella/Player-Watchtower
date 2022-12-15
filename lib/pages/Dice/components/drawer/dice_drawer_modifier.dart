import 'package:flutter/material.dart' hide BoxDecoration, BoxShadow;
import 'package:flutter_inset_box_shadow/flutter_inset_box_shadow.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:player_watchtower/pages/Dice/components/drawer/modifier_switch_button.dart';
import 'package:player_watchtower/providers/dice_provider.dart';
import 'package:player_watchtower/providers/player.dart';

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
                                diceAbilityScore: DiceAbilityScore.strength,
                                value: ref.read(playerProvider).strength,
                                text: 'STR',
                              ),
                              ModifierSwitchButton(
                                diceAbilityScore: DiceAbilityScore.dexterity,
                                value: ref.read(playerProvider).dexterity,
                                text: 'DEX',
                              ),
                              ModifierSwitchButton(
                                diceAbilityScore: DiceAbilityScore.constitution,
                                value: ref.read(playerProvider).constitution,
                                text: 'CON',
                              ),
                            ],
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              ModifierSwitchButton(
                                diceAbilityScore: DiceAbilityScore.intellegence,
                                value: ref.read(playerProvider).intellegence,
                                text: 'INT',
                              ),
                              ModifierSwitchButton(
                                diceAbilityScore: DiceAbilityScore.wisdom,
                                value: ref.read(playerProvider).wisdom,
                                text: 'WIS',
                              ),
                              ModifierSwitchButton(
                                  diceAbilityScore: DiceAbilityScore.charisma,
                                  value: ref.read(playerProvider).charisma,
                                  text: 'CHA'),
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
