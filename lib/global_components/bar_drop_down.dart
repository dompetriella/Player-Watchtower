import 'package:flutter/material.dart';
import "package:flutter_riverpod/flutter_riverpod.dart";
import 'package:player_watchtower/pages/Inventory/components/inventory_object_display.dart';
import 'package:player_watchtower/providers/theme.dart';
import 'package:bordered_text/bordered_text.dart';

class BarDropDown extends ConsumerWidget {
  final String text;
  final StateProvider<bool> expandedProvider;
  final List<Widget> items;
  final bool isPlayerValue;
  BarDropDown(
      {super.key,
      required this.text,
      required this.expandedProvider,
      this.isPlayerValue = false,
      this.items = const []});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Padding(
      padding: const EdgeInsets.only(top: 8.0),
      child: Column(
        children: [
          GestureDetector(
            onTap: () {
              ref.read(expandedProvider.notifier).state =
                  !ref.read(expandedProvider);
            },
            child: Container(
              height: isPlayerValue ? 75 : 50,
              decoration: BoxDecoration(
                  color: isPlayerValue
                      ? ref.watch(themeProvider).primary
                      : ref.watch(themeProvider).cardBg,
                  boxShadow: [ref.watch(themeProvider).shadow],
                  border: Border.all(
                      color: isPlayerValue
                          ? ref.watch(themeProvider).baseCardBg
                          : ref.watch(themeProvider).primary,
                      width: 2.0),
                  borderRadius: isPlayerValue
                      ? BorderRadius.circular(5)
                      : BorderRadius.circular(10)),
              child: Padding(
                padding: isPlayerValue
                    ? EdgeInsets.symmetric(horizontal: 16.0)
                    : EdgeInsets.symmetric(horizontal: 8.0),
                child: Stack(
                  children: [
                    Align(
                      alignment: isPlayerValue
                          ? Alignment.centerLeft
                          : Alignment.center,
                      child: BorderedText(
                        strokeWidth: 5.0,
                        strokeColor: ref.watch(themeProvider).outlineText,
                        child: Text(
                          text,
                          style: TextStyle(
                              fontSize: 30,
                              letterSpacing: 1.2,
                              color: ref.watch(themeProvider).textColor,
                              fontWeight: FontWeight.bold),
                        ),
                      ),
                    ),
                    Container(
                      alignment: isPlayerValue
                          ? Alignment.centerRight
                          : Alignment.centerLeft,
                      child: ref.watch(expandedProvider)
                          ? Icon(
                              Icons.expand_less,
                              size: isPlayerValue ? 35 : 30,
                              color: isPlayerValue
                                  ? ref.watch(themeProvider).baseCardBg
                                  : ref.watch(themeProvider).primary,
                            )
                          : Icon(
                              Icons.expand_more,
                              size: isPlayerValue ? 35 : 30,
                              color: isPlayerValue
                                  ? ref.watch(themeProvider).baseCardBg
                                  : ref.watch(themeProvider).primary,
                            ),
                    ),
                  ],
                ),
              ),
            ),
          ),
          if (ref.watch(expandedProvider))
            Padding(
              padding: const EdgeInsets.fromLTRB(10.0, 0, 10.0, 10),
              child: Container(
                width: double.infinity,
                decoration: BoxDecoration(
                    color: isPlayerValue
                        ? ref.watch(themeProvider).primary
                        : ref.watch(themeProvider).cardBg,
                    boxShadow: [ref.watch(themeProvider).shadow],
                    borderRadius: BorderRadius.only(
                        bottomLeft: Radius.circular(5),
                        bottomRight: Radius.circular(5))),
                child: Padding(
                  padding: const EdgeInsets.all(8),
                  child: Column(children: items),
                ),
              ),
            ),
        ],
      ),
    );
  }
}
