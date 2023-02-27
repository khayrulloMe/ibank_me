import 'dart:io';

import 'package:dio/dio.dart';

import '../../dto/auth/auth_request/sign_in_request.dart';
import '../../dto/auth/auth_request/sign_up_request.dart';
import '../../dto/auth/auth_response/sign_in_response.dart';

class AuthApi {
  final Dio _dio;

  AuthApi(this._dio);

  Future<Response?> signUp(SignUpRequest signUpRequest) async {
    try {
      final response = await _dio.post(
        "/auth/sign-up",

        data: signUpRequest.toJson(),

        // options: Options(headers: {
        //   HttpHeaders.contentTypeHeader: "application/json",
        // }),

      );

      return response;
    } catch (e) {
      if (e is DioError) {

      }
    }
    return null;
  }

  Future<Response> signIn(SignInRequest signInRequest) async {
    final response = await _dio.post(
      "/auth/sign-in",
      data: signInRequest.toJson(),
    );

    return response;
  }
}
