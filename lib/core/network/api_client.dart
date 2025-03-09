import 'package:dio/dio.dart';

class ApiClient{
  final Dio _dio = Dio();
  Future<Response> post(String url, Map<String, dynamic> data) async{
    return await _dio.post(url, data: data);
  }
}