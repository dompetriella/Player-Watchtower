import 'package:bordered_text/bordered_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../../../providers/theme.dart';

class MoneyCard extends ConsumerWidget {
  const MoneyCard({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Padding(
      padding: const EdgeInsets.only(top: 8.0),
      child: Container(
        height: 50,
        decoration: BoxDecoration(
          color: ref.watch(themeProvider).cardBg,
          boxShadow: [ref.watch(themeProvider).shadow],
          border:
              Border.all(color: ref.watch(themeProvider).outline, width: 2.0),
          borderRadius: BorderRadius.circular(10),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Row(
              children: [
                FaIcon(
                  FontAwesomeIcons.coins,
                  color: Colors.grey[800],
                ),
                BorderedText(
                  strokeWidth: 5.0,
                  strokeColor: Colors.black,
                  child: Text(
                    '2',
                    style: TextStyle(
                        fontSize: 20,
                        letterSpacing: 1.2,
                        color: Colors.white,
                        fontWeight: FontWeight.bold),
                  ),
                ),
              ],
            ),
            Row(
              children: [
                FaIcon(
                  FontAwesomeIcons.coins,
                  color: Colors.yellow,
                ),
                BorderedText(
                  strokeWidth: 5.0,
                  strokeColor: Colors.black,
                  child: Text(
                    '32',
                    style: TextStyle(
                        fontSize: 20,
                        letterSpacing: 1.2,
                        color: Colors.white,
                        fontWeight: FontWeight.bold),
                  ),
                ),
              ],
            ),
            Row(
              children: [
                FaIcon(
                  FontAwesomeIcons.coins,
                  color: Colors.grey[400],
                ),
                BorderedText(
                  strokeWidth: 5.0,
                  strokeColor: Colors.black,
                  child: Text(
                    '2',
                    style: TextStyle(
                        fontSize: 20,
                        letterSpacing: 1.2,
                        color: Colors.white,
                        fontWeight: FontWeight.bold),
                  ),
                ),
              ],
            ),
            Row(
              children: [
                FaIcon(
                  FontAwesomeIcons.coins,
                  color: Colors.brown,
                ),
                BorderedText(
                  strokeWidth: 5.0,
                  strokeColor: Colors.black,
                  child: Text(
                    '100',
                    style: TextStyle(
                        fontSize: 20,
                        letterSpacing: 1.2,
                        color: Colors.white,
                        fontWeight: FontWeight.bold),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
