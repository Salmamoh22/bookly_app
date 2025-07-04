import 'package:dio/dio.dart';

class ApiService {
  final _baseUrl = 'https://library-api.postmanlabs.com/books';
  final Dio _dio;

  ApiService(this._dio);

  Future<Map<String, dynamic>> get({required String endpoint}) async {
    var response = await _dio.get('$_baseUrl$endpoint');
    return response.data;
  }
}
