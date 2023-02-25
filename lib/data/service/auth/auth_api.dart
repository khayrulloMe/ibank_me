import 'dart:io';

import 'package:dio/dio.dart';
import 'package:ibank_me/data/dto/auth/auth_request/sign_in_request.dart';
import 'package:ibank_me/data/dto/auth/auth_request/sign_up_request.dart';
import 'package:ibank_me/data/dto/auth/auth_response/sign_in_response.dart';
import 'package:ibank_me/data/dto/auth/auth_response/sign_up_response.dart';
import 'package:ibank_me/data/model/sign_up_model.dart';

class AuthApi {
  final Dio _dio;

  AuthApi(this._dio);

  Future<Response> signUp(SignUpRequest signUpRequest) async {

      final response = await _dio.post("/auth/sign-up",data: {
        'firstName': "Asad", 'lastName': "Masad", 'phoneNumber': "+998997702395", 'password': "122345trewq"
      }, options: Options(headers: {
        HttpHeaders.contentTypeHeader: "application/json",
      }),);
return response;

  }
  Future<void> signIn(SignInRequest signInRequest)async{
      final response = await _dio.post("/auth/sign-in",data: signInRequest.toJson(), options: Options(headers: {
        HttpHeaders.contentTypeHeader: "application/json",
      }),);
print(response.data);


  }
}
