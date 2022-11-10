import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:player_watchtower/providers/page.dart';
import 'package:player_watchtower/providers/theme.dart';

class NavButton extends ConsumerWidget {
  final IconData buttonIcon;
  final int index;
  NavButton({super.key, required this.buttonIcon, required this.index});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return GestureDetector(
      onTap: () => ref.watch(currentPage.notifier).state = index,
      child: AnimatedContainer(
        duration: Duration(milliseconds: 250),
        height: 40,
        width: 75,
        decoration: BoxDecoration(
            border:
                Border.all(color: ref.watch(themeProvider).outline, width: 1.0),
            color: Colors.black,
            borderRadius: BorderRadius.circular(5),
            boxShadow: [
              ref.watch(themeProvider).shadow,
              if (index == ref.watch(currentPage))
                BoxShadow(
                    color: ref.watch(themeProvider).currentNavHighlightColor,
                    offset: Offset(0, 2),
                    blurRadius: 2,
                    spreadRadius: 2)
            ]),
        child: Icon(
          buttonIcon,
          color: Colors.white,
        ),
      ),
    );
  }
}
