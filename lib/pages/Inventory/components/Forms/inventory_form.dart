import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:player_watchtower/dictionaries/inventory.dart';
import 'package:player_watchtower/pages/Inventory/components/Forms/components/form_item_add_to_button.dart';
import 'package:player_watchtower/pages/Inventory/components/Forms/components/form_add_to_quickselect.dart';
import 'package:player_watchtower/pages/Inventory/components/Forms/components/form_drop_down_entry.dart';
import 'package:player_watchtower/pages/Inventory/components/Forms/components/line_entry_form.dart';
import 'package:player_watchtower/providers/theme.dart';

import 'components/form_spell_add_to_button.dart';
import 'components/form_title.dart';
import 'components/form_weapon_add_to_button.dart';

var name = StateProvider<String>(
  (ref) => '',
);

var hint = StateProvider<String>(
  (ref) => '',
);

var catergory = StateProvider<String>(
  (ref) => 'Custom',
);

var amount = StateProvider<int>(
  (ref) => 1,
);

var description = StateProvider<String>(
  (ref) => '',
);

var addToQuickSelect = StateProvider<bool>(
  (ref) => false,
);

// weapon state

var diceMultiplier = StateProvider<int>(
  (ref) => 1,
);

var diceDamage = StateProvider<String>(
  (ref) => '',
);

var modifierDamage = StateProvider<int>(
  (ref) => 0,
);

var weaponDamageType = StateProvider<String>(
  (ref) => 'Custom',
);

// spell state

var spellLevel = StateProvider<int>(
  (ref) => 0,
);

var school = StateProvider<String>(
  (ref) => 'Custom',
);

var duration = StateProvider<String>(
  (ref) => 'Custom',
);

List<DropdownMenuItem> convertListToDropDownItems(List<dynamic> inputList) {
  return inputList
      .map((e) => DropdownMenuItem(
            value: e,
            child: Text(e.toString()),
          ))
      .toList();
}

List<DropdownMenuItem> convertDictToDropDownItems(
    Map<String, dynamic> inputDict) {
  List<DropdownMenuItem> menuItems = [];
  inputDict.forEach((key, value) {
    menuItems.add(DropdownMenuItem(
      child: Text(key.toString()),
      value: value,
    ));
  });
  return menuItems;
}

List<DropdownMenuItem> createDropDownNumberList(int min, int max) {
  List<DropdownMenuItem> listOfNumbers = [];
  for (int i = min; i <= max; i++)
    listOfNumbers.add(DropdownMenuItem(
      child: Text(i.toString()),
      value: i,
    ));
  return listOfNumbers;
}

Widget switchForm(String formType) {
  switch (formType) {
    case 'Item':
      return ItemInputs();
    case 'Weapon':
      return WeaponInputs();
    case 'Spell':
      return SpellInputs();
    default:
      return ItemInputs();
  }
}

