import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:player_watchtower/providers/page.dart';

class NavButton extends ConsumerWidget {
  final IconData buttonIcon;
  final int index;
  NavButton({super.key, required this.buttonIcon, required this.index});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return GestureDetector(
      onTap: () => ref.watch(currentPage.notifier).state = index,
      child: Container(
        height: 40,
        width: 75,
        decoration: BoxDecoration(
            border: Border.all(color: Colors.white, width: 1.0),
            color: Colors.black,
            borderRadius: BorderRadius.circular(5),
            boxShadow: [
              BoxShadow(
                  offset: Offset(0, 4),
                  blurRadius: 4,
                  color: Color.fromARGB(70, 0, 0, 0))
            ]),
        child: Icon(
          buttonIcon,
          color: Colors.white,
        ),
      ),
    );
  }
}
