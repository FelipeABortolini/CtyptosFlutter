import 'package:flutter_application_2/shared/mapper/get_all_cryptos_mapper.dart';
import 'package:flutter_application_2/shared/repositories/crypto_repository.dart';

import '../models/crypto_model.dart';

class GetAllCryptosUsecase {
  final CryptosRepository _repository;

  GetAllCryptosUsecase(this._repository);

  Future<List<CryptoModel>> execute() async {
    final response = await _repository.getAllCryptos();
    return response.toViewData();
  }
}
