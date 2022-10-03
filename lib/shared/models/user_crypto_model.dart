import 'package:decimal/decimal.dart';

class UserCryptoModel {
  String cryptoId;
  double amount;
  Decimal value;

  UserCryptoModel({
    required this.cryptoId,
    required this.amount,
    required this.value,
  });
}
