import 'package:dio/dio.dart';
import 'package:flutter_application_2/shared/api/cryptos_endpoint.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

final cryptosEndpointProvider = Provider((ref) {
  final dio = Dio(BaseOptions(
    baseUrl: 'https://api.coingecko.com/api/v3',
  ));
  return CryptosEndpoint(dio);
});
