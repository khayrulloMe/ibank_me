class SignUpRequest {
  SignUpRequest({
    required this.firstName,
    required this.lastName,
    required this.phoneNumber,
    required this.password,
  });

  final String firstName;
  final String lastName;
  final String phoneNumber;
  final String password;

  factory SignUpRequest.fromJson(Map<String, dynamic> json) => SignUpRequest(
        firstName: json["first_name"] ?? "",
        lastName: json["last_name"] ?? "",
        phoneNumber: json["phone_number"] ?? "",
        password: json["password"] ?? "",
      );

  Map<String, dynamic> toJson() => {
        "first_name": firstName,
        "last_name": lastName,
        "phone_number": phoneNumber,
        "password": password,
      };
}
