import 'package:flutter/material.dart' hide BoxDecoration, BoxShadow;
import 'package:flutter_inset_box_shadow/flutter_inset_box_shadow.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:player_watchtower/providers/theme.dart';

class LineEntryForm extends ConsumerWidget {
  final String text;
  final int maxLines;
  final StateProvider<dynamic> provider;
  const LineEntryForm(
      {super.key,
      required this.text,
      required this.provider,
      this.maxLines = 1});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.fromLTRB(12.0, 0, 0, 4),
            child: Text(
              text,
              style: TextStyle(color: Colors.white, fontSize: 12),
            ),
          ),
          Container(
            decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(10),
                boxShadow: [ref.watch(themeProvider).columnShadow]),
            child: TextField(
              minLines: 1,
              maxLines: maxLines,
              cursorColor: ref.watch(themeProvider).appBarColor,
              style: TextStyle(fontSize: 16),
              decoration: InputDecoration(
                  isDense: true,
                  focusedBorder: UnderlineInputBorder(
                      borderSide: BorderSide(color: Colors.transparent)),
                  contentPadding:
                      EdgeInsets.symmetric(vertical: 10, horizontal: 10)),
              onChanged: (value) => ref.watch(provider.notifier).state = value,
            ),
          )
        ],
      ),
    );
  }
}
