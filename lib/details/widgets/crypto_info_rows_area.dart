import 'package:decimal/decimal.dart';
import 'package:flutter/material.dart';
import 'crypto_info_row.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

import '../../shared/utils/format_currency.dart';
import '../../shared/utils/styles.dart';
import '../controller/details_controller.dart';

class CryptoInfoRowsArea extends StatelessWidget {
  const CryptoInfoRowsArea({
    Key? key,
    required this.intervalDays,
    required this.pricePeriod,
    required this.variation,
    required this.cryptoAmount,
    required this.cryptoInitials,
    required this.detailsController,
    required this.currentPrice,
  }) : super(key: key);

  final int intervalDays;
  final double pricePeriod;
  final double variation;
  final double cryptoAmount;
  final String cryptoInitials;
  final DetailsController detailsController;
  final Decimal currentPrice;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CryptoInfoRow(
          textInfo: intervalDays == 5
              ? AppLocalizations.of(context)!.currentPrice
              : '${AppLocalizations.of(context)!.price} ${intervalDays}D',
          valueInfo: formatCurrency.format(pricePeriod),
          styleText: textInfoRowsDetailsStyle(),
          styleValue: valuesInfoRowsDetailsStyle(),
          monetaryData: false,
        ),
        CryptoInfoRow(
          textInfo: intervalDays == 5
              ? AppLocalizations.of(context)!.variation24
              : '${AppLocalizations.of(context)!.variation} ${intervalDays}D',
          valueInfo: variation > 0
              ? '+${variation.toStringAsFixed(2)}%'
              : '${variation.toStringAsFixed(2)}%',
          styleText: textInfoRowsDetailsStyle(),
          styleValue: valueVariationStyle(variation),
          monetaryData: false,
        ),
        CryptoInfoRow(
          textInfo: AppLocalizations.of(context)!.amount,
          valueInfo: '$cryptoAmount $cryptoInitials',
          styleText: textInfoRowsDetailsStyle(),
          styleValue: valuesInfoRowsDetailsStyle(),
          monetaryData: true,
        ),
        CryptoInfoRow(
          textInfo: AppLocalizations.of(context)!.value,
          valueInfo: formatCurrency.format(detailsController
              .getValueUser(cryptoAmount, currentPrice)
              .toDouble()),
          styleText: textInfoRowsDetailsStyle(),
          styleValue: valuesInfoRowsDetailsStyle(),
          monetaryData: true,
        ),
      ],
    );
  }
}
