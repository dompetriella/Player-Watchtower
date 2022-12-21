import 'package:dropdown_button2/dropdown_button2.dart';
import 'package:flutter/material.dart' hide BoxDecoration, BoxShadow;
import 'package:flutter_inset_box_shadow/flutter_inset_box_shadow.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../../../providers/theme.dart';

class DropDownFormEntry extends ConsumerWidget {
  final String text;
  StateProvider<dynamic> provider;
  final List<DropdownMenuItem<dynamic>> items;
  DropDownFormEntry(
      {super.key,
      required this.text,
      required this.provider,
      required this.items});

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
          Align(
            alignment: Alignment.centerLeft,
            child: Container(
                height: 37,
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(10),
                    boxShadow: [ref.watch(themeProvider).columnShadow]),
                child: DropdownButton2(
                    enableFeedback: false,
                    dropdownMaxHeight: 130,
                    items: items,
                    value: ref.watch(provider),
                    onChanged: (value) {
                      print(value);
                      ref.watch(provider.notifier).state = value;
                    })),
          )
        ],
      ),
    );
  }
}
