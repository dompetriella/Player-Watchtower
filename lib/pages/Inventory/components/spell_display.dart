// import 'package:bordered_text/bordered_text.dart';
// import 'package:flutter/material.dart';
// import 'package:flutter_riverpod/flutter_riverpod.dart';
// import 'package:font_awesome_flutter/font_awesome_flutter.dart';
// import 'package:player_watchtower/providers/theme.dart';

// import '../../../functions/calculations.dart';
// import '../../../global_components/stroke_text.dart';
// import '../../../providers/inventory.dart';

// double height = 65;

// class SpellDisplay extends ConsumerWidget {
//   final String guid;
//   final bool isQuickSelect;
//   final bool hasEditingControl;
//   final String name;
//   final int level;
//   final String school;
//   SpellDisplay(
//       {super.key,
//       this.isQuickSelect = false,
//       this.hasEditingControl = true,
//       required this.guid,
//       required this.name,
//       required this.level,
//       required this.school});

//   @override
//   Widget build(BuildContext context, WidgetRef ref) {
//     return Column(
//       children: [
//         GestureDetector(
//           onDoubleTap: () {
//             ref
//                 .read(inventoryProvider.notifier)
//                 .toggleFlagSpellForQuickSelect(guid: guid, ref: ref);
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
//                           FontAwesomeIcons.book,
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
//                 Expanded(
//                   child: Column(
//                     mainAxisAlignment: MainAxisAlignment.end,
//                     children: [
//                       Padding(
//                         padding: const EdgeInsets.all(3.0),
//                         child: Row(
//                           mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                           crossAxisAlignment: CrossAxisAlignment.end,
//                           children: [
//                             Text(
//                               level > 0
//                                   ? 'Level $level $school'
//                                   : 'Cantrip $school',
//                               style: TextStyle(
//                                   fontWeight: FontWeight.bold, fontSize: 12),
//                             ),
//                           ],
//                         ),
//                       ),
//                       Container(
//                         width: double.infinity,
//                         decoration: BoxDecoration(
//                             color: ref.watch(themeProvider).primary,
//                             borderRadius: BorderRadius.only(
//                                 topRight: Radius.circular(10),
//                                 bottomRight: Radius.circular(10))),
//                         child: Padding(
//                           padding: !isQuickSelect
//                               ? const EdgeInsets.only(left: 6.0)
//                               : const EdgeInsets.fromLTRB(6, 12, 0, 12),
//                           child: Row(
//                             mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                             children: [
//                               StrokeText(
//                                 textAlignment: TextAlign.start,
//                                 text: (!isQuickSelect)
//                                     ? truncateWithEllipsis(20, name)
//                                     : truncateWithEllipsis(25, name),
//                                 size: 16,
//                               ),
//                               if (!isQuickSelect)
//                                 GestureDetector(
//                                   onLongPress: () {
//                                     ref
//                                         .read(inventoryProvider.notifier)
//                                         .deleteSpellFromInventory(
//                                             guid: guid, ref: ref);
//                                   },
//                                   child: Padding(
//                                     padding: const EdgeInsets.all(4.0),
//                                     child: AnimatedContainer(
//                                       duration: Duration(milliseconds: 200),
//                                       decoration: BoxDecoration(
//                                           color: Colors.transparent,
//                                           borderRadius:
//                                               BorderRadius.circular(5),
//                                           border: Border.all(
//                                               width: 1, color: Colors.white)),
//                                       child: Icon(
//                                         Icons.delete_forever,
//                                         color: ref.watch(themeProvider).cardBg,
//                                         size: 35,
//                                       ),
//                                     ),
//                                   ),
//                                 )
//                             ],
//                           ),
//                         ),
//                       ),
//                     ],
//                   ),
//                 ),
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
