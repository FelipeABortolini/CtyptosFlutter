import 'package:decimal/decimal.dart';

class CryptoModel {
  String name;
  String initials;
  String icon;
  Decimal price;
  Decimal value = Decimal.parse('0');
  double amount;
  List<List> historyPrice;
  
  CryptoModel({
    required this.name,
    required this.initials,
    required this.icon,
    required this.price,
    required this.amount,
    required this.historyPrice,
  });
}
