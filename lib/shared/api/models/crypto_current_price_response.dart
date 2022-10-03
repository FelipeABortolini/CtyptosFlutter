import 'package:decimal/decimal.dart';
import 'package:json_annotation/json_annotation.dart';

part 'crypto_current_price_response.g.dart';

@JsonSerializable()
class CryptoCurrentPriceResponse {
  final Decimal brl;

  CryptoCurrentPriceResponse({
    required this.brl,
  });

  factory CryptoCurrentPriceResponse.fromJson(Map<String, dynamic> json) => _$CryptoCurrentPriceResponseFromJson(json);

  Map<String, dynamic> toJson() => _$CryptoCurrentPriceResponseToJson(this);
}
