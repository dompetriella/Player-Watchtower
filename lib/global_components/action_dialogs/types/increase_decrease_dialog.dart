import 'package:flutter/src/widgets/basic.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:player_watchtower/global_components/action_dialogs/components/increase_decrease_input.dart';

class IncreaseDecreaseDialog extends StatelessWidget {
  const IncreaseDecreaseDialog({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        IncreaseDecreaseInput(),
        IncreaseDecreaseInput(
          isIncrease: false,
        )
      ],
    );
  }
}
