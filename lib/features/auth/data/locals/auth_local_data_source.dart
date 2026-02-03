import 'package:flutter_secure_storage/flutter_secure_storage.dart';

class AuthLocalDataSource {
  static const _storage = FlutterSecureStorage();

  Future<void> saveSession({
    required String name,
    required String email,
    required String role,
    required String token,
  }) async {
    await _storage.write(key: 'name', value: name);
    await _storage.write(key: 'email', value: email);
    await _storage.write(key: 'role', value: role);
    await _storage.write(key: 'token', value: token);
  }

  Future<String?> getToken() async {
    return _storage.read(key: 'token');
  }

  Future<void> clear() async {
    await _storage.deleteAll();
  }
}
