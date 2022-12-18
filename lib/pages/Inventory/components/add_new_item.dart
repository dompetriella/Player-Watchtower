import 'package:flutter/material.dart' hide BoxDecoration, BoxShadow;
import 'package:flutter_guid/flutter_guid.dart';
import 'package:flutter_inset_box_shadow/flutter_inset_box_shadow.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:player_watchtower/global_components/multi_button.dart';
import 'package:player_watchtower/inventory_models/inventory.dart';
import 'package:player_watchtower/inventory_models/spell.dart';
import 'package:player_watchtower/providers/inventory.dart';

import '../../../inventory_models/item.dart';
import '../../../inventory_models/weapon.dart';
import '../../../providers/theme.dart';

class AddNewItem extends ConsumerWidget {
  final String typeName;
  const AddNewItem({super.key, required this.typeName});

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
                      switch (typeName) {
                        case 'Item':
                          ref.read(inventoryProvider.notifier).addItemToInventory(
                              itemObject: Item(
                                  guid: Guid.generate().toString(),
                                  name: 'Deck of Many Things',
                                  blurb: 'A deck with devastating consequences',
                                  itemCategory: 'Magic Item',
                                  amount: 1,
                                  description:
                                      'You pick the cards and some bad shit happens but sometimes good but usually bad almost always bad'));
                          break;
                        case 'Weapon':
                          ref.read(inventoryProvider.notifier).addWeaponToInventory(
                              weaponObject: Weapon(
                                  guid: Guid.generate().toString(),
                                  name: 'Crimson Crowbow',
                                  blurb:
                                      'A fiery red bow that shoots fire, 2d6 + 2',
                                  damage: '2d6 + 2',
                                  damageType: 'Fire',
                                  weaponType: 'Martial Ranged',
                                  weaponProperties: [
                                    'Ammunition (range 25/100)',
                                    'Light'
                                  ],
                                  description: ''));
                          break;
                        case 'Spell':
                          ref
                              .read(inventoryProvider.notifier)
                              .addSpellToInventory(
                                  spellObject: Spell(
                                guid: Guid.generate().toString(),
                                name: 'Dragonfrost',
                                blurb: 'Is a real icy boy',
                                spellLevel: 1,
                                castingTime: '1 action',
                                range: '60 Feet',
                                components: ['Vocal', 'Somatic'],
                                duration: 'Instantenous',
                                effectType: 'Cold',
                                school: 'Evocation',
                              ));
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
              'Add New $typeName',
              style: TextStyle(fontWeight: FontWeight.w900, fontSize: 20),
            ),
          ),
        ],
      ),
    );
  }
}
