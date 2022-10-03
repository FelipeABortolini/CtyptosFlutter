import 'package:flutter_application_2/shared/api/cryptos_endpoint.dart';
import 'package:flutter_application_2/shared/api/models/crypto_response.dart';
import 'package:flutter_application_2/shared/api/models/get_all_cryptos_response.dart';

class CryptosRepository {
  final CryptosEndpoint cryptosEndpoint;

  CryptosRepository({required this.cryptosEndpoint});

  Future<GetAllCryptosResponse> getAllCryptos() async {
    final result = await cryptosEndpoint.getAllCryptos();
    return GetAllCryptosResponse(
      List.from(
        result.data.map(
          (crypto) {
            return CryptoResponse.fromMap(crypto);
          },
        ),
      ),
    );
  }
}
