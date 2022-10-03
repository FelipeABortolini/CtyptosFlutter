import 'package:flutter_application_2/shared/repositories/crypto_repository_provider.dart';
import 'package:flutter_application_2/shared/usecases/get_crypto_usecase.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../models/crypto_model.dart';

final getCryptoUsecase = Provider((ref) {
  return GetAllCryptosUsecase(ref.read(cryptoRepositoryProvider));
});

final cryptoProvider = FutureProvider<List<CryptoModel>>((ref) async {
  return ref.read(getCryptoUsecase).execute();
});
