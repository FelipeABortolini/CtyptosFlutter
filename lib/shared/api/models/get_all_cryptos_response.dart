import 'package:json_annotation/json_annotation.dart';

import 'package:flutter_application_2/shared/api/models/crypto_response.dart';

part 'get_all_cryptos_response.g.dart';

@JsonSerializable()
class GetAllCryptosResponse {
  final List<CryptoResponse> listCryptos;

  GetAllCryptosResponse(this.listCryptos);

  factory GetAllCryptosResponse.fromJson(Map<String, dynamic> json) =>
      _$GetAllCryptosResponseFromJson(json);

  Map<String, dynamic> toJson() => _$GetAllCryptosResponseToJson(this);
}
