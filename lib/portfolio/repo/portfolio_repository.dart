import 'package:decimal/decimal.dart';
import '../../shared/repos/crypto_repository.dart';
import '../../shared/models/crypto_model.dart';

class PortfolioRepository extends CryptoRepository {

  Decimal calculateBalancePortfolioRepository(List<CryptoModel> cryptos) {
    Decimal walletBalance = Decimal.parse('0');
    for (CryptoModel crypto in cryptos) {
      crypto.value = Decimal.parse(crypto.amount.toString()) * crypto.price;
      walletBalance += crypto.value;
    }
    return walletBalance;
  }

  Decimal calculateCryptoValueRepository(Decimal priceCrypto, double amountCrypto) {
    return (priceCrypto * Decimal.parse(amountCrypto.toString()));
  }
}
