import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:player_watchtower/providers/inventory.dart';
import 'package:player_watchtower/providers/theme.dart';

import '../../../global_components/stroke_text.dart';

double height = 65;

class ItemDisplay extends ConsumerWidget {
  final String guid;
  final bool isQuickSelect;
  final String itemType;
  final int itemAmount;
  final String itemName;
  ItemDisplay({
    super.key,
    this.isQuickSelect = false,
    required this.guid,
    required this.itemType,
    required this.itemName,
    this.itemAmount = 1,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Column(
      children: [
        GestureDetector(
          onDoubleTap: () {
            ref
                .read(inventoryProvider.notifier)
                .toggleFlagItemForQuickSelect(guid: guid, ref: ref);
          },
          onLongPress: () {
            ref
                .read(inventoryProvider.notifier)
                .deleteItemFromInventory(guid: guid, ref: ref);
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
                          color: Colors.black,
                          borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(5),
                              topRight: Radius.circular(5),
                              bottomLeft: Radius.circular(5))),
                      child: Center(
                        child: FaIcon(
                          FontAwesomeIcons.kitchenSet,
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
                      Padding(
                        padding: const EdgeInsets.all(3.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              itemType,
                              style: TextStyle(fontWeight: FontWeight.bold),
                            ),
                            Text(
                              'In Inventory: x${itemAmount.toString()}',
                              style: TextStyle(fontWeight: FontWeight.bold),
                            ),
                          ],
                        ),
                      ),
                      Container(
                        width: double.infinity,
                        decoration: BoxDecoration(
                            color: ref.watch(themeProvider).primary,
                            borderRadius: BorderRadius.only(
                                topRight: Radius.circular(10),
                                bottomRight: Radius.circular(10))),
                        child: Align(
                          alignment: Alignment.centerLeft,
                          child: Padding(
                            padding: const EdgeInsets.fromLTRB(6, 10, 0, 10),
                            child: StrokeText(
                              textAlignment: TextAlign.start,
                              text: itemName,
                              size: 18,
                            ),
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
          thickness: 2,
          indent: 10,
          endIndent: 10,
        )
      ],
    );
  }
}