class InventoryForm extends ConsumerWidget {
  final String formType;
  const InventoryForm({super.key, required this.formType});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return SafeArea(
      child: Scaffold(
        body: Stack(
          children: [
            Container(
              decoration:
                  BoxDecoration(color: ref.watch(themeProvider).baseCardBg),
              child: ListView(
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(
                        vertical: 16.0, horizontal: 10),
                    child: Container(
                      width: double.infinity,
                      decoration: BoxDecoration(
                          color: ref.watch(themeProvider).primary,
                          borderRadius: BorderRadius.circular(5)),
                      child: Padding(
                        padding: const EdgeInsets.all(16.0),
                        child: switchForm(formType),
                      ),
                    ),
                  )
                ],
              ),
            ),
            GestureDetector(
              onTap: () => Navigator.pop(context),
              child: Align(
                alignment: Alignment.topRight,
                child: Container(
                  width: 65,
                  height: 65,
                  decoration: BoxDecoration(
                      color: ref.watch(themeProvider).accent,
                      borderRadius:
                          BorderRadius.only(bottomLeft: Radius.circular(10)),
                      boxShadow: [ref.watch(themeProvider).shadow]),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: const [
                      FaIcon(
                        FontAwesomeIcons.xmark,
                        size: 28,
                        color: Colors.white,
                      ),
                      Text(
                        'Cancel',
                        style: TextStyle(color: Colors.white, fontSize: 12),
                      )
                    ],
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}

class ItemInputs extends StatelessWidget {
  const ItemInputs({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(mainAxisAlignment: MainAxisAlignment.spaceEvenly, children: [
      FormTitle(formType: 'Item'),
      LineEntryForm(text: 'Name', provider: name),
      LineEntryForm(
        text: 'Hint',
        maxLines: 2,
        provider: hint,
      ),
      DropDownFormEntry(
          text: 'Catergory',
          provider: catergory,
          items: convertListToDropDownItems(itemCategories)),
      DropDownFormEntry(
          text: 'Amount',
          provider: amount,
          items: createDropDownNumberList(1, 99)),
      LineEntryForm(
        text: 'Description',
        maxLines: 15,
        provider: description,
      ),
      AddToQuickSelect(
        provider: addToQuickSelect,
      ),
      ItemFormAddToButton(
        name: name,
        hint: hint,
        catergory: catergory,
        amount: amount,
        description: description,
        addToQuickSelect: addToQuickSelect,
      )
    ]);
  }
}

class WeaponInputs extends StatelessWidget {
  const WeaponInputs({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(mainAxisAlignment: MainAxisAlignment.spaceEvenly, children: [
      FormTitle(formType: 'Weapon'),
      LineEntryForm(text: 'Name', provider: name),
      LineEntryForm(
        text: 'Hint',
        maxLines: 2,
        provider: hint,
      ),
      DropDownFormEntry(
          text: 'Catergory',
          provider: catergory,
          items: convertListToDropDownItems(weaponCatergories)),
      Row(
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          DropDownFormEntry(
              text: 'Damage',
              provider: diceMultiplier,
              items: createDropDownNumberList(1, 99)),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8.0),
            child: DropDownFormEntry(
                text: '',
                provider: diceDamage,
                items: convertListToDropDownItems(diceDamageTypes)),
          ),
          Padding(
            padding: const EdgeInsets.only(bottom: 20.0),
            child: FaIcon(
              FontAwesomeIcons.plus,
              color: Colors.white,
              size: 20,
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8.0),
            child: DropDownFormEntry(
                text: '',
                provider: modifierDamage,
                items: createDropDownNumberList(0, 99)),
          )
        ],
      ),
      DropDownFormEntry(
          text: 'Damage Type',
          provider: weaponDamageType,
          items: convertListToDropDownItems(damageTypes)),
      LineEntryForm(
        text: 'Description',
        maxLines: 15,
        provider: description,
      ),
      AddToQuickSelect(
        provider: addToQuickSelect,
      ),
      WeaponFormAddToButton(
        name: name,
        hint: hint,
        catergory: catergory,
        diceMultiplier: diceMultiplier,
        diceDamage: diceDamage,
        modifierDamage: modifierDamage,
        damageType: weaponDamageType,
        description: description,
        addToQuickSelect: addToQuickSelect,
      )
    ]);
  }
}

class SpellInputs extends StatelessWidget {
  const SpellInputs({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(mainAxisAlignment: MainAxisAlignment.spaceEvenly, children: [
      FormTitle(formType: 'Spell'),
      LineEntryForm(text: 'Name', provider: name),
      LineEntryForm(
        text: 'Hint',
        maxLines: 2,
        provider: hint,
      ),
      DropDownFormEntry(
          text: 'Level',
          provider: spellLevel,
          items: convertDictToDropDownItems(spellLevelsDict)),
      DropDownFormEntry(
          text: 'School',
          provider: school,
          items: convertListToDropDownItems(schoolsOfMagic)),
      DropDownFormEntry(
          text: 'Duration',
          provider: duration,
          items: convertListToDropDownItems(spellDurations)),
      LineEntryForm(
        text: 'Description',
        maxLines: 15,
        provider: description,
      ),
      AddToQuickSelect(
        provider: addToQuickSelect,
      ),
      SpellFormAddToButton(
        name: name,
        hint: hint,
        level: spellLevel,
        school: school,
        duration: duration,
        description: description,
        addToQuickSelect: addToQuickSelect,
      )
    ]);
  }
}
