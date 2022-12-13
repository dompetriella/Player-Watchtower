import 'package:flutter_riverpod/flutter_riverpod.dart';

// this will eventually alter a big Inventory object, but is functional for now

final copperProvider = StateProvider<int>(
  (ref) => 500,
);

final silverProvider = StateProvider<int>((ref) => 100);

final goldProvider = StateProvider<int>((ref) => 20);

final platinumProvider = StateProvider<int>((ref) => 5);

final quickSelectMoneyDisplay = StateProvider<int>(
  (ref) => 0,
);
