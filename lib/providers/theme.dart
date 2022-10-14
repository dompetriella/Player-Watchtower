import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class ThemeColor {
  Color primary;
  Color secondary;
  Color accent;
  Color bg;
  BoxShadow hoverShadow;

  ThemeColor(
      {required this.primary,
      this.secondary = Colors.white,
      this.hoverShadow = const BoxShadow(
          offset: Offset(0, 4), color: Colors.grey, blurRadius: 5),
      required this.bg,
      required this.accent});
}

var testColor = ThemeColor(
    primary: HexColor('423B52'),
    secondary: HexColor('D9D9D9'),
    bg: HexColor('AAC6C3'),
    accent: HexColor('990000'));

final colorProvider = Provider<ThemeColor>((ref) => testColor);
