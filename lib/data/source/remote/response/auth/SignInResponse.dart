class SignInResponse {
  SignInResponse({
    required this.accessToken,
  });

  final String accessToken;

  factory SignInResponse.fromJson(Map<String, dynamic> json) => SignInResponse(
        accessToken: json["access_token"] ?? "",
      );

  Map<String, dynamic> toJson() => {
        "access_token": accessToken,
      };
}