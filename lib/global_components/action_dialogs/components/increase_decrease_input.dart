import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:player_watchtower/global_components/stroke_text.dart';
import 'package:player_watchtower/providers/forms.dart';
import 'package:player_watchtower/providers/theme.dart';

class IncreaseDecreaseInput extends ConsumerWidget {
  final bool isIncrease;
  const IncreaseDecreaseInput({super.key, this.isIncrease = true});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Container(
      child: Column(
        children: [
          StrokeText(text: isIncrease ? 'Increase by' : 'Decrease by'),
          Padding(
            padding: const EdgeInsets.only(top: 4.0, bottom: 4.0),
            child: Container(
              height: 50,
              decoration: BoxDecoration(
                  color: ref.watch(themeProvider).bgColor,
                  border: Border.all(color: Colors.white, width: 4),
                  borderRadius: BorderRadius.circular(10)),
              child: TextFormField(
                style: TextStyle(fontWeight: FontWeight.w900),
                keyboardType: TextInputType.number,
                onChanged: (value) {
                  isIncrease
                      ? ref.read(increaseValueProvider.notifier).state =
                          int.parse(value)
                      : ref.read(decreaseValueProvider.notifier).state =
                          int.parse(value);
                },
                textAlign: TextAlign.center,
                textAlignVertical: TextAlignVertical.center,
              ),
            ),
          )
        ],
      ),
    );
  }
}
