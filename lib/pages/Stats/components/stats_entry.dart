import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:player_watchtower/global_components/action_dialogs/base_dialog.dart';
import 'package:player_watchtower/global_components/stroke_text.dart';
import 'package:player_watchtower/providers/theme.dart';
import 'package:player_watchtower/functions/calculations.dart';

class StatsEntry extends ConsumerWidget {
  final String title;
  final String statPropertyName;
  final bool isModifier;
  final dynamic provider;
  final String editDialogType;
  const StatsEntry({
    super.key,
    required this.provider,
    required this.title,
    required this.statPropertyName,
    this.editDialogType = 'changeTo',
    this.isModifier = false,
  });
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return GestureDetector(
      onLongPress: () {
        showDialog(
            context: context,
            builder: (_) => BaseDialog(
                editDialogType: editDialogType,
                title: title,
                provider: provider,
                statPropertyName: statPropertyName,
                statPropertyType: provider.runtimeType));
      },
      child: Padding(
        padding: const EdgeInsets.fromLTRB(0, 6, 0, 6),
        child: Container(
          decoration: BoxDecoration(
              color: ref.watch(themeProvider).cardBg,
              borderRadius: BorderRadius.circular(10)),
          child: Padding(
            padding: const EdgeInsets.all(6.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Container(
                  width: 175,
                  child: Padding(
                    padding: const EdgeInsets.fromLTRB(0, 8, 0, 8),
                    child: StrokeText(
                      text: title,
                      size: 22,
                    ),
                  ),
                ),
                Container(
                  width: 160,
                  decoration: BoxDecoration(
                      color: ref.watch(themeProvider).bgColor,
                      border: Border.all(color: Colors.white),
                      borderRadius: BorderRadius.circular(10)),
                  child: Padding(
                    padding: const EdgeInsets.fromLTRB(5, 10, 5, 10),
                    child: StrokeText(
                      text: isModifier
                          ? displayValue(provider)
                          : provider.toString(),
                      size: 18,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
