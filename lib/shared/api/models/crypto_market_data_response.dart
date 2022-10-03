import 'package:json_annotation/json_annotation.dart';

import 'crypto_current_price_response.dart';

part 'crypto_market_data_response.g.dart';

@JsonSerializable()
class CryptoMarketDataResponse {
  final double price_change_percentage_24h;
  final CryptoCurrentPriceResponse current_price;

  CryptoMarketDataResponse({
    required this.price_change_percentage_24h,
    required this.current_price,
  });

  factory CryptoMarketDataResponse.fromJson(Map<String, dynamic> json) => _$CryptoMarketDataResponseFromJson(json);

  Map<String, dynamic> toJson() => _$CryptoMarketDataResponseToJson(this);
}
