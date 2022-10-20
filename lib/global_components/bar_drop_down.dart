import 'package:flutter/material.dart';
import "package:flutter_riverpod/flutter_riverpod.dart";
import 'package:player_watchtower/global_components/info_item.dart';
import 'package:player_watchtower/providers/theme.dart';
import 'package:bordered_text/bordered_text.dart';

class BarDropDown extends ConsumerWidget {
  final String text;
  final StateProvider<bool> expandedProvider;
  BarDropDown({super.key, required this.text, required this.expandedProvider});

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
                  color: ref.watch(colorProvider).primary,
                  boxShadow: [ref.watch(colorProvider).hoverShadow],
                  border: Border.all(color: Colors.white, width: 2.0),
                  borderRadius: BorderRadius.circular(10)),
              child: Padding(
                padding: const EdgeInsets.fromLTRB(8.0, 0, 8, 0),
                child: Stack(
                  children: [
                    Center(
                        child: BorderedText(
                      strokeWidth: 5.0,
                      strokeColor: Colors.black,
                      child: Text(
                        text,
                        style: TextStyle(
                            fontSize: 30,
                            letterSpacing: 1.2,
                            color: Colors.white,
                            fontWeight: FontWeight.bold),
                      ),
                    )),
                    Container(
                      alignment: Alignment.centerLeft,
                      child: ref.watch(expandedProvider)
                          ? Icon(
                              Icons.expand_less,
                              size: 30,
                              color: Colors.white,
                            )
                          : Icon(
                              Icons.expand_more,
                              size: 30,
                              color: Colors.white,
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
                    color: ref.watch(colorProvider).secondary,
                    boxShadow: [ref.watch(colorProvider).hoverShadow],
                    borderRadius: BorderRadius.only(
                        bottomLeft: Radius.circular(5),
                        bottomRight: Radius.circular(5))),
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: InfoItem(),
                ),
              ),
            ),
        ],
      ),
    );
  }
}
