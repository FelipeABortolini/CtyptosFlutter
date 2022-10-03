// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'get_all_cryptos_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

GetAllCryptosResponse _$GetAllCryptosResponseFromJson(
        Map<String, dynamic> json) =>
    GetAllCryptosResponse(
      (json['listCryptos'] as List<dynamic>)
          .map((e) => CryptoResponse.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$GetAllCryptosResponseToJson(
        GetAllCryptosResponse instance) =>
    <String, dynamic>{
      'listCryptos': instance.listCryptos,
    };
