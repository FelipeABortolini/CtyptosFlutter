import 'package:decimal/decimal.dart';
import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../../conversion/view/conversion_page.dart';
import '../controller/details_controller.dart';
import '../widgets/chart_area.dart';

import '../../shared/models/crypto_model.dart';
import '../../shared/utils/app_colors.dart';
import '../../shared/widgets/custom_app_bar.dart';
import '../../shared/widgets/warren_button.dart';
import '../../shared/providers/providers.dart';
import '../widgets/crypto_info_rows_area.dart';
import '../widgets/crypto_title.dart';

class CryptoDetailsPage extends HookConsumerWidget {
  static const route = '/details';
  final CryptoModel crypto;

  const CryptoDetailsPage({
    Key? key,
    required this.crypto,
  }) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final List<List> cryptoHistoryPrice = crypto.historyPrice;
    final String cryptoName = crypto.name;
    final String cryptoInitials = crypto.initials;
    final String cryptoIcon = crypto.icon;
    final double cryptoAmount = crypto.amount;

    int intervalDays = ref.watch(historyIntervalProvider).getIntervalDays();

    final detailsController = DetailsController();
    double variation = detailsController.getVariationPeriodSelected(
        cryptoHistoryPrice, intervalDays);
    double pricePeriod = detailsController.getPricePeriodSelected(
        cryptoHistoryPrice, intervalDays);
    Decimal currentPrice = detailsController.getCurrentPrice(crypto);

    return Scaffold(
      appBar: CustomAppBar(
        width: MediaQuery.of(context).size.width,
        title: AppLocalizations.of(context)!.titleCryptoDetails,
      ),
      body: Container(
        color: white,
        padding: const EdgeInsets.only(top: 32),
        child: SingleChildScrollView(
          physics: const BouncingScrollPhysics(),
          child: Column(
            children: [
              CryptoTitle(
                name: cryptoName,
                initials: cryptoInitials,
                icon: cryptoIcon,
              ),
              ChartArea(
                currentPrice: currentPrice,
                cryptoHistoryPrice: cryptoHistoryPrice,
              ),
              CryptoInfoRowsArea(
                intervalDays: intervalDays,
                pricePeriod: pricePeriod,
                variation: variation,
                cryptoAmount: cryptoAmount,
                cryptoInitials: cryptoInitials,
                detailsController: detailsController,
                currentPrice: currentPrice,
              ),
              const SizedBox(height: 26),
              WarrenButton(
                text: AppLocalizations.of(context)!.convertCurrency,
                width: MediaQuery.of(context).size.width,
                onPressed: () => Navigator.pushNamed(context, ConversionPage.route),
              ),
              const SizedBox(height: 50),
            ],
          ),
        ),
      ),
    );
  }
}
