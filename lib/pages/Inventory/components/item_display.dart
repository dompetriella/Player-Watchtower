import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:player_watchtower/functions/calculations.dart';
import 'package:player_watchtower/providers/inventory.dart';
import 'package:player_watchtower/providers/theme.dart';

import '../../../global_components/stroke_text.dart';

double height = 65;

class ItemDisplay extends ConsumerWidget {
  final String guid;
  final bool isQuickSelect;
  final bool hasEditingControl;
  final String itemType;
  final int itemAmount;
  final String name;
  ItemDisplay({
    super.key,
    this.isQuickSelect = false,
    this.hasEditingControl = false,
    required this.guid,
    required this.itemType,
    required this.name,
    this.itemAmount = 1,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Column(
      children: [
        GestureDetector(
          onTap: (() {
            isQuickSelect
                ? print('helloworld')
                : showDialog(
                    context: context,
                    builder: (builder) => Dialog(
                          child: InventoryEntryDisplay(),
                        ));
          }),
          onDoubleTap: () {
            if (!isQuickSelect)
              ref
                  .read(inventoryProvider.notifier)
                  .toggleFlagItemForQuickSelect(guid: guid, ref: ref);
          },
          onLongPress: () {
            isQuickSelect
                ? showDialog(context: context, builder: (builder) => Dialog())
                : print('helloworld');
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
                          crossAxisAlignment: CrossAxisAlignment.end,
                          children: [
                            Text(
                              itemType,
                              style: TextStyle(
                                  fontWeight: FontWeight.bold, fontSize: 12),
                            ),
                            Text(
                              'In Inventory: x${itemAmount.toString()}',
                              style: TextStyle(
                                  fontWeight: FontWeight.bold, fontSize: 12),
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
                        child: Padding(
                          padding: !isQuickSelect
                              ? const EdgeInsets.only(left: 6.0)
                              : const EdgeInsets.fromLTRB(6, 12, 0, 12),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              StrokeText(
                                textAlignment: TextAlign.start,
                                text: (!isQuickSelect)
                                    ? truncateWithEllipsis(20, name)
                                    : truncateWithEllipsis(25, name),
                                size: 16,
                              ),
                              if (!isQuickSelect)
                                GestureDetector(
                                  onLongPress: () {
                                    ref
                                        .read(inventoryProvider.notifier)
                                        .deleteItemFromInventory(
                                            guid: guid, ref: ref);
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
                                              width: 1, color: Colors.white)),
                                      child: Icon(
                                        Icons.delete_forever,
                                        color: ref.watch(themeProvider).cardBg,
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
          thickness: 2,
          indent: 10,
          endIndent: 10,
        )
      ],
    );
  }
}

class InventoryEntryDisplay extends ConsumerWidget {
  const InventoryEntryDisplay({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Stack(
      children: [
        Container(
          decoration: BoxDecoration(
              color: ref.watch(themeProvider).primary,
              borderRadius: BorderRadius.circular(10),
              border: Border.all(width: 1, color: Colors.white)),
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Container(
                decoration:
                    BoxDecoration(borderRadius: BorderRadius.circular(10)),
                child: Column(
                    mainAxisSize: MainAxisSize.min,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(bottom: 16.0),
                        child: Container(
                          width: 250,
                          decoration: BoxDecoration(
                            color: ref.watch(themeProvider).primary,
                          ),
                          child: Text(
                            'Really Noice Armour',
                            style: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.w900,
                                color: Colors.white),
                          ),
                        ),
                      ),
                      Container(
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(10)),
                        child: Column(
                          children: [
                            InventoryDisplayIndividualItem(
                              title: 'Catergory',
                              text: 'Equipment',
                            ),
                            InventoryDisplayIndividualItem(
                              title: 'Amount',
                              text: '5',
                            ),
                            InventoryDisplayIndividualItem(
                              title: 'Description',
                              text:
                                  'Oh boy here I go describing again in great detail man I love a good description here I go',
                            ),
                          ],
                        ),
                      )
                    ])),
          ),
        ),
        Positioned(
          top: 0,
          right: 0,
          child: GestureDetector(
            onTap: () => Navigator.pop(context),
            child: Container(
              width: 45,
              height: 45,
              decoration: BoxDecoration(
                  color: ref.watch(themeProvider).accent,
                  borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(10),
                  ),
                  boxShadow: [ref.watch(themeProvider).shadow]),
              child: Center(
                child: FaIcon(
                  FontAwesomeIcons.xmark,
                  size: 25,
                  color: Colors.white,
                ),
              ),
            ),
          ),
        )
      ],
    );
  }
}

class InventoryDisplayIndividualItem extends ConsumerWidget {
  final String title;
  final String text;
  const InventoryDisplayIndividualItem(
      {Key? key, this.title = '', this.text = ''})
      : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    if (title != '' && text != '') {
      return Padding(
        padding: const EdgeInsets.all(12.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 8.0, bottom: 4.0),
              child: Text(
                title,
                style: TextStyle(fontWeight: FontWeight.w900, fontSize: 12),
              ),
            ),
            Container(
              width: double.infinity,
              decoration: BoxDecoration(
                  color: ref.watch(themeProvider).baseCardBg,
                  borderRadius: BorderRadius.circular(10)),
              child: Padding(
                padding: const EdgeInsets.symmetric(
                    vertical: 10.0, horizontal: 10.0),
                child: Text(
                  text,
                  style: TextStyle(fontWeight: FontWeight.w400, fontSize: 14),
                ),
              ),
            )
          ],
        ),
      );
    }
    return SizedBox.shrink();
  }
}
