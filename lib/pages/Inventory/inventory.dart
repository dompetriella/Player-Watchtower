import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:player_watchtower/dictionaries/info.dart';
import 'package:player_watchtower/functions/calculations.dart';
import 'package:player_watchtower/global_components/action_dialogs/base_dialog.dart';
import 'package:player_watchtower/global_components/action_dialogs/components/drop_down_input.dart';
import 'package:player_watchtower/global_components/action_dialogs/types/changeTo_dialog.dart';
import 'package:player_watchtower/global_components/action_dialogs/types/drop_down_dialog.dart';
import 'package:player_watchtower/global_components/action_dialogs/types/skill_dialog.dart';
import 'package:player_watchtower/global_components/fillable_bar.dart';
import 'package:player_watchtower/global_components/stroke_text.dart';
import 'package:player_watchtower/pages/QuickSelect/components/saving_throw_card.dart';
import 'package:player_watchtower/providers/player.dart';
import 'package:player_watchtower/providers/theme.dart';
import 'package:player_watchtower/version.dart';

class InventoryPage extends ConsumerWidget {
  const InventoryPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Container(
      child: SkillDialog(
          isSkillProficient: false,
          playerSkillProvider: ref.read(playerProvider).acrobatics),
      // child: Center(child: Text('Inventory Screen: Coming v0.3')),
    );
  }
}
