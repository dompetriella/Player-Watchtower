import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:player_watchtower/global_components/stroke_text.dart';
import 'package:player_watchtower/providers/theme.dart';

import '../../../global_components/action_dialogs/base_dialog.dart';

class CurrencyItem extends ConsumerWidget {
  final String currencyName;
  final Color iconColor;
  final dynamic provider;
  const CurrencyItem(
      {super.key,
      required this.currencyName,
      required this.iconColor,
      required this.provider});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(
            children: [
              StrokeText(
                text: currencyName,
                size: 25,
              )
            ],
          ),
        ),
        GestureDetector(
          onLongPress: () {
            showDialog(
                barrierDismissible: false,
                context: context,
                builder: (_) => BaseDialog(
                      editDialogType: 'increaseDecrease',
                      title: currencyName,
                      provider: provider,
                      statPropertyName: currencyName.toLowerCase(),
                      statPropertyType: int,
                      isIncreaseDecrease: true,
                      maximumIncreaseDecrease: 999999999,
                    ));
          },
          child: Container(
            decoration: BoxDecoration(
                color: ref.watch(themeProvider).primary,
                borderRadius: BorderRadius.circular(10),
                border: Border.all(
                    color: ref.watch(themeProvider).outline, width: 2)),
            child: Row(
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: FaIcon(
                    FontAwesomeIcons.coins,
                    color: iconColor,
                  ),
                ),
                Text(
                  provider == 1 ? '$provider coin' : '$provider coins',
                  style: TextStyle(
                      fontWeight: FontWeight.w700,
                      color: Colors.white,
                      fontSize: 24),
                )
              ],
            ),
          ),
        )
      ],
    );
  }
}
