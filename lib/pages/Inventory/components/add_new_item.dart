import 'package:flutter/material.dart' hide BoxDecoration, BoxShadow;
import 'package:flutter_inset_box_shadow/flutter_inset_box_shadow.dart';
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
        color: ref.watch(themeProvider).cardBg,
      ),
      child: Stack(
        children: [
          Container(
            decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(10),
                border: Border.all(color: Colors.white, width: 3),
                boxShadow: [ref.watch(themeProvider).columnShadow]),
            child: Row(
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
          ),
          Align(
            alignment: Alignment.center,
            child: Text(
              'Coming Soon (v0.4)',
              style: TextStyle(fontWeight: FontWeight.w900, fontSize: 20),
            ),
          ),
        ],
      ),
    );
  }
}
