class SignUpResponse {
  SignUpResponse({
    required this.token,
    required this.code,
  });

  final String token;
  final String code;

  factory SignUpResponse.fromJson(Map<String, dynamic> json) => SignUpResponse(
        token: json["token"] ?? "",
        code: json["code"] ?? "",
      );

  Map<String, dynamic> toJson() => {
        "token": token,
        "code": code,
      };
}
