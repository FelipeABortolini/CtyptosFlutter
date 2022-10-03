import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import 'package:flutter_application_2/portfolio/widgets/portfolio_body.dart';
import 'package:flutter_application_2/shared/models/crypto_model.dart';

import '../../shared/providers/crypto_provider.dart';
import '../../shared/providers/providers.dart';
import '../../shared/providers/user_list_cryptos_provider.dart';
import '../../shared/widgets/bottom_nav_bar.dart';
import 'header_portfolio.dart';

class PortfolioStruct extends StatefulHookConsumerWidget {
  final List<CryptoModel>? cryptos;
  final bool shimmer;

  const PortfolioStruct({
    super.key,
    this.cryptos,
    required this.shimmer,
  });

  @override
  ConsumerState<PortfolioStruct> createState() => _PortfolioStructState();
}

class _PortfolioStructState extends ConsumerState<PortfolioStruct> {
  @override
  Widget build(BuildContext context) {
    final visible = ref.watch(visibleProvider.state);

    final getCryptosProvider = ref.watch(cryptoProvider);
    final listCryptoUserProvider = ref.watch(userListCryptosProvider);
    final userListCryptos = listCryptoUserProvider.getCryptosListRepository();

    return Scaffold(
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(160),
        child: HeaderPortfolio(
          changeVisibility: () {
            setState(() {
              visible.state = !visible.state;
            });
          },
          cryptoInfos: widget.cryptos,
          listCryptoUserProvider: listCryptoUserProvider,
          shimmer: widget.shimmer,
        ),
      ),
      body: PortolioBody(
        cryptos: widget.cryptos,
        userCryptos: userListCryptos,
        listCryptoUserProvider: listCryptoUserProvider,
        shimmer: widget.shimmer,
      ),
      bottomNavigationBar: const BottomNavBar(indexSelected: 0),
    );
  }
}
