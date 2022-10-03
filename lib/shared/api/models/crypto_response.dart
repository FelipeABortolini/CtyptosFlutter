import 'package:decimal/decimal.dart';
import 'package:json_annotation/json_annotation.dart';

import 'crypto_current_price_response.dart';
import 'crypto_image_response.dart';
import 'crypto_market_data_response.dart';

part 'crypto_response.g.dart';

@JsonSerializable()
class CryptoResponse {
  final String id;
  final String symbol;
  final String name;
  final CryptoImageResponse image;
  final CryptoMarketDataResponse market_data;

  CryptoResponse({
    required this.id,
    required this.symbol,
    required this.name,
    required this.image,
    required this.market_data,
  });

  Map<String, dynamic> toMap() {
    final result = <String, dynamic>{};

    result.addAll({'id': id});
    result.addAll({'symbol': symbol});
    result.addAll({'name': name});
    result.addAll({'image': image});
    result.addAll({'market_data': market_data});

    return result;
  }

  factory CryptoResponse.fromMap(Map<String, dynamic> map) {
    return CryptoResponse(
      id: map['id'] ?? '',
      symbol: map['symbol'] ?? '',
      name: map['name'] ?? '',
      image: CryptoImageResponse(
          map['image']['thumb'], map['image']['small'], map['image']['large']),
      market_data: CryptoMarketDataResponse(
          current_price: CryptoCurrentPriceResponse(
            brl: Decimal.parse(
              map['market_data']['current_price']['brl'].toString(),
            ),
          ),
          price_change_percentage_24h: map['market_data']
              ['price_change_percentage_24h']),
    );
  }

  factory CryptoResponse.fromJson(Map<String, dynamic> json) =>
      _$CryptoResponseFromJson(json);

  Map<String, dynamic> toJson() => _$CryptoResponseToJson(this);
}
