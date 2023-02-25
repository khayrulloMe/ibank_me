
class SignUpVerify {
  SignUpVerify({
    required this.token,
    required this.code,
  });

  final String token;
  final String code;

  factory SignUpVerify.fromJson(Map<String, dynamic> json) => SignUpVerify(
    token: json["token"]??"",
    code: json["code"]??"",
  );

  Map<String, dynamic> toJson() => {
    "token": token,
    "code": code,
  };
}
