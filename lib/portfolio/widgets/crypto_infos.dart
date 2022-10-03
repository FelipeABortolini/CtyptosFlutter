import 'package:flutter/material.dart';

import 'package:flutter_application_2/shared/models/user_crypto_model.dart';
import 'package:flutter_application_2/shared/widgets/shimmer_widget.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../../shared/models/arguments_model.dart';
import '../../shared/providers/providers.dart';
import '../../shared/usecases/user_cryptos_usecase.dart';
import '../../shared/utils/app_colors.dart';
import '../../shared/widgets/circle_crypto_icon.dart';
import '../../shared/models/crypto_model.dart';
import '../../shared/widgets/rounded_grey_container.dart';
import 'crypto_monetary_details.dart';

class CryptoInfos extends HookConsumerWidget {
  final CryptoModel? cryptoInfo;
  final UserCryptoModel? userCrypto;
  final bool shimmer;

  const CryptoInfos({
    Key? key,
    required this.cryptoInfo,
    required this.userCrypto,
    required this.shimmer,
  }) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final historyInterval = ref.read(historyIntervalProvider);
    // void goDetailsPage() {
    //   historyInterval.setPricesHistory(cryptoInfo.historyPrice);
    //   historyInterval.changeIntervalDays(5);
    //   historyInterval.setMinXChart();
    //   historyInterval.setMinYChart();
    //   Navigator.pushNamed(
    //     context,
    //     CryptoDetailsPage.route,
    //     arguments: ArgumentsModel(cryptoInfo),
    //   );
    // }

    return ListTile(
      // onTap: () => goDetailsPage(),
      leading: ShimmerWidget(
        shimmer: shimmer,
        shimmerChild: Container(
          width: 45,
          height: 45,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(24),
            gradient: const LinearGradient(
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
              colors: [
                startGradientHide,
                endGradientHide,
              ],
            ),
          ),
        ),
        secondChild:
            CircleIconCrypto(icon: cryptoInfo?.image, shimmer: shimmer),
      ),
      title: ShimmerWidget(
        shimmer: shimmer,
        shimmerChild: Row(
          children: const [
            RoundedGreyContainer(
              height: 25,
              width: 45,
            ),
            SizedBox(width: 15),
          ],
        ),
        secondChild: Text(
          shimmer ? '' : cryptoInfo!.symbol.toUpperCase(),
          style: const TextStyle(fontSize: 19),
        ),
      ),
      subtitle: ShimmerWidget(
        shimmer: shimmer,
        shimmerChild: Row(
          children: const [
            RoundedGreyContainer(
              height: 15,
              width: 75,
            ),
            SizedBox(width: 5),
          ],
        ),
        secondChild: Text(
          shimmer ? '' : cryptoInfo!.name,
          style: const TextStyle(
            fontSize: 15,
            color: colorTextGrey,
          ),
        ),
      ),
      trailing: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          CryptoMonetaryDetails(
            cryptoInfo: cryptoInfo,
            userCrypto: userCrypto,
            shimmer: shimmer,
          ),
          IconButton(
            // onPressed: () => goDetailsPage(),
            onPressed: () {},
            icon: const Icon(Icons.keyboard_arrow_right),
            iconSize: 20,
            splashRadius: 20,
          ),
        ],
      ),
    );
  }
}
