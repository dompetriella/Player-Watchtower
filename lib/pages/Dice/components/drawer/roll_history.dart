import 'package:flutter/material.dart' hide BoxDecoration, BoxShadow;
import 'package:flutter_inset_box_shadow/flutter_inset_box_shadow.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../../../../providers/dice_provider.dart';
import '../../../../providers/theme.dart';
import 'history_log.dart';

class RollHistoryBar extends ConsumerWidget {
  const RollHistoryBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    List<HistoryLog> getLoggingData() {
      List<HistoryLog> logsList = [];
      for (var i = 0; i < ref.watch(rollHistoryProvider).length; i++) {
        logsList.add(HistoryLog(
          rolledDiceList: ref.watch(rollHistoryProvider)[i],
          sequence: i,
        ));
      }
      return logsList.reversed.toList();
    }

    return Flexible(
      flex: 7,
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
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Text(
                        'Roll History',
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
                flex: 8,
                child: Container(
                  child: Padding(
                    padding: const EdgeInsets.fromLTRB(12.0, 0, 12, 12),
                    child: Container(
                        decoration: BoxDecoration(
                            boxShadow: [
                              ref.watch(themeProvider).columnShadow,
                              ref.watch(themeProvider).diceButtonOutline,
                            ],
                            borderRadius: BorderRadius.all(Radius.circular(ref
                                .watch(themeProvider)
                                .diceDrawerBorderRadius)),
                            color: ref
                                .watch(themeProvider)
                                .diceDrawerColumnContentBg),
                        child: Padding(
                          padding: const EdgeInsets.fromLTRB(0, 8, 0, 8),
                          child: ListView(
                              reverse: true, children: getLoggingData()),
                        )),
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
