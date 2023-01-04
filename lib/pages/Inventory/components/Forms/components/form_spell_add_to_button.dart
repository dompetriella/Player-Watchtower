import 'package:flutter/material.dart' hide BoxDecoration, BoxShadow;
import 'package:flutter_guid/flutter_guid.dart';
import 'package:flutter_inset_box_shadow/flutter_inset_box_shadow.dart';
import 'package:flutter_bounce/flutter_bounce.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:player_watchtower/dictionaries/inventory.dart';
import 'package:player_watchtower/pages/Inventory/components/Forms/inventory_form.dart';
import 'package:player_watchtower/providers/inventory.dart';

import '../../../../../functions/inventory.dart';
import '../../../../../inventory_models/item.dart';
import '../../../../../inventory_models/spell.dart';
import '../../../../../inventory_models/weapon.dart';
import '../../../../../providers/forms.dart';
import '../../../../../providers/theme.dart';

class SpellFormAddToButton extends ConsumerWidget {
  final StateProvider<String> name;
  final StateProvider<String> hint;
  final StateProvider<int> level;
  final StateProvider<String> school;
  final StateProvider<String> duration;
  final StateProvider<String> description;
  final StateProvider<bool> addToQuickSelect;
  final InventoryType inventoryType;

  const SpellFormAddToButton(
      {super.key,
      this.inventoryType = InventoryType.spell,
      required this.name,
      required this.hint,
      required this.level,
      required this.school,
      required this.duration,
      required this.description,
      required this.addToQuickSelect});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 12.0),
      child: Bounce(
        duration: Duration(milliseconds: 300),
        onPressed: () {
          Spell newSpell = Spell(
              guid: Guid.generate().toString(),
              name: ref.read(name),
              blurb: ref.read(hint),
              spellLevel: ref.read(level),
              school: ref.read(school),
              duration: ref.read(duration),
              description: ref.read(description),
              isQuickSelect: ref.read(
                addToQuickSelect,
              ),
              inventoryType: InventoryType.spell.index);

          ref
              .read(inventoryProvider.notifier)
              .addToInventory(addObject: newSpell);
          ref
              .read(inventoryProvider.notifier)
              .refreshQuickSelect(InventoryType.spell);
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
                  'Add ${stringNameFromInventoryType(inventoryType)} to Inventory',
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
