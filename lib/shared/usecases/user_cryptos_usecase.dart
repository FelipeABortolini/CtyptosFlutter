import '../models/crypto_model.dart';
import '../models/user_list_cryptos_model.dart';
import '../repositories/user_cryptos_repository.dart';

class UserListCryptosUsecase {
  UserListCryptosRepository repository = UserListCryptosRepository();

  void calculateUserCryptoBalance(List<CryptoModel>? cryptos, UserListCryptosModel userCryptos) {
    repository.calculateUserCryptoBalance(cryptos, userCryptos);
  }

  void calculateTotalBalanceUserRepository(List<CryptoModel>? cryptos, UserListCryptosModel userCryptos) {
    return repository.calculateTotalBalanceUserRepository(cryptos, userCryptos);
  }

  UserListCryptosModel getCryptosListRepository(){
    return repository.getCryptosListRepository();
  }
}
