import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:player_watchtower/providers/forms.dart';

wipeTemporaryFormData(WidgetRef ref) {
  ref.read(changeToFinalProvider.notifier).state = '';
  ref.read(changeToProvider.notifier).state = '';
  ref.read(dropDownProvider.notifier).state = '';
}

bool formValuesChanged(WidgetRef ref) {
  if (ref.read(changeToFinalProvider) == '' &&
      ref.read(changeToProvider) == '' &&
      ref.read(dropDownProvider) == '') {
    return false;
  }
  return true;
}
