import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:player_watchtower/global_components/stroke_text.dart';
import 'package:player_watchtower/providers/theme.dart';

class StatsEntry extends ConsumerWidget {
  final String title;
  final String entry;
  const StatsEntry({super.key, required this.entry, required this.title});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(0, 6, 0, 6),
      child: Container(
        decoration: BoxDecoration(
            color: ref.watch(themeProvider).cardBg,
            borderRadius: BorderRadius.circular(10)),
        child: Padding(
          padding: const EdgeInsets.all(6.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Container(
                width: 175,
                child: Padding(
                  padding: const EdgeInsets.fromLTRB(0, 8, 0, 8),
                  child: StrokeText(
                    text: title,
                    size: 22,
                  ),
                ),
              ),
              Container(
                width: 120,
                decoration: BoxDecoration(
                    color: ref.watch(themeProvider).bgColor,
                    borderRadius: BorderRadius.circular(10)),
                child: Padding(
                  padding: const EdgeInsets.fromLTRB(0, 8, 0, 8),
                  child: StrokeText(
                    text: entry,
                    size: 18,
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
