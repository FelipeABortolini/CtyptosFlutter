import 'package:decimal/decimal.dart';

class CryptoModel {
  String id;
  String name;
  String symbol;
  String image;
  Decimal price;
  // List<List> historyPrice;
  double variation;
  
  CryptoModel({
    required this.id,
    required this.name,
    required this.symbol,
    required this.image,
    required this.price,
    // required this.historyPrice,
    required this.variation,
  });
}
