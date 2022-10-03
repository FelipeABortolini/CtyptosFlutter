import 'package:decimal/decimal.dart';
import '../models/crypto_model.dart';
import '../models/user_crypto_model.dart';
import '../models/user_list_cryptos_model.dart';

class UserListCryptosRepository {
  UserListCryptosModel getCryptosListRepository() {
    return UserListCryptosModel(
      listCryptos: [
        UserCryptoModel(
          cryptoId: 'bitcoin',
          amount: 3.5,
          value: Decimal.parse('0'),
        ),
        UserCryptoModel(
          cryptoId: 'ethereum',
          amount: 3.5,
          value: Decimal.parse('0'),
        ),
        UserCryptoModel(
          cryptoId: 'litecoin',
          amount: 6.8,
          value: Decimal.parse('0'),
        ),
        UserCryptoModel(
          cryptoId: 'tether',
          amount: 3.5,
          value: Decimal.parse('0'),
        ),
        UserCryptoModel(
          cryptoId: 'binancecoin',
          amount: 3.5,
          value: Decimal.parse('0'),
        ),
        UserCryptoModel(
          cryptoId: 'cardano',
          amount: 3.5,
          value: Decimal.parse('0'),
        ),
        UserCryptoModel(
          cryptoId: 'polkadot',
          amount: 3.5,
          value: Decimal.parse('0'),
        ),
        UserCryptoModel(
          cryptoId: 'dogecoin',
          amount: 3.5,
          value: Decimal.parse('0'),
        ),
      ],
      totalBalance: Decimal.parse('0'),
    );
  }

  void calculateUserCryptoBalance(List<CryptoModel>? cryptos, UserListCryptosModel userCryptos) {
    String id = '';
    CryptoModel crypto;
    if(cryptos != null){
      for (UserCryptoModel userCrypto in userCryptos.listCryptos) {
        id = userCrypto.cryptoId;
        crypto = cryptos.firstWhere((element) => element.id == id);
        userCrypto.value = Decimal.parse(userCrypto.amount.toString()) * crypto.price;
      }
    }
  }

  void calculateTotalBalanceUserRepository(List<CryptoModel>? cryptos, UserListCryptosModel userCryptos) {
    String id = '';
    UserCryptoModel userCrypto;
    if(cryptos != null){
      for (CryptoModel crypto in cryptos) {
        id = crypto.id;
        userCrypto = userCryptos.listCryptos.firstWhere((element) => element.cryptoId == id);
        userCryptos.totalBalance += Decimal.parse(userCrypto.amount.toString()) * crypto.price;
      }
    }
  }
}
