class BaseMessageResponse {
  final String message;

  BaseMessageResponse({required this.message});

  factory BaseMessageResponse.fromJson(Map<String, dynamic> json) {
    return BaseMessageResponse(
      message: json['message'],
    );
  }
}
