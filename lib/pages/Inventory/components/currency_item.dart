import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:player_watchtower/global_components/stroke_text.dart';
import 'package:player_watchtower/providers/theme.dart';

class CurrencyItem extends ConsumerWidget {
  final String currencyName;
  final Color iconColor;
  final int provider;
  const CurrencyItem(
      {super.key,
      required this.currencyName,
      required this.iconColor,
      required this.provider});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Column(
      children: [
        Row(
          children: [StrokeText(text: currencyName)],
        ),
        Container(
          height: 50,
          decoration: BoxDecoration(color: ref.watch(themeProvider).primary),
          child: Row(
            children: [
              FaIcon(
                FontAwesomeIcons.coins,
                color: iconColor,
              ),
              Text('$provider coins')
            ],
          ),
        )
      ],
    );
  }
}
