import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:player_watchtower/providers/theme.dart';

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
            Container(
              height: 350,
              decoration: BoxDecoration(
                  color: ref.watch(colorProvider).secondary,
                  boxShadow: [ref.watch(colorProvider).hoverShadow],
                  border: Border.all(color: Colors.white, width: 2.0),
                  borderRadius: BorderRadius.circular(5)),
            )
          ],
        ),
      ),
    );
  }
}
