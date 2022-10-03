import 'package:dio/dio.dart';

class CryptosEndpoint {
  final Dio _dio;

  CryptosEndpoint(this._dio);

  Future<Response> getAllCryptos() {
    return _dio.get('/coins');
  }
}
