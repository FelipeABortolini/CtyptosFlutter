import 'package:flutter/material.dart';
import 'package:flutter_application_2/shared/widgets/shimmer_widget.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../../shared/models/crypto_model.dart';
import '../../shared/providers/providers.dart';
import '../../shared/usecases/user_cryptos_usecase.dart';
import '../../shared/utils/app_colors.dart';
import '../../shared/utils/format_currency.dart';
import '../../shared/utils/styles.dart';
import '../../shared/widgets/hide_monetary.dart';

class HeaderPortfolio extends HookConsumerWidget {
  final VoidCallback changeVisibility;
  final List<CryptoModel>? cryptoInfos;
  final UserListCryptosUsecase listCryptoUserProvider;
  final bool shimmer;

  const HeaderPortfolio({
    super.key,
    required this.changeVisibility,
    required this.cryptoInfos,
    required this.listCryptoUserProvider,
    required this.shimmer,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final visible = ref.watch(visibleProvider.state);
    final userListCryptos = listCryptoUserProvider.getCryptosListRepository();
    listCryptoUserProvider.calculateTotalBalanceUserRepository(
        cryptoInfos, userListCryptos);

    return Padding(
      padding: const EdgeInsets.only(top: 40, left: 30, right: 30),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                AppLocalizations.of(context)!.titlePortfolio,
                style: titleH1Montserrat32Style(pinkWarren),
              ),
              IconButton(
                onPressed: () => changeVisibility(),
                icon: visible.state
                    ? const Icon(Icons.visibility)
                    : const Icon(Icons.visibility_off),
                iconSize: 35,
                splashRadius: 20,
              ),
            ],
          ),
          const SizedBox(height: 5),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              ShimmerWidget(
                shimmer: shimmer,
                shimmerChild: Container(
                  alignment: Alignment.centerLeft,
                  child: HideMonetary(
                    hiderWidth: 200,
                    textWidth: 310,
                    height: 39,
                    text: formatCurrency
                        .format(userListCryptos.totalBalance.toDouble()),
                    fontSize: 32,
                    align: Alignment.centerLeft,
                    color: colorTextBlack,
                    style: totalBalanceUserStyle(),
                    shimmer: true,
                  ),
                ),
                secondChild: Container(
                  alignment: Alignment.centerLeft,
                  child: HideMonetary(
                    hiderWidth: 200,
                    textWidth: 310,
                    height: 39,
                    text: formatCurrency
                        .format(userListCryptos.totalBalance.toDouble()),
                    fontSize: 32,
                    align: Alignment.centerLeft,
                    color: colorTextBlack,
                    style: totalBalanceUserStyle(),
                    shimmer: shimmer,
                  ),
                ),
              ),
              Text(
                AppLocalizations.of(context)!.totalCoinValue,
                style: subtitleGreyStyle(),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
