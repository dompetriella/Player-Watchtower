import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:player_watchtower/functions/calculations.dart';
import 'package:player_watchtower/pages/Inventory/components/inventory_entry_display.dart';
import 'package:player_watchtower/providers/inventory.dart';
import 'package:player_watchtower/providers/theme.dart';

import '../../../dictionaries/inventory.dart';
import '../../../global_components/stroke_text.dart';

double height = 65;

class InventoryObjectDisplay extends ConsumerWidget {
  final dynamic inventoryObject;
  final InventoryType inventoryType;
  final bool isQuickSelect;
  final bool isInventory;
  final bool isPlayerValue;
  InventoryObjectDisplay({
    super.key,
    required this.inventoryType,
    required this.inventoryObject,
    this.isQuickSelect = false,
    this.isPlayerValue = false,
    this.isInventory = true,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Column(
      children: [
        GestureDetector(
          onTap: () {
            showDialog(
                context: context,
                builder: (builder) => Dialog(
                        child: InventoryEntryDisplay(
                      inventoryObject: inventoryObject,
                    )));
          },
          onDoubleTap: () {
            if (isInventory) {
              ref.read(inventoryProvider.notifier).toggleFlagForQuickSelect(
                  guid: inventoryObject.guid,
                  ref: ref,
                  inventoryType: inventoryType);
            }
          },
          child: Padding(
            padding: const EdgeInsets.only(top: 8.0, bottom: 4.0),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Stack(
                  clipBehavior: Clip.none,
                  children: [
                    Container(
                      height: height * .95,
                      width: height,
                      decoration: BoxDecoration(
                          color: isPlayerValue
                              ? ref.watch(themeProvider).bgColor
                              : Colors.black,
                          borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(5),
                              topRight: Radius.circular(5),
                              bottomLeft: Radius.circular(5))),
                      child: Center(
                        child: FaIcon(
                          determineIconForInventory(inventoryType),
                          color: Colors.white,
                          size: height * .50,
                        ),
                      ),
                    ),
                    if (isQuickSelect)
                      Positioned(
                        left: -5,
                        top: -5,
                        child: Container(
                          width: 25,
                          height: 25,
                          decoration: BoxDecoration(
                              color: ref.watch(themeProvider).accent,
                              borderRadius: BorderRadius.circular(100)),
                          child: Center(
                            child: FaIcon(
                              FontAwesomeIcons.boltLightning,
                              size: 15,
                              color: Colors.white,
                            ),
                          ),
                        ),
                      )
                  ],
                ),
                Expanded(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      determineSubtitle(inventoryType, inventoryObject),
                      Container(
                        width: double.infinity,
                        decoration: BoxDecoration(
                            color: isPlayerValue
                                ? ref.watch(themeProvider).cardBg
                                : ref.watch(themeProvider).primary,
                            borderRadius: BorderRadius.only(
                                topRight: Radius.circular(10),
                                bottomRight: Radius.circular(10))),
                        child: Padding(
                          padding: isInventory
                              ? const EdgeInsets.only(left: 6.0)
                              : const EdgeInsets.fromLTRB(6, 12, 0, 12),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              StrokeText(
                                textAlignment: TextAlign.start,
                                text: (isInventory)
                                    ? truncateWithEllipsis(
                                        20, inventoryObject.name)
                                    : truncateWithEllipsis(
                                        25, inventoryObject.name),
                                size: 16,
                              ),
                              if (isInventory)
                                GestureDetector(
                                  onLongPress: () {
                                    ref
                                        .read(inventoryProvider.notifier)
                                        .deleteItemFromInventory(
                                            guid: inventoryObject.guid,
                                            ref: ref,
                                            inventoryType: inventoryType);
                                  },
                                  child: Padding(
                                    padding: const EdgeInsets.all(4.0),
                                    child: AnimatedContainer(
                                      duration: Duration(milliseconds: 200),
                                      decoration: BoxDecoration(
                                          color: Colors.transparent,
                                          borderRadius:
                                              BorderRadius.circular(5),
                                          border: Border.all(
                                              width: 1,
                                              color: isPlayerValue
                                                  ? ref
                                                      .watch(themeProvider)
                                                      .accent
                                                  : Colors.white)),
                                      child: Icon(
                                        Icons.delete_forever,
                                        color: isPlayerValue
                                            ? ref.watch(themeProvider).accent
                                            : ref.watch(themeProvider).cardBg,
                                        size: 35,
                                      ),
                                    ),
                                  ),
                                )
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
        Divider(
          color: isPlayerValue
              ? ref.watch(themeProvider).baseCardBg
              : ref.watch(themeProvider).primary,
          thickness: 2,
          indent: 10,
          endIndent: 10,
        )
      ],
    );
  }
}

IconData determineIconForInventory(InventoryType inventoryType) {
  switch (inventoryType) {
    case InventoryType.weapon:
      return FontAwesomeIcons.crosshairs;
    case InventoryType.spell:
      return FontAwesomeIcons.bookOpen;
    case InventoryType.item:
      return FontAwesomeIcons.kitchenSet;
    case InventoryType.ability:
      return FontAwesomeIcons.personRunning;
  }
}

class ItemDisplaySubtitle extends ConsumerWidget {
  final dynamic inventoryObject;
  const ItemDisplaySubtitle({super.key, required this.inventoryObject});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Padding(
      padding: const EdgeInsets.all(3.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          Text(
            inventoryObject.itemCategory,
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 12),
          ),
          Text(
            'In Inventory: x${inventoryObject.amount.toString()}',
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 12),
          ),
        ],
      ),
    );
  }
}

class WeaponDisplaySubtitle extends ConsumerWidget {
  final dynamic inventoryObject;
  const WeaponDisplaySubtitle({Key? key, required this.inventoryObject})
      : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Padding(
      padding: const EdgeInsets.all(3.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          Text(
            inventoryObject.weaponType,
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 12),
          ),
          Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              retrieveDamageTypeIconDict[inventoryObject.damageType] ??
                  retrieveDamageTypeIconDict['Custom']!,
              Text(
                ' ' + inventoryObject.damage,
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 12),
              )
            ],
          )
        ],
      ),
    );
  }
}

class SpellDisplaySubtitle extends ConsumerWidget {
  final dynamic inventoryObject;
  const SpellDisplaySubtitle({
    required this.inventoryObject,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Padding(
      padding: const EdgeInsets.all(3.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          Text(
            inventoryObject.spellLevel > 0
                ? 'Level ${inventoryObject.spellLevel} ${inventoryObject.school}'
                : 'Cantrip ${inventoryObject.school}',
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 12),
          ),
        ],
      ),
    );
  }
}

class AbilityDisplaySubtitle extends ConsumerWidget {
  final dynamic inventoryObject;
  const AbilityDisplaySubtitle({super.key, required this.inventoryObject});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Padding(
      padding: const EdgeInsets.all(3.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          Text(
            inventoryObject.abilityCatergory,
            style: TextStyle(
                fontWeight: FontWeight.bold, fontSize: 12, color: Colors.white),
          ),
        ],
      ),
    );
  }
}

Widget determineSubtitle(InventoryType inventoryType, dynamic inventoryObject) {
  switch (inventoryType) {
    case InventoryType.weapon:
      return WeaponDisplaySubtitle(inventoryObject: inventoryObject);
    case InventoryType.spell:
      return SpellDisplaySubtitle(inventoryObject: inventoryObject);
    case InventoryType.item:
      return ItemDisplaySubtitle(inventoryObject: inventoryObject);
    case InventoryType.ability:
      return AbilityDisplaySubtitle(inventoryObject: inventoryObject);
  }
}
