class SignUpResponse {
  SignUpResponse({
    required this.message,
    required this.errors,
  });

  final String message;
  final Errors errors;

  factory SignUpResponse.fromJson(Map<String, dynamic> json) => SignUpResponse(
    message: json["message"],
    errors: Errors.fromJson(json["errors"]),
  );

  Map<String, dynamic> toJson() => {
    "message": message,
    "errors": errors.toJson(),
  };
}

class Errors {
  Errors({
    required this.firstName,
    required this.lastName,
    required this.phoneNumber,
    required this.password,
  });

  final List<String> firstName;
  final List<String> lastName;
  final List<String> phoneNumber;
  final List<String> password;

  factory Errors.fromJson(Map<String, dynamic> json) => Errors(
    firstName: List<String>.from(json["first_name"].map((x) => x))??[],
    lastName: List<String>.from(json["last_name"].map((x) => x))??[],
    phoneNumber: List<String>.from(json["phone_number"].map((x) => x))??[],
    password: List<String>.from(json["password"].map((x) => x))??[],
  );

  Map<String, dynamic> toJson() => {
    "first_name": List<dynamic>.from(firstName.map((x) => x)),
    "last_name": List<dynamic>.from(lastName.map((x) => x)),
    "phone_number": List<dynamic>.from(phoneNumber.map((x) => x)),
    "password": List<dynamic>.from(password.map((x) => x)),
  };
}
