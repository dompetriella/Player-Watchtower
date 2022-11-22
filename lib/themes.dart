import 'package:flutter/material.dart' hide BoxDecoration, BoxShadow;
import 'package:flutter_inset_box_shadow/flutter_inset_box_shadow.dart';
import 'models/theme.dart';

Color hex(String code) {
  String colorString = '0xFF$code';
  return Color(int.parse(colorString));
}

var defaultTheme = AppTheme(
    themeName: "Daylight",
    themeColors: [hex('423B52'), hex('AAC6C3'), hex('D9D9D9'), hex('990000')],
    currentNavHighlightColor: daylightPrimary,
    bgColor: daylightBg,
    primary: daylightPrimary,
    accent: daylightAccent,
    baseCardBg: daylightSecondary,
    cardBg: daylightSecondary,
    bgForInput: daylightBg,
    bgForText: daylightSecondary,
    appBarColor: daylightPrimary,
    //
    numberDisplayBgColor: daylightSecondary,
    diceIconBgColor: daylightPrimary,
    diceTypeBgColor: daylightPrimary,
    rollButtonBgColor: daylightAccent,
    multiplierTextColor: daylightPrimary,
    diceButtonBg: daylightPrimary,
    diceDrawerBg: daylightPrimary,
    diceDrawerColumnBg: daylightBg,
    diceDrawerColumnTextColor: Colors.black,
    diceDrawerHistorySliverBg: daylightSecondary,
    diceDrawerStatsIconBg: daylightPrimary,
    diceDrawerStatsColorBg: Colors.white,
    diceDrawerColumnContentBg: daylightAccent);

