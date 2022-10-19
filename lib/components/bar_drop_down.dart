import 'package:flutter/material.dart';
import "package:flutter_riverpod/flutter_riverpod.dart";
import 'package:player_watchtower/providers/theme.dart';
import 'package:bordered_text/bordered_text.dart';

class BarDropDown extends ConsumerWidget {
  final String text;
  const BarDropDown({super.key, required this.text});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Padding(
      padding: const EdgeInsets.only(top: 8.0),
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
                child: Icon(
                  Icons.expand_more,
                  size: 30,
                  color: Colors.white,
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
