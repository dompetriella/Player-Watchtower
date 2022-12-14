import 'package:flutter/material.dart' hide BoxDecoration, BoxShadow;
import 'package:flutter_guid/flutter_guid.dart';
import 'package:flutter_inset_box_shadow/flutter_inset_box_shadow.dart';
import 'package:flutter_bounce/flutter_bounce.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:player_watchtower/dictionaries/inventory.dart';
import 'package:player_watchtower/providers/forms.dart';
import 'package:player_watchtower/providers/inventory.dart';
import '../../../../../functions/inventory.dart';
import '../../../../../inventory_models/weapon.dart';
import '../../../../../providers/theme.dart';

class WeaponFormAddToButton extends ConsumerWidget {
  final StateProvider<String> name;
  final StateProvider<String> hint;
  final StateProvider<String> catergory;
  final StateProvider<int> diceMultiplier;
  final StateProvider<String> diceDamage;
  final StateProvider<int> modifierDamage;
  final StateProvider<String> damageType;
  final StateProvider<String> description;
  final StateProvider<bool> addToQuickSelect;
  final InventoryType inventoryType;

  const WeaponFormAddToButton(
      {super.key,
      this.inventoryType = InventoryType.weapon,
      required this.name,
      required this.hint,
      required this.catergory,
      required this.diceMultiplier,
      required this.diceDamage,
      required this.modifierDamage,
      required this.damageType,
      required this.description,
      required this.addToQuickSelect});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 12.0),
      child: Bounce(
        duration: Duration(milliseconds: 300),
        onPressed: () {
          String addDamage = ref.read(modifierDamage) > 0
              ? ' + ${ref.read(modifierDamage).toString()}'
              : '';
          Weapon newWeapon = Weapon(
              guid: Guid.generate().toString(),
              name: ref.read(name),
              blurb: ref.read(hint),
              weaponType: ref.read(catergory),
              damage: ref.read(diceMultiplier) == 1 &&
                      ref.read(diceDamage) == '' &&
                      ref.read(modifierDamage) == 0
                  ? ''
                  : '${ref.read(diceMultiplier)}${ref.read(diceDamage)}$addDamage',
              damageType: ref.read(damageType),
              description: ref.read(description),
              isQuickSelect: ref.read(addToQuickSelect),
              inventoryType: InventoryType.weapon.index);

          ref
              .read(inventoryProvider.notifier)
              .addToInventory(addObject: newWeapon);
          ref
              .read(inventoryProvider.notifier)
              .refreshQuickSelect(InventoryType.weapon);
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
