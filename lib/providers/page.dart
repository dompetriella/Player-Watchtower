import 'package:flutter_riverpod/flutter_riverpod.dart';

final currentPage = StateProvider<int>(
  (ref) => 0,
);

final statsCharacterExpanded = StateProvider<bool>(
  (ref) => false,
);

final statsCombatStatsExpanded = StateProvider<bool>(
  (ref) => false,
);

final statsScoresExpanded = StateProvider<bool>(
  (ref) => false,
);

final statsSkillsExpanded = StateProvider<bool>(
  (ref) => false,
);

final statsNotesExpanded = StateProvider<bool>(
  (ref) => false,
);

final qsAbilitiesExpanded = StateProvider<bool>(
  (ref) => false,
);

final qsWeaponsExpanded = StateProvider<bool>(
  (ref) => false,
);

final qsSpellsExpanded = StateProvider<bool>(
  (ref) => false,
);
