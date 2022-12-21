import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:player_watchtower/providers/theme.dart';

class FormTitle extends ConsumerWidget {
  final String formType;
  const FormTitle({super.key, required this.formType});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Container(
      decoration: BoxDecoration(
          color: ref.watch(themeProvider).baseCardBg,
          border: Border.all(color: Colors.white, width: 4),
          boxShadow: [ref.watch(themeProvider).shadow],
          borderRadius: BorderRadius.circular(10)),
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 30),
        child: Text(
          'New $formType Details',
          style: TextStyle(
              fontSize: 20, color: Colors.black, fontWeight: FontWeight.w900),
        ),
      ),
    );
  }
}
