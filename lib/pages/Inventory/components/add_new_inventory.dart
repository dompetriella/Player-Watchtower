import 'package:flutter/material.dart' hide BoxDecoration, BoxShadow;
import 'package:flutter_guid/flutter_guid.dart';
import 'package:flutter_inset_box_shadow/flutter_inset_box_shadow.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:player_watchtower/dictionaries/inventory.dart';
import 'package:player_watchtower/global_components/multi_button.dart';
import 'package:player_watchtower/inventory_models/inventory.dart';
import 'package:player_watchtower/inventory_models/spell.dart';
import 'package:player_watchtower/pages/Inventory/components/Forms/inventory_form.dart';
import 'package:player_watchtower/providers/inventory.dart';

import '../../../functions/inventory.dart';
import '../../../inventory_models/item.dart';
import '../../../inventory_models/weapon.dart';
import '../../../providers/theme.dart';

class AddNewInventory extends ConsumerWidget {
  final InventoryType inventoryType;
  const AddNewInventory({super.key, required this.inventoryType});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Container(
      height: 50,
      width: double.infinity,
      decoration: BoxDecoration(
        color: ref.watch(themeProvider).cardBg,
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
                    bgColor: ref.watch(themeProvider).accent,
                    color: Colors.white,
                    onTap: () {
                      switch (inventoryType) {
                        case InventoryType.item:
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const InventoryForm(
                                    formType: InventoryType.item)),
                          );
                          break;
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
                        default:
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