Map<String, AppTheme> themesDictionary = {
  'Daylight': AppTheme(
    themeName: "Daylight",
    themeColors: [hex('423B52'), hex('AAC6C3'), hex('D9D9D9'), hex('990000')],
    currentNavHighlightColor: daylightPrimary,
    bgColor: daylightBg,
    primary: daylightPrimary,
    accent: daylightAccent,
    baseCardBg: daylightSecondary,
    cardBg: daylightSecondary,
    bgForInput: daylightBg,
    bgForText: daylightSecondary,
    appBarColor: daylightPrimary,
    //
    numberDisplayBgColor: daylightSecondary,
    diceIconBgColor: daylightPrimary,
    diceTypeBgColor: daylightPrimary,
    rollButtonBgColor: daylightAccent,
    multiplierTextColor: daylightPrimary,
    diceButtonBg: daylightPrimary,
    diceDrawerBg: daylightPrimary,
    diceDrawerColumnBg: daylightBg,
    diceDrawerColumnTextColor: Colors.black,
    diceDrawerHistorySliverBg: daylightSecondary,
    diceDrawerStatsIconBg: daylightPrimary,
    diceDrawerStatsColorBg: Colors.white,
  ),

  'Twilight': AppTheme(
      themeName: "Twilight",
      themeColors: [
        Colors.black,
        daylightSecondary,
        Colors.white,
        hex('DB893D')
      ],
      primary: Colors.black,
      accent: hex('DB893D'),
      cardBg: daylightSecondary,
      baseCardBg: Colors.black,
      bgForInput: Colors.black,
      bgForText: daylightSecondary,
      bgColor: Colors.black,
      appBarColor: hex('DB893D'),
      currentNavHighlightColor: hex('DB893D'),
      numberDisplayBgColor: daylightSecondary,
      diceIconBgColor: Colors.black,
      diceTypeBgColor: Colors.black,
      rollButtonBgColor: hex('DB893D'),
      multiplierTextColor: Colors.black,
      diceButtonBg: daylightSecondary,
      diceDrawerBg: daylightSecondary,
      diceDrawerColumnBg: Colors.black,
      diceDrawerColumnContentBg: Colors.black,
      diceDrawerColumnTextColor: hex('DB893D'),
      diceDrawerHistorySliverBg: daylightSecondary,
      diceDrawerStatsIconBg: Colors.black,
      diceDrawerStatsColorBg: Colors.white,
      rollButtonTextColor: Colors.black,
      diceButtonTextColor: Colors.black,
      multiplierBgColor: daylightSecondary),
  'Midnight': AppTheme(
      themeName: "Midnight",
      themeColors: [
        Colors.black,
        Colors.white,
      ],
      bgColor: Colors.black,
      primary: Colors.black,
      accent: Colors.white,
      outline: Colors.black,
      baseCardBg: Colors.black,
      cardBg: Colors.black,
      bgForInput: Colors.white,
      bgForText: Colors.black,
      cardIconColor: Colors.white,
      appBarColor: Colors.white,
      numberDisplayBgColor: Colors.black,
      diceIconBgColor: Colors.black,
      diceTypeBgColor: Colors.black,
      diceTypeStrokeColor: Colors.white,
      diceIconTextColor: Colors.white,
      numberDisplayTextColor: Colors.white,
      rollButtonBgColor: Colors.white,
      rollButtonTextColor: Colors.black,
      multiplierTextColor: Colors.white,
      multiplierOutline: BoxShadow(color: Colors.white, spreadRadius: 1),
      diceButtonBg: Colors.black,
      diceButtonOutline: const BoxShadow(color: Colors.white, spreadRadius: 1),
      diceButtonInnerShadow:
          const BoxShadow(color: Colors.white, blurRadius: 25, inset: true),
      diceDrawerBg: Colors.black,
      diceDrawerColumnBg: Colors.black,
      diceDrawerColumnContentBg: Colors.black,
      diceDrawerColumnTextColor: Colors.white,
      diceDrawerThemesBg: Colors.black,
      diceDrawerHistorySliverBg: Colors.black,
      diceDrawerHistorySliverTextColor: Colors.white,
      diceDrawerStatsIconBg: Colors.black,
      diceDrawerStatsColorBg: Colors.black,
      diceButtonTextColor: Colors.white,
      multiplierBgColor: Colors.black),

  // 'Verdant': AppTheme(
  //   themeName: "Verdant",
  //   themeColors: [verdantBg, verdantPrimary, verdantSecondary, verdantAccent],
  //   bgColor: verdantBg,
  //   numberDisplayBgColor: verdantSecondary,
  //   numberDisplayTextColor: verdantBg,
  //   diceIconBgColor: verdantPrimary,
  //   diceTypeBgColor: verdantPrimary,
  //   rollButtonBgColor: verdantAccent,
  //   multiplierTextColor: verdantBg,
  //   diceButtonBg: verdantPrimary,
  //   diceDrawerBg: verdantPrimary,
  //   diceDrawerColumnBg: verdantBg,
  //   diceDrawerColumnTextColor: Colors.white,
  //   diceDrawerHistorySliverBg: verdantSecondary,
  //   diceDrawerStatsIconBg: verdantPrimary,
  //   diceDrawerStatsColorBg: Colors.white,
  // ),
  // 'Harvest': AppTheme(
  //     themeName: "Harvest",
  //     themeColors: [harvestBg, harvestSecondary, harvestAccent, harvestPrimary],
  //     bgColor: harvestBg,
  //     numberDisplayBgColor: harvestSecondary,
  //     numberDisplayTextColor: Colors.white,
  //     diceIconBgColor: harvestBg,
  //     diceTypeBgColor: harvestBg,
  //     rollButtonBgColor: harvestAccent,
  //     rollButtonTextColor: Colors.black,
  //     multiplierTextColor: Colors.white,
  //     multiplierBgColor: harvestSecondary,
  //     diceButtonBg: harvestPrimary,
  //     diceDrawerBg: harvestSecondary,
  //     diceDrawerColumnBg: harvestBg,
  //     diceDrawerColumnTextColor: harvestAccent,
  //     diceDrawerHistorySliverBg: harvestSecondary,
  //     diceDrawerHistorySliverTextColor: Colors.white,
  //     diceDrawerStatsIconBg: harvestPrimary,
  //     diceDrawerStatsColorBg: Colors.white),
  // 'Mire': AppTheme(
  //     themeName: "Mire",
  //     themeColors: [mireBg, mirePrimary, mireAccent],
  //     bgColor: mireBg,
  //     numberDisplayBgColor: mirePrimary,
  //     numberDisplayTextColor: Colors.white70,
  //     diceIconBgColor: mireBg,
  //     diceTypeBgColor: mireBg,
  //     rollButtonBgColor: mireAccent,
  //     multiplierTextColor: mirePrimary,
  //     multiplierBgColor: Colors.white70,
  //     diceButtonBg: mirePrimary,
  //     diceButtonTextColor: Colors.white70,
  //     diceDrawerBg: mirePrimary,
  //     diceDrawerColumnBg: mireBg,
  //     diceDrawerColumnTextColor: Colors.white70,
  //     diceDrawerHistorySliverBg: mireBg,
  //     diceDrawerHistorySliverTextColor: Colors.white,
  //     diceDrawerStatsIconBg: mireBg,
  //     diceDrawerStatsColorBg: Colors.white),
  // 'Glacier': AppTheme(
  //   themeName: "Glacier",
  //   themeColors: [glacierBg, glacierPrimary, glacierSecondary, glacierAccent],
  //   bgColor: glacierBg,
  //   numberDisplayBgColor: glacierSecondary,
  //   numberDisplayTextColor: glacierBg,
  //   diceIconBgColor: glacierPrimary,
  //   diceTypeBgColor: glacierPrimary,
  //   rollButtonBgColor: glacierAccent,
  //   multiplierTextColor: glacierBg,
  //   diceButtonBg: glacierPrimary,
  //   diceButtonTextColor: glacierSecondary,
  //   diceDrawerBg: glacierPrimary,
  //   diceDrawerColumnBg: glacierBg,
  //   diceDrawerColumnTextColor: glacierSecondary,
  //   diceDrawerHistorySliverBg: glacierSecondary,
  //   diceDrawerStatsIconBg: glacierPrimary,
  //   diceDrawerStatsColorBg: glacierSecondary,
  // ),
  // 'Nightshade': AppTheme(
  //   themeName: "Nightshade",
  //   themeColors: [nightshadePrimary, nightshadeBg, nightshadeAccent],
  //   bgColor: nightshadeBg,
  //   numberDisplayDropShadow: BoxShadow(
  //       spreadRadius: 2, color: nightshadeAccent, blurRadius: 15, inset: true),
  //   numberDisplayBgColor: nightshadePrimary,
  //   diceIconBgColor: nightshadePrimary,
  //   diceTypeBgColor: nightshadePrimary,
  //   diceTypeStrokeColor: Colors.white,
  //   diceIconTextColor: Colors.white,
  //   numberDisplayTextColor: Colors.white,
  //   rollButtonBgColor: nightshadeAccent,
  //   rollButtonTextColor: nightshadeBg,
  //   multiplierTextColor: Colors.white,
  //   multiplierBgColor: nightshadePrimary,
  //   diceButtonBg: nightshadePrimary,
  //   diceButtonTextColor: Colors.white,
  //   diceButtonInnerShadow:
  //       BoxShadow(color: hex('BF9EE8'), blurRadius: 25, inset: true),
  //   diceDrawerBg: nightshadePrimary,
  //   diceDrawerColumnBg: nightshadeBg,
  //   diceDrawerColumnContentBg: nightshadePrimary,
  //   diceDrawerColumnTextColor: nightshadeAccent,
  //   diceDrawerThemesBg: nightshadePrimary,
  //   diceDrawerHistorySliverBg: nightshadePrimary,
  //   diceDrawerHistorySliverTextColor: Colors.white,
  //   diceDrawerStatsIconBg: Colors.black,
  //   diceDrawerStatsColorBg: Colors.black,
  // ),
  // 'Pulse': AppTheme(
  //   themeName: "Pulse",
  //   themeColors: [pulseSecondary, pulseBg, pulsePrimary, pulseAccent],
  //   bgColor: pulseBg,
  //   diceIconBorderRadius: 100,
  //   diceTypeBorderRadius: 100,
  //   numberDisplayBorderRadius: 50,
  //   diceButtonBorderRadius: 500,
  //   numberDisplayBgColor: pulseSecondary,
  //   numberDisplayTextColor: pulseAccent,
  //   diceIconBgColor: pulsePrimary,
  //   diceTypeBgColor: pulsePrimary,
  //   diceIconTextColor: pulseAccent,
  //   diceTypeStrokeColor: pulseAccent,
  //   rollButtonBgColor: pulseAccent,
  //   rollButtonTextColor: pulseSecondary,
  //   multiplierTextColor: pulsePrimary,
  //   multiplierBgColor: pulseSecondary,
  //   diceButtonBg: pulsePrimary,
  //   diceDrawerBg: pulsePrimary,
  //   diceDrawerColumnBg: pulseBg,
  //   diceDrawerColumnContentBg: pulseSecondary,
  //   diceDrawerColumnTextColor: pulseAccent,
  //   diceDrawerHistorySliverBg: pulsePrimary,
  //   diceDrawerHistorySliverTextColor: pulseAccent,
  //   diceDrawerStatsIconBg: pulsePrimary,
  //   diceDrawerStatsColorBg: pulsePrimary,
  // ),
  // 'Fireball': AppTheme(
  //   themeName: "Fireball",
  //   themeColors: [
  //     fireballBg,
  //     fireballPrimary,
  //     fireballSecondary,
  //     fireballAccent
  //   ],
  //   bgColor: fireballBg,
  //   numberDisplayBgColor: fireballSecondary,
  //   numberDisplayTextColor: fireballBg,
  //   diceIconBgColor: fireballPrimary,
  //   diceTypeBgColor: fireballPrimary,
  //   rollButtonBgColor: fireballAccent,
  //   multiplierTextColor: fireballBg,
  //   diceButtonBg: fireballPrimary,
  //   diceButtonTextColor: fireballSecondary,
  //   diceDrawerBg: fireballPrimary,
  //   diceDrawerColumnBg: fireballBg,
  //   diceDrawerColumnTextColor: fireballSecondary,
  //   diceDrawerHistorySliverBg: fireballSecondary,
  //   diceDrawerHistorySliverTextColor: fireballBg,
  //   diceDrawerStatsIconBg: fireballPrimary,
  //   diceDrawerStatsColorBg: Colors.white,
  // ),
  // 'Whirlwind': AppTheme(
  //   themeName: "Whirlwind",
  //   themeColors: [gustSecondary, gustAccent, gustPrimary, gustBg],
  //   bgColor: gustBg,
  //   numberDisplayBgColor: gustSecondary,
  //   numberDisplayTextColor: Colors.black54,
  //   diceIconBgColor: gustBg,
  //   diceTypeBgColor: gustBg,
  //   diceIconTextColor: Colors.black87,
  //   diceTypeStrokeColor: Colors.black87,
  //   rollButtonBgColor: gustAccent,
  //   rollButtonTextColor: Colors.black87,
  //   multiplierTextColor: Colors.black54,
  //   diceButtonBg: gustPrimary,
  //   diceButtonTextColor: Colors.black54,
  //   diceDrawerBg: gustPrimary,
  //   diceDrawerColumnBg: gustBg,
  //   diceDrawerColumnContentBg: gustSecondary,
  //   diceDrawerThemesBg: gustSecondary,
  //   diceDrawerColumnTextColor: Colors.black87,
  //   diceDrawerHistorySliverBg: gustPrimary,
  //   diceDrawerStatsIconBg: gustPrimary,
  //   diceDrawerStatsColorBg: gustAccent,
  // ),
  // 'Faerie': AppTheme(
  //     themeName: "Faerie",
  //     themeColors: [faeriePrimary, faerieBg, faerieSecondary, faerieAccent],
  //     bgColor: faerieBg,
  //     numberDisplayBgColor: faerieSecondary,
  //     diceIconBgColor: faeriePrimary,
  //     diceTypeBgColor: faeriePrimary,
  //     rollButtonBgColor: faerieAccent,
  //     multiplierTextColor: faeriePrimary,
  //     diceButtonBg: faeriePrimary,
  //     diceDrawerBg: faerieAccent,
  //     diceDrawerColumnBg: faeriePrimary,
  //     diceDrawerColumnTextColor: Colors.black,
  //     diceDrawerHistorySliverBg: faerieBg,
  //     diceDrawerStatsIconBg: faeriePrimary,
  //     diceDrawerStatsColorBg: faerieBg,
  //     diceButtonBorderRadius: 100,
  //     diceButtonTextColor: Colors.black,
  //     diceIconBorderRadius: 100,
  //     diceTypeBorderRadius: 100,
  //     numberDisplayBorderRadius: 50,
  //     diceTypeStrokeColor: Colors.black,
  //     diceIconTextColor: Colors.black,
  //     diceDrawerNegativeSpace: faerieAccent),
  // 'Abyssal': AppTheme(
  //     themeName: "Abyssal",
  //     themeColors: [abyssalAccent, abyssalPrimary, abyssalSecondary],
  //     bgColor: abyssalPrimary,
  //     numberDisplayBgColor: abyssalSecondary,
  //     diceIconBgColor: abyssalPrimary,
  //     diceTypeBgColor: abyssalPrimary,
  //     rollButtonBgColor: abyssalAccent,
  //     multiplierTextColor: Colors.white,
  //     diceButtonBg: Colors.black,
  //     diceDrawerBorderRadius: 0,
  //     diceIconBorderRadius: 0,
  //     diceTypeBorderRadius: 0,
  //     diceButtonBorderRadius: 0,
  //     numberDisplayBorderRadius: 0,
  //     diceDrawerBg: Colors.black,
  //     diceDrawerColumnBg: abyssalPrimary,
  //     diceDrawerColumnTextColor: abyssalAccent,
  //     diceDrawerHistorySliverBg: Colors.black,
  //     diceDrawerStatsIconBg: abyssalPrimary,
  //     diceDrawerStatsColorBg: Colors.black,
  //     rollButtonTextColor: Colors.black,
  //     multiplierBgColor: Colors.black,
  //     numberDisplayTextColor: Colors.white,
  //     diceDrawerThemesBg: Colors.white,
  //     themeBarBorderRadius: 0,
  //     diceDrawerHistorySliverTextColor: Colors.white,
  //     diceDrawerColumnContentBg: Colors.black,
  //     diceDrawerHistorySliverOutline: BoxShadow(
  //       color: abyssalAccent,
  //       spreadRadius: 1,
  //     )),
  // 'Obelisk': AppTheme(
  //   themeName: "Obelisk",
  //   themeColors: [obeliskAccent, obeliskPrimary, obeliskBg, obeliskSecondary],
  //   bgColor: obeliskBg,
  //   numberDisplayBgColor: obeliskSecondary,
  //   diceIconBgColor: obeliskPrimary,
  //   diceTypeBgColor: obeliskPrimary,
  //   rollButtonBgColor: obeliskAccent,
  //   multiplierTextColor: obeliskPrimary,
  //   diceButtonBg: obeliskPrimary,
  //   diceDrawerBg: obeliskPrimary,
  //   diceDrawerColumnBg: obeliskBg,
  //   diceDrawerColumnTextColor: obeliskAccent,
  //   diceDrawerHistorySliverBg: obeliskSecondary,
  //   diceDrawerHistorySliverTextColor: obeliskAccent,
  //   diceDrawerStatsIconBg: obeliskPrimary,
  //   diceDrawerStatsColorBg: Colors.white,
  // ),
  // 'Daybreak': AppTheme(
  //     themeName: "Daybreak",
  //     themeColors: [
  //       Colors.white,
  //       Colors.black,
  //     ],
  //     innerShadow: BoxShadow(),
  //     diceDrawerBorderRadius: 0,
  //     diceIconBorderRadius: 0,
  //     diceTypeBorderRadius: 0,
  //     themeBarBorderRadius: 0,
  //     diceButtonBorderRadius: 0,
  //     numberDisplayBorderRadius: 0,
  //     bgColor: Colors.white,
  //     numberDisplayBgColor: Colors.white,
  //     diceIconBgColor: Colors.white,
  //     diceTypeBgColor: Colors.white,
  //     diceTypeStrokeColor: Colors.black,
  //     diceIconTextColor: Colors.black,
  //     numberDisplayTextColor: Colors.black,
  //     rollButtonBgColor: Colors.black,
  //     rollButtonTextColor: Colors.white,
  //     multiplierTextColor: Colors.black,
  //     multiplierOutline: BoxShadow(color: Colors.black, spreadRadius: 1),
  //     diceButtonBg: Colors.white,
  //     diceButtonOutline: const BoxShadow(color: Colors.black, spreadRadius: 1),
  //     diceButtonInnerShadow:
  //         const BoxShadow(color: Colors.black, blurRadius: 25, inset: true),
  //     diceDrawerBg: Colors.white,
  //     diceDrawerColumnBg: Colors.white,
  //     diceDrawerColumnContentBg: Colors.white,
  //     diceDrawerColumnTextColor: Colors.black,
  //     diceDrawerThemesBg: Colors.white,
  //     diceDrawerHistorySliverBg: Colors.white,
  //     diceDrawerHistorySliverTextColor: Colors.black,
  //     diceDrawerStatsIconBg: Colors.white,
  //     diceDrawerStatsColorBg: Colors.white,
  //     diceButtonTextColor: Colors.black,
  //     multiplierBgColor: Colors.white),
};

