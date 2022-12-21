import 'package:flutter/material.dart' hide BoxDecoration, BoxShadow;
import 'package:flutter_guid/flutter_guid.dart';
import 'package:flutter_inset_box_shadow/flutter_inset_box_shadow.dart';
import 'package:flutter_bounce/flutter_bounce.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:player_watchtower/providers/inventory.dart';

import '../../../../../inventory_models/item.dart';
import '../../../../../providers/theme.dart';

class FormAddToButton extends ConsumerWidget {
  final String text;
  final StateProvider<String> name;
  final StateProvider<String> hint;
  final StateProvider<String> catergory;
  final StateProvider<int> amount;
  final StateProvider<String> description;
  final StateProvider<bool> addToQuickSelect;

  const FormAddToButton(
      {super.key,
      required this.text,
      required this.name,
      required this.hint,
      required this.catergory,
      required this.amount,
      required this.description,
      required this.addToQuickSelect});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 12.0),
      child: Bounce(
        duration: Duration(milliseconds: 300),
        onPressed: () {
          Item newItem = Item(
              guid: Guid.generate().toString(),
              name: ref.read(name),
              blurb: ref.read(hint),
              itemCategory: ref.read(catergory),
              amount: ref.read(amount),
              description: ref.read(description),
              isQuickSelect: ref.read(addToQuickSelect));

          ref
              .read(inventoryProvider.notifier)
              .addToInventory(addObject: newItem);
          ref.read(inventoryProvider.notifier).refreshItemQuickSelect();
          ref.read(catergory.notifier).state = 'Custom';
          ref.read(amount.notifier).state = 1;
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
                  'Add $text to Inventory',
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
