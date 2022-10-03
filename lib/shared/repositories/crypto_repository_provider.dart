import 'package:flutter_application_2/shared/api/cryptos_endpoint_provider.dart';
import 'package:flutter_application_2/shared/repositories/crypto_repository.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

final cryptoRepositoryProvider = Provider(
  (ref) => CryptosRepository(
    cryptosEndpoint: ref.read(cryptosEndpointProvider),
  ),
);
