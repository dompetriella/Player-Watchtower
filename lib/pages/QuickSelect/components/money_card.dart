import 'package:bordered_text/bordered_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bounce/flutter_bounce.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:player_watchtower/global_components/multi_button.dart';
import 'package:player_watchtower/global_components/stroke_text.dart';
import 'package:player_watchtower/providers/inventory.dart';

import '../../../providers/theme.dart';

Color platinum = Colors.grey[800]!;
Color gold = Colors.yellow;
Color silver = Colors.grey[400]!;
Color copper = Colors.brown;

String roundMoney(int amount) {
  if (amount > 9999) {
    String moneyString = amount.toString();
    return '${moneyString.substring(0, 1)}.${moneyString.substring(1, 2)}k';
  }
  return amount.toString();
}

Widget cycleCoinView(WidgetRef ref) {
  switch (ref.watch(quickSelectMoneyDisplay)) {
    case 0:
      return AllCoinView();
    case 1:
      return CoinNameAndAmount(
        amount: ref.watch(platinumProvider),
        coinName: 'Platinum',
        coinColor: platinum,
      );
    case 2:
      return CoinNameAndAmount(
        amount: ref.watch(goldProvider),
        coinName: 'Gold',
        coinColor: gold,
      );
    case 3:
      return CoinNameAndAmount(
        amount: ref.watch(silverProvider),
        coinName: 'Silver',
        coinColor: silver,
      );

    case 4:
      return CoinNameAndAmount(
        amount: ref.watch(copperProvider),
        coinName: 'Copper',
        coinColor: copper,
      );

    default:
      return AllCoinView();
  }
}

class MoneyCard extends ConsumerWidget {
  const MoneyCard({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Padding(
      padding: const EdgeInsets.only(top: 8.0),
      child: GestureDetector(
        onTap: () {
          if (ref.read(quickSelectMoneyDisplay) > 4) {
            ref.read(quickSelectMoneyDisplay.notifier).state = 0;
          }
          ref.read(quickSelectMoneyDisplay.notifier).state++;
        },
        child: Container(
            height: 50,
            decoration: BoxDecoration(
              color: ref.watch(themeProvider).cardBg,
              boxShadow: [ref.watch(themeProvider).shadow],
              border: Border.all(
                  color: ref.watch(themeProvider).outline, width: 2.0),
              borderRadius: BorderRadius.circular(10),
            ),
            child: cycleCoinView(ref)),
      ),
    );
  }
}

class AllCoinView extends ConsumerWidget {
  const AllCoinView({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        CoinAmountAndIcon(
            amount: ref.watch(platinumProvider), coinColor: platinum),
        CoinAmountAndIcon(amount: ref.watch(goldProvider), coinColor: gold),
        CoinAmountAndIcon(amount: ref.watch(silverProvider), coinColor: silver),
        CoinAmountAndIcon(amount: ref.watch(copperProvider), coinColor: copper),
      ],
    );
  }
}

class CoinAmountAndIcon extends ConsumerWidget {
  final int amount;
  final Color coinColor;
  const CoinAmountAndIcon(
      {Key? key, required this.amount, required this.coinColor})
      : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Row(
      children: [
        FaIcon(
          FontAwesomeIcons.coins,
          color: coinColor,
        ),
        BorderedText(
          strokeWidth: 5.0,
          strokeColor: Colors.black,
          child: Text(
            roundMoney(amount),
            style: TextStyle(
                fontSize: 20,
                letterSpacing: 1.2,
                color: Colors.white,
                fontWeight: FontWeight.bold),
          ),
        ),
      ],
    );
  }
}

class CoinNameAndAmount extends ConsumerWidget {
  final int amount;
  final String coinName;
  final Color coinColor;
  const CoinNameAndAmount(
      {Key? key,
      required this.amount,
      required this.coinColor,
      required this.coinName})
      : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Center(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 8.0),
            child: Column(
              children: [
                Text(
                  '$coinName',
                  style: TextStyle(fontSize: 12),
                ),
                Row(
                  children: [
                    FaIcon(
                      FontAwesomeIcons.coins,
                      size: 25,
                      color: coinColor,
                    ),
                    StrokeText(
                      text: '$amount',
                      size: 25,
                    ),
                  ],
                ),
              ],
            ),
          ),
          Row(
            children: [
              MoneyIncreaseButton(
                isIncrease: false,
              ),
              MoneyIncreaseButton()
            ],
          )
        ],
      ),
    );
  }
}

class MoneyIncreaseButton extends ConsumerWidget {
  final bool isIncrease;
  const MoneyIncreaseButton({
    Key? key,
    this.isIncrease = true,
  }) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Bounce(
      duration: Duration(milliseconds: 200),
      onPressed: () {
        // terrible solution, will work for 1 character for now
        switch (ref.read(quickSelectMoneyDisplay)) {
          case 1:
            isIncrease
                ? ref.watch(platinumProvider.notifier).state++
                : ref.watch(platinumProvider.notifier).state--;
            break;
          case 2:
            isIncrease
                ? ref.watch(goldProvider.notifier).state++
                : ref.watch(goldProvider.notifier).state--;
            break;
          case 3:
            isIncrease
                ? ref.watch(silverProvider.notifier).state++
                : ref.watch(silverProvider.notifier).state--;
            break;
          case 4:
            isIncrease
                ? ref.watch(copperProvider.notifier).state++
                : ref.watch(copperProvider.notifier).state--;
            break;
          default:
        }
      },
      child: Padding(
        padding: const EdgeInsets.all(2.0),
        child: Container(
          width: 80,
          decoration: BoxDecoration(
              color: ref.watch(themeProvider).primary,
              borderRadius: BorderRadius.circular(10),
              border: Border.all(
                color: Colors.white,
              ),
              boxShadow: [ref.watch(themeProvider).shadow]),
          child: Center(
              child: FaIcon(
            isIncrease ? FontAwesomeIcons.plus : FontAwesomeIcons.minus,
            color: Colors.white,
            size: 15,
          )),
        ),
      ),
    );
  }
}
