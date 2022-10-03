// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'crypto_market_data_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

CryptoMarketDataResponse _$CryptoMarketDataResponseFromJson(
        Map<String, dynamic> json) =>
    CryptoMarketDataResponse(
      price_change_percentage_24h:
          (json['price_change_percentage_24h'] as num).toDouble(),
      current_price: CryptoCurrentPriceResponse.fromJson(
          json['current_price'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$CryptoMarketDataResponseToJson(
        CryptoMarketDataResponse instance) =>
    <String, dynamic>{
      'price_change_percentage_24h': instance.price_change_percentage_24h,
      'current_price': instance.current_price,
    };
