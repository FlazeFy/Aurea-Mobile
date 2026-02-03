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
    final response = await dio.post(
      '/auths/login',
      data: request.toJson(),
    );

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
