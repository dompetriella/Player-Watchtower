import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:player_watchtower/providers/forms.dart';

wipeTemporaryFormData(WidgetRef ref) {
  ref.read(changeToFinalProvider.notifier).state = '';
  ref.read(changeToProvider.notifier).state = '';
  ref.read(dropDownProvider.notifier).state = '';
  ref.read(increaseValueProvider.notifier).state = 0;
  ref.read(decreaseValueProvider.notifier).state = 0;
  ref.read(didCheckboxChangeProvider.notifier).state = false;
}

bool formValuesChanged(WidgetRef ref) {
  if (ref.read(changeToFinalProvider) == '' &&
      ref.read(changeToProvider) == '' &&
      ref.read(dropDownProvider) == '' &&
      ref.read(increaseValueProvider) == 0 &&
      ref.read(decreaseValueProvider) == 0 &&
      ref.read(didCheckboxChangeProvider) == true) {
    return false;
  }
  return true;
}
