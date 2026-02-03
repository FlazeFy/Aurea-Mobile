import 'package:aurea/features/auth/data/locals/auth_local_data_source.dart';
import 'package:aurea/features/auth/data/models/login_request.dart';
import 'package:aurea/features/auth/data/models/login_response.dart';
import 'package:aurea/features/auth/data/repositories/auth_repository.dart';
import 'package:dio/dio.dart';

class AuthRepositoryImpl implements AuthRepository {
    final Dio dio;
    final AuthLocalDataSource local;

    AuthRepositoryImpl({
        required this.dio,
        required this.local,
    });

    @override
    Future<LoginResponse> login(LoginRequest request) async {
        final response = await dio.post('/auth/login', data: request.toJson());
        final result = LoginResponse.fromJson(response.data);

        await local.saveSession(
            name: result.name,
            email: result.email,
            role: result.role,
            token: result.token,
        );

        return result;
    }
}
