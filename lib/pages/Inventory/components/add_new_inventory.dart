import 'package:flutter/material.dart' hide BoxDecoration, BoxShadow;
import 'package:flutter_guid/flutter_guid.dart';
import 'package:flutter_inset_box_shadow/flutter_inset_box_shadow.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:player_watchtower/dictionaries/inventory.dart';
import 'package:player_watchtower/global_components/multi_button.dart';
import 'package:player_watchtower/pages/Inventory/components/Forms/inventory_form.dart';

import '../../../functions/inventory.dart';
import '../../../providers/theme.dart';

class AddNewInventory extends ConsumerWidget {
  final InventoryType inventoryType;
  final bool isPlayerValue;
  const AddNewInventory(
      {super.key, required this.inventoryType, this.isPlayerValue = false});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Container(
      height: 50,
      width: double.infinity,
      decoration: BoxDecoration(
        color: isPlayerValue
            ? ref.watch(themeProvider).primary
            : ref.watch(themeProvider).cardBg,
      ),
      child: Stack(
        children: [
          Container(
            decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(10),
                border: Border.all(color: Colors.white, width: 2),
                boxShadow: [ref.watch(themeProvider).columnShadow]),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Padding(
                  padding: const EdgeInsets.all(2.0),
                  child: MultiButton(
                    size: 40,
                    icon: FontAwesomeIcons.plus,
                    bgColor: isPlayerValue
                        ? ref.watch(themeProvider).bgColor
                        : ref.watch(themeProvider).accent,
                    color: Colors.white,
                    onTap: () {
                      switch (inventoryType) {
                        case InventoryType.weapon:
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const InventoryForm(
                                    formType: InventoryType.weapon)),
                          );
                          break;
                        case InventoryType.spell:
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const InventoryForm(
                                    formType: InventoryType.spell)),
                          );
                          break;

                        case InventoryType.item:
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const InventoryForm(
                                    formType: InventoryType.item)),
                          );
                          break;
                        case InventoryType.ability:
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const InventoryForm(
                                    formType: InventoryType.ability)),
                          );
                          break;
                      }
                    },
                  ),
                )
              ],
            ),
          ),
          Align(
            alignment: Alignment.center,
            child: Text(
              'Add New ${stringNameFromInventoryType(inventoryType)}',
              style: TextStyle(fontWeight: FontWeight.w900, fontSize: 20),
            ),
          ),
        ],
      ),
    );
  }
}
