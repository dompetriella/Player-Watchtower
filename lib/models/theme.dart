import 'package:flutter/material.dart' hide BoxDecoration, BoxShadow;
import 'package:flutter_inset_box_shadow/flutter_inset_box_shadow.dart';

class AppTheme {
  final String themeName;
  final List<Color> themeColors;
  final Color primary;
  final Color accent;
  final Color bgColor;
  final Color outline;
  final Color outlineText;
  final Color textColor;
  final BoxShadow innerShadow;
  final BoxShadow shadow;
  final Color appBarColor;
  final String fontFamily;

  final Color baseCardBg;
  final Color cardBg;
  final Color cardIconColor;

  final Color bgForText;
  final Color bgForInput;

  final Color currentNavHighlightColor;

  final Color numberDisplayBgColor;
  final double numberDisplayBorderRadius;
  final BoxShadow numberDisplayDropShadow;

  final Color diceIconTextColor;
  final Color diceIconBgColor;
  final double diceIconBorderRadius;

  final Color diceTypeBgColor;
  final Color diceTypeStrokeColor;
  final double diceTypeBorderRadius;

  final Color numberDisplayTextColor;

  final Color rollButtonBgColor;
  final Color rollButtonTextColor;
  final BoxShadow rollButtonOutline;

  final Color multiplierTextColor;
  final Color multiplierBgColor;
  final BoxShadow multiplierDropShadow;
  final BoxShadow multiplierOutline;

  final Color diceButtonBg;
  final Color diceButtonTextColor;
  final double diceButtonBorderRadius;
  final BoxShadow diceButtonInnerShadow;
  final BoxShadow diceButtonOutline;

  final Color diceDrawerBg;
  final Color diceDrawerNegativeSpace;
  final double diceDrawerBorderRadius;
  final BoxShadow columnShadow;
  final Color diceDrawerColumnBg;
  final Color diceDrawerColumnContentBg;
  final Color diceDrawerColumnTextColor;
  final Color diceDrawerThemesBg;
  final double themeBarBorderRadius;
  final Color diceDrawerHistorySliverBg;
  final Color diceDrawerHistorySliverTextColor;
  final BoxShadow diceDrawerHistorySliverOutline;
  final Color diceDrawerStatsIconBg;
  final Color diceDrawerStatsColorBg;

  AppTheme({
    required this.themeName,
    required this.themeColors,
    required this.bgColor,
    required this.primary,
    required this.accent,
    required this.baseCardBg,
    required this.cardBg,
    required this.bgForInput,
    required this.bgForText,
    required this.appBarColor,
    required this.numberDisplayBgColor,
    required this.diceIconBgColor,
    required this.diceTypeBgColor,
    required this.rollButtonBgColor,
    required this.multiplierTextColor,
    required this.diceButtonBg,
    required this.diceDrawerBg,
    required this.diceDrawerColumnBg,
    required this.diceDrawerColumnTextColor,
    required this.diceDrawerHistorySliverBg,
    required this.diceDrawerStatsIconBg,
    required this.diceDrawerStatsColorBg,
    this.currentNavHighlightColor = Colors.white,
    this.shadow = const BoxShadow(
        inset: false,
        color: Color.fromRGBO(0, 0, 0, .50),
        blurRadius: 4,
        offset: Offset(0, 5)),
    this.outline = Colors.white,
    this.outlineText = Colors.black,
    this.textColor = Colors.white,
    this.cardIconColor = Colors.black,
    this.diceDrawerThemesBg = Colors.white,
    this.diceDrawerNegativeSpace = Colors.white,
    this.diceDrawerBorderRadius = 20,
    this.themeBarBorderRadius = 15,
    this.diceDrawerHistorySliverTextColor = Colors.black,
    this.diceDrawerColumnContentBg = Colors.white,
    this.diceDrawerHistorySliverOutline = const BoxShadow(
      color: Colors.white,
      spreadRadius: 2,
    ),
    this.innerShadow = const BoxShadow(
        inset: true,
        color: Color.fromRGBO(0, 0, 0, .50),
        blurRadius: 4,
        offset: Offset(0, -5)),
    this.columnShadow = const BoxShadow(
        inset: true,
        color: Color.fromRGBO(0, 0, 0, .50),
        blurRadius: 4,
        offset: Offset(4, 4)),
    this.diceButtonInnerShadow = const BoxShadow(
        inset: true,
        color: Color.fromRGBO(0, 0, 0, .50),
        blurRadius: 4,
        offset: Offset(0, -5)),
    this.diceButtonOutline = const BoxShadow(color: Colors.transparent),
    this.fontFamily = 'Helvetica',
    this.numberDisplayBorderRadius = 30,
    this.numberDisplayDropShadow = const BoxShadow(),
    this.diceIconTextColor = Colors.white,
    this.diceIconBorderRadius = 5,
    this.diceTypeStrokeColor = Colors.white,
    this.diceTypeBorderRadius = 10,
    this.numberDisplayTextColor = Colors.black,
    this.rollButtonTextColor = Colors.white,
    this.rollButtonOutline = const BoxShadow(color: Colors.transparent),
    this.multiplierBgColor = Colors.white,
    this.multiplierDropShadow = const BoxShadow(
        inset: false,
        color: Color.fromRGBO(0, 0, 0, .50),
        blurRadius: 4,
        offset: Offset(0, 5)),
    this.multiplierOutline = const BoxShadow(),
    this.diceButtonTextColor = Colors.white,
    this.diceButtonBorderRadius = 20,
  });
}
