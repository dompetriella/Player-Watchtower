import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:player_watchtower/pages/Stats/components/body_drop_down.dart';
import 'package:player_watchtower/providers/theme.dart';

class StatsPage extends ConsumerWidget {
  StatsPage({super.key});

  final characterExpanded = StateProvider<bool>(
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
            BodyDropDown(text: "Character", expandedProvider: characterExpanded)
          ],
        ),
      ),
    );
  }
}
