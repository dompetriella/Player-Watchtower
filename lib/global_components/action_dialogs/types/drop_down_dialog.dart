import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:player_watchtower/global_components/action_dialogs/components/dialog_input.dart';
import 'package:player_watchtower/global_components/action_dialogs/components/drop_down_input.dart';
import 'package:player_watchtower/providers/forms.dart';

class DropDownDialog extends ConsumerWidget {
  final List<String> dropDownOptions;
  const DropDownDialog({super.key, required this.dropDownOptions});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Container(
      child: Column(children: [
        DropDownInput(
          dropDownOptions: dropDownOptions,
        ),
        if (ref.watch(dropDownProvider) == '' ||
            ref.watch(dropDownProvider) == 'Custom')
          DialogInput(text: '(Custom Value)')
      ]),
    );
  }
}
