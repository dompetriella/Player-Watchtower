import 'package:flutter/material.dart';
import "package:flutter_riverpod/flutter_riverpod.dart";
import 'package:player_watchtower/global_components/info_item.dart';
import 'package:player_watchtower/providers/theme.dart';
import 'package:bordered_text/bordered_text.dart';

class BarDropDown extends ConsumerWidget {
  final String text;
  final StateProvider<bool> expandedProvider;
  final List<Widget> items;
  BarDropDown(
      {super.key,
      required this.text,
      required this.expandedProvider,
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
              height: 50,
              decoration: BoxDecoration(
                  color: ref.watch(themeProvider).primary,
                  boxShadow: [ref.watch(themeProvider).shadow],
                  border: Border.all(color: Colors.white, width: 2.0),
                  borderRadius: BorderRadius.circular(10)),
              child: Padding(
                padding: const EdgeInsets.fromLTRB(8.0, 0, 8, 0),
                child: Stack(
                  children: [
                    Center(
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
                    )),
                    Container(
                      alignment: Alignment.centerLeft,
                      child: ref.watch(expandedProvider)
                          ? Icon(
                              Icons.expand_less,
                              size: 30,
                              color: ref.watch(themeProvider).textColor,
                            )
                          : Icon(
                              Icons.expand_more,
                              size: 30,
                              color: ref.watch(themeProvider).textColor,
                            ),
                    ),
                  ],
                ),
              ),
            ),
          ),
          if (ref.watch(expandedProvider))
            Padding(
              padding: const EdgeInsets.fromLTRB(10.0, 0, 10.0, 0),
              child: Container(
                width: double.infinity,
                decoration: BoxDecoration(
                    color: ref.watch(themeProvider).cardBg,
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
