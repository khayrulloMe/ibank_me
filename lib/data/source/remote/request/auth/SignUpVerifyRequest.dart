class SignUpVerifyRequest {
  SignUpVerifyRequest({
    required this.token,
    required this.code,
  });

  final String token;
  final String code;

  factory SignUpVerifyRequest.fromJson(Map<String, dynamic> json) => SignUpVerifyRequest(
        token: json["token"] ?? "",
        code: json["code"] ?? "",
      );

  Map<String, dynamic> toJson() => {
        "token": token,
        "code": code,
      };
}
