import 'package:flutter/material.dart' hide BoxDecoration, BoxShadow;
import 'package:flutter_guid/flutter_guid.dart';
import 'package:flutter_inset_box_shadow/flutter_inset_box_shadow.dart';
import 'package:flutter_bounce/flutter_bounce.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:player_watchtower/dictionaries/inventory.dart';
import 'package:player_watchtower/inventory_models/inventory.dart';
import 'package:player_watchtower/pages/Inventory/components/Forms/inventory_form.dart';
import 'package:player_watchtower/providers/forms.dart';
import 'package:player_watchtower/providers/inventory.dart';
import 'package:player_watchtower/providers/player.dart';

import '../../../../../functions/inventory.dart';
import '../../../../../inventory_models/ability.dart';
import '../../../../../inventory_models/item.dart';
import '../../../../../providers/theme.dart';

class AbilityFormAddToButton extends ConsumerWidget {
  final StateProvider<String> name;
  final StateProvider<String> hint;
  final StateProvider<String> abilityCatergory;
  final StateProvider<String> description;
  final StateProvider<bool> addToQuickSelect;
  final InventoryType inventoryType;

  const AbilityFormAddToButton(
      {super.key,
      this.inventoryType = InventoryType.ability,
      required this.name,
      required this.hint,
      required this.abilityCatergory,
      required this.description,
      required this.addToQuickSelect});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 12.0),
      child: Bounce(
        duration: Duration(milliseconds: 300),
        onPressed: () {
          Ability newAbility = Ability(
              guid: Guid.generate().toString(),
              name: ref.read(name),
              blurb: ref.read(hint),
              abilityCatergory: ref.read(abilityCatergory),
              description: ref.read(description),
              isQuickSelect: ref.read(addToQuickSelect),
              inventoryType: InventoryType.ability.index);
          ref
              .read(inventoryProvider.notifier)
              .addToInventory(addObject: newAbility);
          ref
              .read(inventoryProvider.notifier)
              .refreshQuickSelect(inventoryType);
          clearInventoryForm(ref);
          Navigator.pop(context);
        },
        child: Padding(
          padding: const EdgeInsets.fromLTRB(20.0, 16.0, 20.0, 0),
          child: Container(
            width: double.infinity,
            decoration: BoxDecoration(
                color: ref.watch(themeProvider).accent,
                borderRadius: BorderRadius.circular(10),
                boxShadow: [ref.watch(themeProvider).innerShadow]),
            child: Center(
              child: Padding(
                padding: const EdgeInsets.symmetric(vertical: 18.0),
                child: Text(
                  'Add ${stringNameFromInventoryType(inventoryType)} to ${ref.read(playerProvider).characterName}',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 22,
                      fontWeight: FontWeight.w800),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
