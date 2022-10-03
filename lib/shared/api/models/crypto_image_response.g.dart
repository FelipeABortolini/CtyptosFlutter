// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'crypto_image_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

CryptoImageResponse _$CryptoImageResponseFromJson(Map<String, dynamic> json) =>
    CryptoImageResponse(
      json['thumb'] as String,
      json['small'] as String,
      json['large'] as String,
    );

Map<String, dynamic> _$CryptoImageResponseToJson(
        CryptoImageResponse instance) =>
    <String, dynamic>{
      'thumb': instance.thumb,
      'small': instance.small,
      'large': instance.large,
    };
