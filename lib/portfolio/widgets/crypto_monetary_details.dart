import 'package:flutter/material.dart';

import 'package:flutter_application_2/shared/models/user_crypto_model.dart';

import '../../shared/models/crypto_model.dart';
import '../../shared/utils/app_colors.dart';
import '../../shared/utils/format_currency.dart';
import '../../shared/widgets/hide_monetary.dart';
import '../../shared/widgets/shimmer_widget.dart';

class CryptoMonetaryDetails extends StatelessWidget {
  final CryptoModel? cryptoInfo;
  final UserCryptoModel? userCrypto;
  final bool shimmer;

  const CryptoMonetaryDetails({
    Key? key,
    required this.cryptoInfo,
    required this.userCrypto,
    required this.shimmer,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.end,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        ShimmerWidget(
          shimmer: shimmer,
          shimmerChild: HideMonetary(
            hiderWidth: 110,
            textWidth: 160,
            height: 18,
            align: Alignment.centerRight,
            color: colorTextBlack,
            shimmer: shimmer,
            text: '',
          ),
          secondChild: HideMonetary(
            hiderWidth: 110,
            textWidth: 160,
            height: 18,
            text: shimmer
                ? ''
                : formatCurrency.format(userCrypto!.value.toDouble()),
            fontSize: 19,
            align: Alignment.centerRight,
            color: colorTextBlack,
            shimmer: shimmer,
          ),
        ),
        const SizedBox(height: 3),
        ShimmerWidget(
          shimmer: shimmer,
          secondChild: HideMonetary(
            hiderWidth: 70,
            textWidth: 160,
            height: 18,
            text: shimmer
                ? ''
                : '${userCrypto!.amount} ${cryptoInfo!.symbol.toUpperCase()}',
            fontSize: 15,
            align: Alignment.centerRight,
            color: colorTextGrey,
            shimmer: shimmer,
          ),
          shimmerChild: HideMonetary(
            hiderWidth: 70,
            textWidth: 160,
            height: 18,
            text: '',
            align: Alignment.centerRight,
            color: colorTextGrey,
            shimmer: shimmer,
          ),
        ),
      ],
    );
  }
}
