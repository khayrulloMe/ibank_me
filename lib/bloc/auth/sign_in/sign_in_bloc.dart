import 'dart:io';

import 'package:bloc/bloc.dart';
import 'package:dio/dio.dart';
import 'package:ibank_me/data/source/remote/api/auth_api.dart';
import 'package:ibank_me/data/source/remote/request/auth/SignInRequest.dart';
import 'package:meta/meta.dart';

part 'sign_in_event.dart';

part 'sign_in_state.dart';

final AuthApi _api = AuthApi(
  Dio(
    BaseOptions(headers: {
      HttpHeaders.contentTypeHeader: "application/json",
    }, baseUrl: "http://206.189.128.74/api"),
  ),
);

class SignInBloc extends Bloc<SignInEvent, SignInState> {
  SignInBloc() : super(const SignInState()) {
    on<Submit>(
      (event, emit) async {
        emit(state.copyWith(status: Status.loading));
        final response = await _api.signIn(event.signInRequest);
        if (response != null && response.statusCode != null) {
          if (response.statusCode! >= 200 && response.statusCode! < 300) {
            emit(state.copyWith(status: Status.success));
          }
        }
      },
    );
  }
}
