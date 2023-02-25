import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'sign_up_verify_event.dart';
part 'sign_up_verify_state.dart';

class SignUpVerifyBloc extends Bloc<SignUpVerifyEvent, SignUpVerifyState> {
  SignUpVerifyBloc() : super(SignUpVerifyInitial()) {
    on<SignUpVerifyEvent>((event, emit) {
      // TODO: implement event handler
    });
  }
}
