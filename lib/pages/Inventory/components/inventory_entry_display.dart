import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../../../providers/theme.dart';

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
                            InventoryObjectDisplayIndividualItem(
                              title: 'Catergory',
                              text: 'Equipment',
                            ),
                            InventoryObjectDisplayIndividualItem(
                              title: 'Amount',
                              text: '5',
                            ),
                            InventoryObjectDisplayIndividualItem(
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

class InventoryObjectDisplayIndividualItem extends ConsumerWidget {
  final String title;
  final String text;
  const InventoryObjectDisplayIndividualItem(
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
