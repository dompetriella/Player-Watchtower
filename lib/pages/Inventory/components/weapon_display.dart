import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:player_watchtower/providers/theme.dart';

import '../../../global_components/stroke_text.dart';

double height = 65;

class WeaponDisplay extends ConsumerWidget {
  final String guid;
  final String damage;
  final String name;
  WeaponDisplay({
    super.key,
    this.damage = '',
    required this.guid,
    required this.name,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Column(
      children: [
        Padding(
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
                        children: [
                          Text(
                            'Martial Weapon',
                            style: TextStyle(fontWeight: FontWeight.bold),
                          ),
                          Row(
                            crossAxisAlignment: CrossAxisAlignment.end,
                            children: [
                              FaIcon(
                                FontAwesomeIcons.fire,
                                color: Colors.orange,
                                size: 20,
                              ),
                              Text(
                                ' ' + damage,
                                style: TextStyle(fontWeight: FontWeight.bold),
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
                      child: Align(
                        alignment: Alignment.centerLeft,
                        child: Padding(
                          padding: const EdgeInsets.fromLTRB(6, 10, 0, 10),
                          child: StrokeText(
                            textAlignment: TextAlign.start,
                            text: name,
                            size: 18,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
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
