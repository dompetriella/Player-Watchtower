// import 'package:flutter/material.dart';
// import 'package:flutter_riverpod/flutter_riverpod.dart';
// import 'package:font_awesome_flutter/font_awesome_flutter.dart';
// import 'package:player_watchtower/dictionaries/inventory.dart';
// import 'package:player_watchtower/providers/theme.dart';

// import '../../../functions/calculations.dart';
// import '../../../global_components/stroke_text.dart';
// import '../../../inventory_models/weapon.dart';
// import '../../../providers/inventory.dart';

// double height = 65;

// class WeaponDisplay extends ConsumerWidget {
//   final String guid;
//   final bool isQuickSelect;
//   final String damage;
//   final String damageType;
//   final String weaponType;
//   final String name;
//   final bool hasEditingControl;
//   WeaponDisplay({
//     super.key,
//     this.damage = '',
//     this.damageType = 'Custom',
//     this.isQuickSelect = false,
//     this.hasEditingControl = true,
//     required this.weaponType,
//     required this.guid,
//     required this.name,
//   });

//   @override
//   Widget build(BuildContext context, WidgetRef ref) {
//     return Column(
//       children: [
//         GestureDetector(
//           onDoubleTap: () {
//             ref
//                 .read(inventoryProvider.notifier)
//                 .toggleFlagWeaponForQuickSelect(guid: guid, ref: ref);
//           },
//           child: Padding(
//             padding: const EdgeInsets.only(top: 8.0, bottom: 4.0),
//             child: Row(
//               crossAxisAlignment: CrossAxisAlignment.end,
//               children: [
//                 Stack(
//                   clipBehavior: Clip.none,
//                   children: [
//                     Container(
//                       height: height * .95,
//                       width: height,
//                       decoration: BoxDecoration(
//                           color: Colors.black,
//                           borderRadius: BorderRadius.only(
//                               topLeft: Radius.circular(5),
//                               topRight: Radius.circular(5),
//                               bottomLeft: Radius.circular(5))),
//                       child: Center(
//                         child: FaIcon(
//                           FontAwesomeIcons.crosshairs,
//                           color: Colors.white,
//                           size: height * .50,
//                         ),
//                       ),
//                     ),
//                     if (isQuickSelect)
//                       Positioned(
//                         left: -5,
//                         top: -5,
//                         child: Container(
//                           width: 25,
//                           height: 25,
//                           decoration: BoxDecoration(
//                               color: ref.watch(themeProvider).accent,
//                               borderRadius: BorderRadius.circular(100)),
//                           child: Center(
//                             child: FaIcon(
//                               FontAwesomeIcons.boltLightning,
//                               size: 15,
//                               color: Colors.white,
//                             ),
//                           ),
//                         ),
//                       )
//                   ],
//                 ),
//                 WeaponDisplaySubtitle(
//                     weaponType: weaponType,
//                     damageType: damageType,
//                     damage: damage,
//                     hasEditingControl: hasEditingControl,
//                     name: name,
//                     guid: guid),
//               ],
//             ),
//           ),
//         ),
//         Divider(
//           thickness: 2,
//           indent: 10,
//           endIndent: 10,
//         )
//       ],
//     );
//   }
// }

