import 'package:dio/dio.dart';
import 'package:ibank_me/data/source/remote/request/auth/SignInRequest.dart';
import 'package:ibank_me/data/source/remote/request/auth/SignUpRequest.dart';
import 'package:ibank_me/data/source/remote/request/auth/SignUpVerifyRequest.dart';

class AuthApi {
  final Dio _dio;

  AuthApi(this._dio);

  Future<Response?> signUp(SignUpRequest signUpRequest) async {
    try {
      final response = await _dio.post(
        "/auth/sign-up",
        data: signUpRequest.toJson(),
      );
      return response;
    } catch (_) {}
    return null;
  }

  Future<Response?> signUpVerify(SignUpVerifyRequest signUpVerifyRequest) async {
    try {
      final response = await _dio.post(
        "/auth/sign-up/verify",
        data: signUpVerifyRequest.toJson(),
      );
      return response;
    } catch (_) {}
    return null;
  }

  Future<Response?> signIn(SignInRequest signInRequest) async {
    try {
      final response = await _dio.post(
        "/auth/sign-in",
        data: signInRequest.toJson(),
      );
      return response;
    } catch (_) {}
    return null;
  }
}
