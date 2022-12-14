import 'package:flutter/material.dart' hide BoxDecoration, BoxShadow;
import 'package:flutter_inset_box_shadow/flutter_inset_box_shadow.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../../../../providers/theme.dart';
import 'stats_log.dart';

class StatsBar extends ConsumerWidget {
  const StatsBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Flexible(
      flex: 2,
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Stack(
          children: [
            Container(
              decoration: BoxDecoration(
                  color: ref.watch(themeProvider).diceDrawerColumnBg,
                  borderRadius: BorderRadius.all(Radius.circular(
                      ref.watch(themeProvider).diceDrawerBorderRadius)),
                  boxShadow: [ref.watch(themeProvider).innerShadow]),
              child: Column(
                children: [
                  Expanded(
                    flex: 3,
                    child: Container(
                      padding: const EdgeInsets.fromLTRB(12, 8, 12, 8),
                    ),
                  ),
                  Expanded(
                    flex: 7,
                    child: Container(
                      child: Padding(
                        padding: const EdgeInsets.fromLTRB(8.0, 8, 8, 8),
                        child: Container(
                          decoration: BoxDecoration(
                              boxShadow: [
                                ref.watch(themeProvider).columnShadow,
                                ref.watch(themeProvider).diceButtonOutline
                              ],
                              borderRadius: BorderRadius.all(Radius.circular(ref
                                  .watch(themeProvider)
                                  .themeBarBorderRadius)),
                              color: ref
                                  .watch(themeProvider)
                                  .diceDrawerColumnContentBg),
                          child: Padding(
                              padding: const EdgeInsets.fromLTRB(2, 5, 2, 5),
                              child: ListView(
                                  scrollDirection: Axis.horizontal,
                                  children: const [
                                    StatsLog(
                                      diceValue: '20',
                                    ),
                                    StatsLog(diceValue: '6'),
                                    StatsLog(diceValue: '4'),
                                    StatsLog(diceValue: '8'),
                                    StatsLog(diceValue: '10'),
                                    StatsLog(diceValue: '12'),
                                    StatsLog(diceValue: '100')
                                  ])),
                        ),
                      ),
                    ),
                  )
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Align(
                alignment: Alignment.topCenter,
                child: Text(
                  'Stats',
                  style: TextStyle(
                      fontSize: MediaQuery.of(context).size.height * 0.03,
                      fontWeight: FontWeight.w900,
                      color:
                          ref.watch(themeProvider).diceDrawerColumnTextColor),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
