import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:player_watchtower/providers/theme.dart';

import '../../../functions/calculations.dart';
import '../../../global_components/stroke_text.dart';
import '../../../inventory_models/weapon.dart';
import '../../../providers/inventory.dart';

double height = 65;

class WeaponDisplay extends ConsumerWidget {
  final String guid;
  final bool isQuickSelect;
  final String damage;
  final String weaponType;
  final String name;
  final bool canDelete;
  WeaponDisplay({
    super.key,
    this.damage = '',
    this.isQuickSelect = false,
    this.canDelete = true,
    required this.weaponType,
    required this.guid,
    required this.name,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Column(
      children: [
        GestureDetector(
          onDoubleTap: () {
            ref
                .read(inventoryProvider.notifier)
                .toggleFlagWeaponForQuickSelect(guid: guid, ref: ref);
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
                          FontAwesomeIcons.crosshairs,
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
                              weaponType,
                              style: TextStyle(
                                  fontWeight: FontWeight.bold, fontSize: 12),
                            ),
                            Row(
                              crossAxisAlignment: CrossAxisAlignment.end,
                              children: [
                                FaIcon(
                                  FontAwesomeIcons.fire,
                                  color: Colors.orange,
                                  size: 16,
                                ),
                                Text(
                                  ' ' + damage,
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 12),
                                )
                              ],
                            )
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
                          padding: canDelete
                              ? const EdgeInsets.only(left: 6.0)
                              : const EdgeInsets.fromLTRB(6, 12, 0, 12),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              StrokeText(
                                textAlignment: TextAlign.start,
                                text: (canDelete)
                                    ? truncateWithEllipsis(
                                        (MediaQuery.of(context).size.width / 20)
                                            .toInt(),
                                        name)
                                    : truncateWithEllipsis(
                                        (MediaQuery.of(context).size.width / 15)
                                            .toInt(),
                                        name),
                                size: 16,
                              ),
                              if (canDelete)
                                GestureDetector(
                                  onLongPress: () {
                                    ref
                                        .read(inventoryProvider.notifier)
                                        .deleteWeaponFromInventory(
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
