import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:player_watchtower/global_components/multi_button.dart';

import '../../../providers/theme.dart';

class AddNewItem extends ConsumerWidget {
  const AddNewItem({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Container(
      height: 50,
      width: double.infinity,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(5),
          color: ref.watch(themeProvider).cardBg,
          border: Border.all(color: Colors.white, width: 2)),
      child: Stack(
        children: [
          Align(
            alignment: Alignment.center,
            child: Text(
              'Add New',
              style: TextStyle(fontWeight: FontWeight.w900, fontSize: 25),
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Padding(
                padding: const EdgeInsets.all(2.0),
                child: MultiButton(
                    size: 40,
                    icon: FontAwesomeIcons.plus,
                    bgColor: ref.watch(themeProvider).accent,
                    color: Colors.white),
              )
            ],
          ),
        ],
      ),
    );
  }
}
