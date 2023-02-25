
class SignUpReSend {
  SignUpReSend({
    required this.token,
  });

  final String token;

  factory SignUpReSend.fromJson(Map<String, dynamic> json) => SignUpReSend(
    token: json["token"]??"",
  );

  Map<String, dynamic> toJson() => {
    "token": token,
  };
}
