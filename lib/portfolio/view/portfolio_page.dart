import 'package:flutter/material.dart';
import '../../shared/providers/providers.dart';
import '../widgets/crypto_infos.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../../shared/widgets/bottom_nav_bar.dart';
import '../controller/portfolio_controller.dart';
import '../widgets/header_portfolio.dart';
import '../../shared/models/crypto_model.dart';

class PortfolioPage extends StatefulHookConsumerWidget {
  const PortfolioPage({Key? key}) : super(key: key);

  static const route = '/portfolio';

  @override
  ConsumerState<PortfolioPage> createState() => _PortfolioPageState();
}

class _PortfolioPageState extends ConsumerState<PortfolioPage> {
  @override
  Widget build(BuildContext context) {
    final assetCryptos = PortfolioController();
    final visible = ref.watch(visibleProvider.state);

    final cryptosList = assetCryptos.getCryptosList();

    for(CryptoModel crypto in cryptosList){
      crypto.price = assetCryptos.getCurrentPrice(crypto);
      crypto.value = assetCryptos.calculateCryptoValue(crypto.price, crypto.amount);
    }

    return Scaffold(
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(160),
        child: HeaderPortfolio(
          changeVisibility: () {
            setState(() {
              visible.state = !visible.state;
            });
          },
          cryptoInfos: cryptosList,
        ),
      ),
      body: ListView.separated(
        physics: const BouncingScrollPhysics(),
        itemCount: cryptosList.length,
        separatorBuilder: (context, index) => const Divider(thickness: 1),
        itemBuilder: ((context, index) {
          CryptoModel crypto = cryptosList[index];
          return index == 0
              ? Column(
                  children: [
                    const Divider(thickness: 1),
                    CryptoInfos(cryptoInfo: crypto),
                  ],
                )
              : CryptoInfos(cryptoInfo: crypto);
        }),
      ),
      bottomNavigationBar: const BottomNavBar(indexSelected: 0),
    );
  }
}
