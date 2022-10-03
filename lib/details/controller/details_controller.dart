import 'package:decimal/decimal.dart';

import '../../shared/models/crypto_model.dart';
import '../usecase/details_usecase.dart';

class DetailsController {
  final detailsUsecase = DetailsUsecase();

  Decimal getCurrentPrice(CryptoModel crypto){
    return detailsUsecase.getCurrentPrice(crypto);
  }

  double getPricePeriodSelected(List<List> history, int days){
    return detailsUsecase.getPricePeriodSelected(history, days);
  }

  double getVariationPeriodSelected(List<List> history, int days){
    return detailsUsecase.getVariationPeriodSelected(history, days);
  }

  Decimal getValueUser(double amount, Decimal price){
    return detailsUsecase.getValueUser(amount, price);
  }
}
