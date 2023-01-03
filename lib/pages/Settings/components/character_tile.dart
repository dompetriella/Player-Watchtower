import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:player_watchtower/functions/database.dart';
import 'package:player_watchtower/providers/player.dart';
import 'package:player_watchtower/providers/theme.dart';

import '../../../models/player.dart';
import '../../../providers/page.dart';

createCharacterTiles(WidgetRef ref) {
  var box = Hive.box<Player>('player');
  ref.read(settingsPlayersProvider.notifier).state = [
    const CharacterTile(
      characterName: 'Add New',
      guid: '0',
      isNewCharacter: true,
    )
  ];
  for (Player value in box.values) {
    ref.read(settingsPlayersProvider.notifier).state = [
      ...ref.watch(settingsPlayersProvider),
      CharacterTile(
        characterName: value.characterName,
        guid: value.guid,
      )
    ];
  }
}

class CharacterTile extends ConsumerWidget {
  final String characterName;
  final String guid;
  final bool isNewCharacter;
  final Color backgroundColor;
  const CharacterTile(
      {super.key,
      required this.characterName,
      required this.guid,
      this.isNewCharacter = false,
      this.backgroundColor = Colors.lightBlue});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return GestureDetector(
      onTap: (() {
        if (isNewCharacter) {
          createNewCharacterEntry(ref);
          createCharacterTiles(ref);
        } else {
          var playerBox = Hive.box<Player>('player');
          var characterBox = Hive.box('characters');
          for (Player value in playerBox.values) {
            if (value.guid == guid) {
              ref.watch(playerProvider.notifier).state = playerBox.get(guid)!;
            }
          }
        }
      }),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: AnimatedContainer(
          duration: Duration(milliseconds: 400),
          decoration: BoxDecoration(
              color: isNewCharacter
                  ? Colors.white
                  : ref.watch(themeProvider).primary,
              border: Border.all(
                  color: isNewCharacter
                      ? ref.watch(themeProvider).primary
                      : Colors.white,
                  width: 2),
              boxShadow: [
                ref.watch(playerProvider).guid == guid
                    ? BoxShadow(
                        color: ref.watch(themeProvider).accent,
                        offset: Offset(0, 3),
                        blurRadius: 3,
                        spreadRadius: 1)
                    : ref.watch(themeProvider).shadow
              ],
              borderRadius: BorderRadius.circular(30)),
          child: Padding(
            padding: const EdgeInsets.all(8),
            child: Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                if (!isNewCharacter)
                  CircleAvatar(
                    radius: 15,
                    backgroundColor: backgroundColor,
                  ),
                Padding(
                  padding: const EdgeInsets.only(left: 4.0),
                  child: Text(
                    characterName,
                    style: TextStyle(
                        color: isNewCharacter ? Colors.black : Colors.white,
                        fontSize: 12),
                  ),
                ),
                if (isNewCharacter)
                  Padding(
                    padding: const EdgeInsets.only(left: 8.0),
                    child: AddNewCharacterIcon(),
                  )
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class AddNewCharacterIcon extends ConsumerWidget {
  const AddNewCharacterIcon({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Container(
      height: 30,
      width: 30,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(30),
          border: Border.all(color: ref.watch(themeProvider).primary)),
      child: Center(
        child: FaIcon(
          FontAwesomeIcons.plus,
          size: 20,
        ),
      ),
    );
  }
}
