import 'package:aurea/features/auth/data/locals/auth_local_data_source.dart';
import 'package:dio/dio.dart';

class ApiClient {
    late final Dio dio;

    ApiClient._internal(AuthLocalDataSource local) {
        dio = Dio(
            BaseOptions(
                baseUrl: 'http://10.0.2.2:4444/api',
                headers: {'Content-Type': 'application/json'},
            ),
        );

        dio.interceptors.add(
            InterceptorsWrapper(
                onRequest: (options, handler) async {
                    final token = await local.getToken();
                    if (token != null && token.isNotEmpty) {
                        options.headers['Authorization'] = 'Bearer $token';
                    }
                    handler.next(options);
                },
            ),
        );
    }

    static ApiClient? _instance;

    factory ApiClient({required AuthLocalDataSource local}) {
        _instance ??= ApiClient._internal(local);
        return _instance!;
    }
}

