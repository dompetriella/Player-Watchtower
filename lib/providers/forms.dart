import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:player_watchtower/providers/inventory.dart';

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

final finalCheckboxProvider = StateProvider<bool>(((ref) => false));

final didCheckboxChangeProvider = StateProvider<bool>(((ref) => false));

// inventory forms

var name = StateProvider<String>(
  (ref) => '',
);

var hint = StateProvider<String>(
  (ref) => '',
);

var catergory = StateProvider<String>(
  (ref) => 'Custom',
);

var amount = StateProvider<int>(
  (ref) => 1,
);

var description = StateProvider<String>(
  (ref) => '',
);

var addToQuickSelect = StateProvider<bool>(
  (ref) => false,
);

// weapon state

var diceMultiplier = StateProvider<int>(
  (ref) => 1,
);

var diceDamage = StateProvider<String>(
  (ref) => '',
);

var modifierDamage = StateProvider<int>(
  (ref) => 0,
);

var weaponDamageType = StateProvider<String>(
  (ref) => 'Custom',
);

// spell state

var spellLevel = StateProvider<int>(
  (ref) => 0,
);

var school = StateProvider<String>(
  (ref) => 'Custom',
);

var duration = StateProvider<String>(
  (ref) => 'Custom',
);

// ability

var abilityCatergory = StateProvider<String>(
  (ref) => 'Custom',
);

clearInventoryForm(WidgetRef ref) {
  ref.read(name.notifier).state = '';
  ref.read(hint.notifier).state = '';
  ref.read(catergory.notifier).state = 'Custom';
  ref.read(addToQuickSelect.notifier).state = false;
  ref.read(description.notifier).state = '';
  // items
  ref.read(amount.notifier).state = 1;
  // weapons
  ref.read(diceMultiplier.notifier).state = 1;
  ref.read(diceDamage.notifier).state = '';
  ref.read(modifierDamage.notifier).state = 0;
  ref.read(weaponDamageType.notifier).state = 'Custom';
  // spells
  ref.read(spellLevel.notifier).state = 0;
  ref.read(school.notifier).state = 'Custom';
  ref.read(duration.notifier).state = 'Custom';
  // abilities
  ref.read(abilityCatergory.notifier).state = 'Custom';
}
