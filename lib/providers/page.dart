import 'package:flutter_riverpod/flutter_riverpod.dart';

final currentPage = StateProvider<int>(
  (ref) => 0,
);

final characterExpanded = StateProvider<bool>(
  (ref) => false,
);

final combatStatsExpanded = StateProvider<bool>(
  (ref) => false,
);

final scoresExpanded = StateProvider<bool>(
  (ref) => false,
);

final skillsExpanded = StateProvider<bool>(
  (ref) => false,
);

final notesExpanded = StateProvider<bool>(
  (ref) => false,
);