var daylightBg = hex('AAC6C3');
var daylightPrimary = hex('423B52');
var daylightSecondary = hex('D9D9D9');
var daylightAccent = hex('990000');

var verdantBg = hex('1C4A1B');
var verdantPrimary = hex('3B8E39');
var verdantSecondary = hex('BDEEAC');
var verdantAccent = hex('50B5B5');

var glacierBg = hex('1B073D');
var glacierPrimary = hex('2A4ABB');
var glacierSecondary = hex('ADF3F3');
var glacierAccent = hex('895AC5');

var fireballBg = hex('401717');
var fireballPrimary = hex('CA6821');
var fireballSecondary = hex('F1F99E');
var fireballAccent = hex('F93535');

var obeliskPrimary = hex('515151');
var obeliskSecondary = daylightSecondary;
var obeliskBg = hex('888888');
var obeliskAccent = hex('28272F');

var abyssalPrimary = hex('4F1315');
var abyssalSecondary = Colors.black;
var abyssalAccent = hex('F3DB59');

var faeriePrimary = hex('2CE8E8');
var faerieSecondary = Colors.white;
var faerieBg = hex('B2FBFB');
var faerieAccent = hex('FF81BD');

var sunsetPrimary = hex('FD6051');
var sunsetBg = hex('392033');
var sunsetAccent = hex('FFE577');

var harvestPrimary = hex('AF4A00');
var harvestSecondary = hex('5B8D27');
var harvestAccent = hex('EFB00A');
var harvestBg = hex('114B0B');

var mirePrimary = hex('1F545D');
var mireAccent = hex('2F7D56');
var mireBg = hex('1C1531');

var nightshadePrimary = hex('120429');
var nightshadeAccent = hex('BF9EE8');
var nightshadeBg = hex('1B073D');

var pulsePrimary = hex('9B1B3B');
var pulseSecondary = hex('241002');
var pulseAccent = hex('FDF2E1');
var pulseBg = hex('430D0B');

var gustPrimary = hex('A7E7FE');
var gustSecondary = hex('F1FBFF');
var gustAccent = hex('FFD1AF');
var gustBg = hex('CDFFFC');
