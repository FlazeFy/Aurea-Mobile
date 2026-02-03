import 'package:dio/dio.dart';

class ApiClient {
    late final Dio dio;

    ApiClient() {
        dio = Dio(
            BaseOptions(
                baseUrl: 'http://10.0.2.2:4444/api',
                headers: {
                  'Content-Type': 'application/json'
                },
            ),
        );
    }
}
