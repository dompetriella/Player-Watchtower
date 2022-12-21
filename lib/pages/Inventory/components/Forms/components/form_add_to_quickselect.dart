import 'package:flutter/material.dart' hide BoxDecoration, BoxShadow;
import 'package:flutter_inset_box_shadow/flutter_inset_box_shadow.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:player_watchtower/providers/theme.dart';

class AddToQuickSelect extends ConsumerWidget {
  final StateProvider<bool> provider;
  const AddToQuickSelect({super.key, required this.provider});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10.0),
      child: Align(
        alignment: Alignment.centerLeft,
        child: Container(
          width: 235,
          decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(10),
              boxShadow: [ref.watch(themeProvider).columnShadow]),
          child: CheckboxListTile(
            dense: true,
            visualDensity: VisualDensity.compact,
            controlAffinity: ListTileControlAffinity.leading,
            contentPadding: EdgeInsets.symmetric(vertical: 0, horizontal: 0),
            activeColor: ref.watch(themeProvider).accent,
            checkColor: Colors.white,
            enableFeedback: false,
            title: Text(
              'Add To Quick Select Menu?',
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            selected: ref.watch(provider),
            value: ref.watch(provider),
            onChanged: (value) {
              ref.watch(provider.notifier).state = !ref.read(provider);
            },
          ),
        ),
      ),
    );
  }
}
