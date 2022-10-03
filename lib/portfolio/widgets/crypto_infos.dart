import 'package:flutter/material.dart';
import '../../details/view/crypto_details_page.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../../shared/models/arguments_model.dart';
import '../../shared/providers/providers.dart';
import '../../shared/utils/app_colors.dart';
import '../../shared/widgets/circle_crypto_icon.dart';
import '../../shared/models/crypto_model.dart';
import 'crypto_monetary_details.dart';

class CryptoInfos extends HookConsumerWidget {
  final CryptoModel cryptoInfo;

  const CryptoInfos({
    Key? key,
    required this.cryptoInfo,
  }) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final historyInterval = ref.read(historyIntervalProvider);

    void goDetailsPage() {
      historyInterval.setPricesHistory(cryptoInfo.historyPrice);
      historyInterval.changeIntervalDays(5);
      historyInterval.setMinXChart();
      historyInterval.setMinYChart();
      Navigator.pushNamed(
        context,
        CryptoDetailsPage.route,
        arguments: ArgumentsModel(cryptoInfo),
      );
    }

    return ListTile(
      onTap: () => goDetailsPage(),
      leading: CircleIconCrypto(icon: cryptoInfo.icon),
      title: Text(
        cryptoInfo.initials,
        style: const TextStyle(fontSize: 19),
      ),
      subtitle: Text(
        cryptoInfo.name,
        style: const TextStyle(
          fontSize: 15,
          color: colorTextGrey,
        ),
      ),
      trailing: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          CryptoMonetaryDetails(
            cryptoInfo: cryptoInfo,
          ),
          IconButton(
            onPressed: () => goDetailsPage(),
            icon: const Icon(Icons.keyboard_arrow_right),
            iconSize: 20,
            splashRadius: 20,
          ),
        ],
      ),
    );
  }
}
