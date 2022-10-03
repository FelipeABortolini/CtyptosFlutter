import 'package:decimal/decimal.dart';
import '../../shared/usecases/crypto_usecase.dart';

import '../repo/details_repository.dart';

class DetailsUsecase extends CryptoUsecase {
  final DetailsRepository detatilsRepository = DetailsRepository();

  double getPricePeriodSelected(List<List> history, int days){
    return detatilsRepository.getPricePeriodSelected(history, days);
  }

  double getVariationPeriodSelected(List<List> history, int days){
    return detatilsRepository.getVariationPeriodSelected(history, days);
  }

  Decimal getValueUser(double amount, Decimal price){
    return detatilsRepository.getValueUser(amount, price);
  }
}
