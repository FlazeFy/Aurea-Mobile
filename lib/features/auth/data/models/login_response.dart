class LoginResponse {
  final String name;
  final String email;
  final String role;
  final String token;

  LoginResponse({
    required this.name,
    required this.email,
    required this.role,
    required this.token,
  });

  factory LoginResponse.fromJson(Map<String, dynamic> json) {
    final data = json['data'];

    return LoginResponse(
      name: data['name'],
      email: data['email'],
      role: data['role'],
      token: data['token'],
    );
  }
}
