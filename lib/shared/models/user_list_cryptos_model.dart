import 'package:decimal/decimal.dart';

import 'user_crypto_model.dart';

class UserListCryptosModel {
  List<UserCryptoModel> listCryptos;
  Decimal totalBalance;
  
  UserListCryptosModel({
    required this.listCryptos,
    required this.totalBalance,
  });
}
