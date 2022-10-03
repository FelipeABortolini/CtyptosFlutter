import 'package:decimal/decimal.dart';
import '../../shared/repos/crypto_repository.dart';

class DetailsRepository extends CryptoRepository {

  double getPricePeriodSelected(List<List> history, int days){
    return days == 5 ? history[0][0].toDouble() : history[days-1][0].toDouble();
  }

  double getVariationPeriodSelected(List<List> history, int days){
    double currentPrice = history[0][0].toDouble();
    double oldPrice = history[days-1][0].toDouble();
    return (currentPrice-oldPrice)/(oldPrice/100);
  }

  Decimal getValueUser(double amount, Decimal price){
    return (Decimal.parse(amount.toString()) * price);
  }
}
