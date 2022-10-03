import 'package:flutter/material.dart';
import 'package:flutter_application_2/portfolio/widgets/portfolio_struct.dart';
import 'package:flutter_application_2/shared/providers/crypto_provider.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class PortfolioPage extends HookConsumerWidget {
  const PortfolioPage({super.key});

  static const route = '/portfolio';

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final getCryptosProvider = ref.watch(cryptoProvider);
    return getCryptosProvider.when(
      data: (cryptos) => PortfolioStruct(
        cryptos: cryptos,
        shimmer: false,
      ),
      error: ((error, stackTrace) => const Text('Erro!')),
      loading: () => const PortfolioStruct(shimmer: true),
    );
  }
}
