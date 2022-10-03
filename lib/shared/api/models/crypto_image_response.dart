import 'package:json_annotation/json_annotation.dart';

part 'crypto_image_response.g.dart';

@JsonSerializable()
class CryptoImageResponse {
  final String thumb;
  final String small;
  final String large;

  CryptoImageResponse(
    this.thumb,
    this.small,
    this.large,
  );

  factory CryptoImageResponse.fromJson(Map<String, dynamic> json) =>
      _$CryptoImageResponseFromJson(json);

  Map<String, dynamic> toJson() => _$CryptoImageResponseToJson(this);
}
