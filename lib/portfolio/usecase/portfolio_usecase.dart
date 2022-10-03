import 'package:decimal/decimal.dart';
import '../../shared/models/crypto_model.dart';
import '../../shared/usecases/crypto_usecase.dart';

import '../repo/portfolio_repository.dart';

class PortfolioUseCase extends CryptoUsecase {
  final PortfolioRepository portofolioRepository = PortfolioRepository();

  List<CryptoModel> getCryptosListUseCase() {
    return portofolioRepository.getCryptosListRepository();
  }

  Decimal calculateBalancePortfolioUsecase(List<CryptoModel> cryptos) {
    return portofolioRepository.calculateBalancePortfolioRepository(cryptos);
  }

  Decimal calculateCryptoValueUsecase(Decimal priceCrypto, double amountCrypto){
    return portofolioRepository.calculateCryptoValueRepository(priceCrypto, amountCrypto);
  }
}
