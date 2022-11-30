import 'package:dropdown_button2/dropdown_button2.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:player_watchtower/global_components/stroke_text.dart';
import 'package:player_watchtower/providers/forms.dart';
import 'package:player_watchtower/providers/theme.dart';

class DropDownInput extends ConsumerWidget {
  final List<String> dropDownOptions;
  const DropDownInput({super.key, required this.dropDownOptions});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    List<DropdownMenuItem<dynamic>> createDropDownItems(
        List<String> dropDownOptions) {
      List<DropdownMenuItem> returnOptions = [];
      returnOptions.add(DropdownMenuItem(
        alignment: Alignment.center,
        value: 'Custom',
        child: DropDownItemChild(text: 'Custom'),
      ));
      dropDownOptions.forEach((element) {
        returnOptions.add(DropdownMenuItem(
          value: element,
          alignment: Alignment.center,
          child: DropDownItemChild(text: element),
        ));
      });
      return returnOptions;
    }

    return Padding(
      padding: const EdgeInsets.only(bottom: 16.0),
      child: Column(
        children: [
          StrokeText(text: "OPTIONS"),
          Padding(
            padding: const EdgeInsets.only(top: 4.0),
            child: Container(
                decoration: BoxDecoration(
                    color: ref.watch(themeProvider).primary,
                    borderRadius: BorderRadius.circular(5),
                    border: Border.all(color: Colors.white, width: 1)),
                child: DropdownButton2(
                  dropdownMaxHeight: 200,
                  dropdownDecoration:
                      BoxDecoration(color: ref.watch(themeProvider).primary),
                  iconEnabledColor: Colors.white,
                  isExpanded: true,
                  enableFeedback: false,
                  value: ref.watch(dropDownProvider) == ''
                      ? 'Custom'
                      : ref.watch(dropDownProvider),
                  items: createDropDownItems(dropDownOptions),
                  onChanged: (value) {
                    ref.read(dropDownProvider.notifier).state = value;
                    ref.read(changeToFinalProvider.notifier).state = value;
                  },
                )),
          ),
        ],
      ),
    );
  }
}

class DropDownItemChild extends ConsumerWidget {
  final String text;
  const DropDownItemChild({super.key, required this.text});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Padding(
      padding: const EdgeInsets.all(2.0),
      child: Container(
        decoration: BoxDecoration(
            color: ref.watch(themeProvider).bgColor,
            borderRadius: BorderRadius.circular(5),
            border: Border.all(color: Colors.white, width: 2)),
        child: Center(
          child: StrokeText(text: text),
        ),
      ),
    );
  }
}
