import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:player_watchtower/global_components/action_dialogs/types/changeto_dialog.dart';
import 'package:player_watchtower/global_components/action_dialogs/dialog-input.dart';
import 'package:player_watchtower/global_components/stroke_text.dart';
import 'package:player_watchtower/providers/theme.dart';

class EditDialog extends ConsumerWidget {
  final String title;
  final String editType;
  const EditDialog(
      {super.key, this.editType = "change-to", required this.title});

  Widget editTypeFilter(String editTypeSwitch) {
    switch (editTypeSwitch) {
      case 'change-to':
        return ChangeToDialog();
      case 'drop-down':
        return Text('drop-down');
      case 'modifier':
        return Text('modifier');
      case 'ability-score':
        return Text('ability-score');
      case 'skill':
        return Text('skill');
      case 'item':
        return Text('item');
      case 'weapon':
        return Text('weapon');
      case 'spell':
        return Text('spell');
      default:
        return Text("hello");
    }
  }

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return BackdropFilter(
      filter: ImageFilter.blur(sigmaX: 4, sigmaY: 4),
      child: AlertDialog(
        title: Center(
            child: StrokeText(
          text: title.toUpperCase(),
          size: 20,
        )),
        titlePadding: EdgeInsets.all(8),
        backgroundColor: Colors.transparent,
        elevation: 38,
        contentPadding: EdgeInsets.all(0),
        content: Container(
          height: 200,
          decoration: BoxDecoration(
              color: ref.watch(themeProvider).primary,
              border: Border.all(color: Colors.white),
              borderRadius: BorderRadius.circular(10)),
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Container(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  DialogInput(text: 'Current: '),
                  editTypeFilter(editType)
                ],
              ),
            ),
          ),
        ),
        actions: [
          GestureDetector(
            onTap: () => Navigator.pop(context),
            child: DialogActionButton(
              text: 'Cancel',
            ),
          ),
          DialogActionButton(text: 'OK')
        ],
      ),
    );
  }
}

class DialogActionButton extends ConsumerWidget {
  final String text;
  const DialogActionButton({Key? key, required this.text}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Container(
      height: 35,
      width: 80,
      decoration: BoxDecoration(
          color: ref.watch(themeProvider).bgColor,
          border: Border.all(color: Colors.white, width: 4),
          borderRadius: BorderRadius.circular(10)),
      child: StrokeText(
        text: text,
      ),
    );
  }
}
