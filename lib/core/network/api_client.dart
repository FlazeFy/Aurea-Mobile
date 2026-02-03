import 'package:dio/dio.dart';

class ApiClient {
  late final Dio dio;

  ApiClient() {
    dio = Dio(
      BaseOptions(
        baseUrl: 'http://127.0.0.1:5555/api/v1',
        headers: {
          'Content-Type': 'application/json'
        },
      ),
    );
  }
}
