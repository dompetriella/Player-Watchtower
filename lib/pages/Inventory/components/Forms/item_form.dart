import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:player_watchtower/pages/Inventory/components/Forms/components/form_add_to_button.dart';
import 'package:player_watchtower/pages/Inventory/components/Forms/components/form_add_to_quickselect.dart';
import 'package:player_watchtower/pages/Inventory/components/Forms/components/form_drop_down_entry.dart';
import 'package:player_watchtower/pages/Inventory/components/Forms/components/line_entry_form.dart';
import 'package:player_watchtower/providers/theme.dart';

import 'components/form_title.dart';

var name = StateProvider<String>(
  (ref) => '',
);

var hint = StateProvider<String>(
  (ref) => '',
);

var catergory = StateProvider<String>(
  (ref) => 'Custom',
);

var amount = StateProvider<int>(
  (ref) => 1,
);

var description = StateProvider<String>(
  (ref) => '',
);

var addToQuickSelect = StateProvider<bool>(
  (ref) => false,
);

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
                              LineEntryForm(text: 'Name', provider: name),
                              LineEntryForm(
                                text: 'Press-Hold Hint',
                                maxLines: 2,
                                provider: hint,
                              ),
                              DropDownFormEntry(
                                text: 'Catergory',
                                provider: catergory,
                                items: [
                                  DropdownMenuItem(
                                    child: Text('Custom'),
                                    value: 'Custom',
                                  ),
                                  DropdownMenuItem(
                                    child: Text('Equipment'),
                                    value: 'Equipment',
                                  ),
                                ],
                              ),
                              DropDownFormEntry(
                                text: 'Amount',
                                provider: amount,
                                items: [
                                  for (int i = 1; i < 100; i++)
                                    DropdownMenuItem(
                                      child: Text(i.toString()),
                                      value: i,
                                    )
                                ],
                              ),
                              LineEntryForm(
                                text: 'Description',
                                maxLines: 15,
                                provider: description,
                              ),
                              AddToQuickSelect(
                                provider: addToQuickSelect,
                              ),
                              FormAddToButton(
                                text: 'Item',
                                name: name,
                                hint: hint,
                                catergory: catergory,
                                amount: amount,
                                description: description,
                                addToQuickSelect: addToQuickSelect,
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
