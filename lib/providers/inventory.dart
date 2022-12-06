import 'package:flutter_riverpod/flutter_riverpod.dart';

final copperProvider = StateProvider<int>(
  (ref) => 78,
);

final silverProvider = StateProvider<int>((ref) => 104);

final goldProvider = StateProvider<int>((ref) => 55);

final platinumProvider = StateProvider<int>((ref) => 2);

final quickSelectMoneyDisplay = StateProvider<int>(
  (ref) => 0,
);
