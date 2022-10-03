import 'package:decimal/decimal.dart';
import '../repos/crypto_repository.dart';

import '../models/crypto_model.dart';

class CryptoUsecase {
  CryptoRepository repository = CryptoRepository();

  Decimal getCurrentPrice(CryptoModel crypto){
    return repository.getCurrentPrice(crypto);
  }
}
