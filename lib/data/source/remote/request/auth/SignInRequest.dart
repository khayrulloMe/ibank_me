class SignInRequest {
  SignInRequest({
    required this.phoneNumber,
    required this.password,
  });

  final String phoneNumber;
  final String password;

  factory SignInRequest.fromJson(Map<String, dynamic> json) => SignInRequest(
        phoneNumber: json["phone_number"] ?? "",
        password: json["password"] ?? "",
      );

  Map<String, dynamic> toJson() => {
        "phone_number": phoneNumber,
        "password": password,
      };
}
