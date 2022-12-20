import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:player_watchtower/pages/Inventory/components/Forms/components/one_line_form_entry.dart';
import 'package:player_watchtower/providers/theme.dart';

import 'components/form_title.dart';

class ItemForm extends ConsumerWidget {
  const ItemForm({super.key});

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
                        child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              FormTitle(formType: 'Item'),
                              LineEntryForm(text: 'Name'),
                              LineEntryForm(
                                text: 'Hint',
                                maxLines: 2,
                              ),
                              LineEntryForm(
                                text: 'Description',
                                maxLines: 15,
                              )
                            ]),
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
