import 'package:ibank_me/data/dto/auth/auth_request/sign_up_request.dart';

class SignUpModel {
  SignUpModel({
    required this.firstName,
    required this.lastName,
    required this.phoneNumber,
    required this.password,
  });

  final String firstName;
  final String lastName;
  final String phoneNumber;
  final String password;
  SignUpRequest toRequest(){
    return SignUpRequest(firstName: firstName, lastName:lastName, phoneNumber: phoneNumber, password: password,
    );
  }
}
