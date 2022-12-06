import 'package:flutter_riverpod/flutter_riverpod.dart';

final changeToProvider = StateProvider<String>(
  (ref) => '',
);

final dropDownProvider = StateProvider<String>(
  (ref) => '',
);

final changeToFinalProvider = StateProvider<String>(
  (ref) => '',
);

final increaseValueProvider = StateProvider<int>(
  (ref) => 0,
);

final decreaseValueProvider = StateProvider<int>(
  (ref) => 0,
);

final checkboxProvider = StateProvider<bool>(((ref) => false));
