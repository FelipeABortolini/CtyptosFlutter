import 'package:flutter_application_2/shared/api/models/get_all_cryptos_response.dart';
import 'package:flutter_application_2/shared/models/crypto_model.dart';
import 'package:flutter_application_2/shared/models/user_crypto_model.dart';
import 'package:flutter_application_2/shared/repositories/user_cryptos_repository.dart';

import '../models/user_list_cryptos_model.dart';

extension GetAllCryptosMapper on GetAllCryptosResponse {
  List<CryptoModel> toViewData() {
    UserListCryptosRepository repo = UserListCryptosRepository();
    UserListCryptosModel cryptos = repo.getCryptosListRepository();

    List ids = [];

    for (UserCryptoModel crypto in cryptos.listCryptos) {
      ids.add(crypto.cryptoId);
    }

    List<CryptoModel> list = listCryptos.map((crypto) {
      return CryptoModel(
        id: crypto.id,
        name: crypto.name,
        symbol: crypto.symbol,
        image: crypto.image.small,
        price: crypto.market_data.current_price.brl,
        variation: crypto.market_data.price_change_percentage_24h,
      );
    }).toList();

    list.retainWhere((crypto) => ids.contains(crypto.id));

    return list;
  }
}
