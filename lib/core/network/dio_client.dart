
import 'package:aurea/core/network/auth_interceptor.dart';
import 'package:aurea/features/auth/data/locals/auth_local_data_source.dart';
import 'package:dio/dio.dart';

class DioClient {
  static Dio create(AuthLocalDataSource authLocalDataSource) {
    final dio = Dio(
      BaseOptions(
        baseUrl: 'http://10.0.2.2:4444/api',
        connectTimeout: const Duration(seconds: 30),
        receiveTimeout: const Duration(seconds: 30),
        headers: {
          'Content-Type': 'application/json',
        },
      ),
    );

    dio.interceptors.add(
      AuthInterceptor(authLocalDataSource: authLocalDataSource),
    );

    return dio;
  }
}