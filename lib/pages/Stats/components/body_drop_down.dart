import 'package:flutter/material.dart';
import "package:flutter_riverpod/flutter_riverpod.dart";
import 'package:player_watchtower/global_components/info_item.dart';
import 'package:player_watchtower/pages/Stats/components/stats_entry.dart';
import 'package:player_watchtower/providers/theme.dart';
import 'package:bordered_text/bordered_text.dart';

class BodyDropDown extends ConsumerWidget {
  final String text;
  final StateProvider<bool> expandedProvider;

  BodyDropDown({super.key, required this.text, required this.expandedProvider});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Column(
      children: [
        GestureDetector(
          onTap: () {
            ref.read(expandedProvider.notifier).state =
                !ref.read(expandedProvider);

            print(ref.read(expandedProvider));
          },
          child: Container(
            decoration: BoxDecoration(
                color: ref.watch(themeProvider).primary,
                boxShadow: [ref.watch(themeProvider).shadow],
                border: Border.all(color: Colors.white, width: 2.0),
                borderRadius: BorderRadius.circular(5)),
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Center(
                            child: BorderedText(
                          strokeWidth: 5.0,
                          strokeColor: Colors.black,
                          child: Text(
                            text,
                            style: TextStyle(
                                fontSize: 30,
                                letterSpacing: 1.2,
                                color: Colors.white,
                                fontWeight: FontWeight.bold),
                          ),
                        )),
                        Container(
                          alignment: Alignment.centerRight,
                          child: ref.watch(expandedProvider)
                              ? Icon(
                                  Icons.expand_less,
                                  size: 35,
                                  color: Colors.white,
                                )
                              : Icon(
                                  Icons.expand_more,
                                  size: 35,
                                  color: Colors.white,
                                ),
                        ),
                      ],
                    ),
                  ),
                  if (!ref.watch(expandedProvider))
                    Container(
                        child: Column(
                      children: [
                        StatsEntry(
                          title: 'Character Name',
                          entry: 'Oort Boneshaw',
                        ),
                        StatsEntry(
                          title: 'Level',
                          entry: '4',
                        ),
                        StatsEntry(
                          title: 'Experience',
                          entry: '2950',
                        ),
                        StatsEntry(
                          title: 'Class',
                          entry: 'Barbarian',
                        ),
                        StatsEntry(
                          title: 'Race',
                          entry: 'Goliath',
                        ),
                        StatsEntry(
                          title: 'Alignment',
                          entry: 'Chaotic Neutral',
                        ),
                        StatsEntry(
                          title: 'Background',
                          entry: 'Gladiator',
                        ),
                      ],
                    ))
                ],
              ),
            ),
          ),
        ),
      ],
    );
  }
}
