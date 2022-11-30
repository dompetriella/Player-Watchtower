import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:player_watchtower/global_components/stroke_text.dart';
import 'package:player_watchtower/providers/forms.dart';
import 'package:player_watchtower/providers/theme.dart';

class DialogInput extends ConsumerWidget {
  final String text;
  final Type inputType;
  const DialogInput({super.key, required this.text, this.inputType = String});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Container(
      child: Column(
        children: [
          StrokeText(text: text.toUpperCase()),
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
                keyboardType: inputType == String
                    ? TextInputType.text
                    : TextInputType.number,
                onChanged: (value) {
                  ref.read(changeToProvider.notifier).state = value;
                  ref.read(changeToFinalProvider.notifier).state = value;
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
