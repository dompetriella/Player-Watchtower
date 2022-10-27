import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:player_watchtower/models/theme.dart';
import 'package:player_watchtower/themes.dart';

final currentThemeIndex = StateProvider<int>(((ref) => 0));

final themeProvider = StateProvider<AppTheme>((ref) {
  return themesDictionary['Sunset'] ?? defaultTheme;
});
