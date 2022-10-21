import 'package:bordered_text/bordered_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:player_watchtower/providers/theme.dart';

class InfoItem extends ConsumerWidget {
  InfoItem({super.key});

  double height = 70;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Container(
      height: height,
      width: double.infinity,
      child: Row(
        children: [
          Container(
            height: height,
            width: height,
            decoration: BoxDecoration(
                color: Colors.black, borderRadius: BorderRadius.circular(10)),
            child: Center(
              child: FaIcon(
                FontAwesomeIcons.personRunning,
                color: Colors.white,
                size: height * .75,
              ),
            ),
          ),
          Expanded(
            child: Container(
              height: height * .65,
              width: 50,
              decoration: BoxDecoration(
                  color: ref.watch(colorProvider).primary,
                  borderRadius: BorderRadius.only(
                      topRight: Radius.circular(10),
                      bottomRight: Radius.circular(10))),
              child: Center(
                child: BorderedText(
                  strokeWidth: 5.0,
                  strokeColor: Colors.black,
                  child: Text(
                    'Running',
                    style: TextStyle(
                        fontSize: height / 3,
                        letterSpacing: 1.2,
                        color: Colors.white,
                        fontWeight: FontWeight.bold),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
