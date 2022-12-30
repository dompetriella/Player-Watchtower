import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final currentPage = StateProvider<int>(
  (ref) => 0,
);

var pageController = PageController();

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

final statsAbilitiesExpanded = StateProvider<bool>(
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

final qsItemsExpanded = StateProvider<bool>(
  (ref) => false,
);

final strengthAbilityScoreCard = StateProvider<bool>(
  (ref) => true,
);

final dexterityAbilityScoreCard = StateProvider<bool>(
  (ref) => true,
);
final constitutionAbilityScoreCard = StateProvider<bool>(
  (ref) => true,
);
final intellegenceAbilityScoreCard = StateProvider<bool>(
  (ref) => true,
);
final wisdomAbilityScoreCard = StateProvider<bool>(
  (ref) => true,
);
final charismaAbilityScoreCard = StateProvider<bool>(
  (ref) => true,
);

final moneyExpanded = StateProvider<bool>(
  (ref) => false,
);

final itemsExpanded = StateProvider<bool>(
  (ref) => false,
);

final weaponsExpanded = StateProvider<bool>(
  (ref) => false,
);

final spellsExpanded = StateProvider<bool>(
  (ref) => false,
);

final abilitiesExpanded = StateProvider<bool>(
  (ref) => false,
);
