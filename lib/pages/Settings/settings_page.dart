import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:player_watchtower/global_components/stroke_text.dart';
import 'package:player_watchtower/pages/Settings/components/character_tile.dart';
import 'package:player_watchtower/providers/page.dart';
import 'package:player_watchtower/providers/player.dart';

import '../../models/player.dart';
import '../../providers/theme.dart';

class SettingsPage extends ConsumerWidget {
  const SettingsPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: ref.watch(themeProvider).baseCardBg,
        body: Stack(
          children: [
            ListView(children: [
              SettingsTitle(),
              CurrentCharacterBar(),
              Wrap(
                children: ref.watch(settingsPlayersProvider),
              )
            ]),
            ExitButton()
          ],
        ),
      ),
    );
  }
}

class CurrentCharacterBar extends ConsumerWidget {
  const CurrentCharacterBar({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Container(
      decoration: BoxDecoration(
          color: ref.watch(themeProvider).bgColor,
          border: Border.symmetric(
              horizontal: BorderSide(color: Colors.white, width: 2))),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Center(
          child: Text(
            'Current: ${ref.watch(playerProvider).characterName}',
            style: TextStyle(fontWeight: FontWeight.w700),
          ),
        ),
      ),
    );
  }
}

class SettingsTitle extends StatelessWidget {
  const SettingsTitle({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Row(
        children: const [
          Padding(
            padding: EdgeInsets.all(8.0),
            child: FaIcon(
              FontAwesomeIcons.gear,
              size: 30,
            ),
          ),
          StrokeText(
            text: 'Settings',
            size: 30,
          ),
        ],
      ),
    );
  }
}

class ExitButton extends ConsumerWidget {
  const ExitButton({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Positioned(
      top: 0,
      right: 0,
      child: GestureDetector(
        onTap: () => Navigator.pop(context),
        child: Container(
          width: 45,
          height: 45,
          decoration: BoxDecoration(
              color: ref.watch(themeProvider).accent,
              borderRadius: const BorderRadius.only(
                bottomLeft: Radius.circular(10),
              ),
              boxShadow: [ref.watch(themeProvider).shadow]),
          child: const Center(
            child: FaIcon(
              FontAwesomeIcons.xmark,
              size: 25,
              color: Colors.white,
            ),
          ),
        ),
      ),
    );
  }
}
