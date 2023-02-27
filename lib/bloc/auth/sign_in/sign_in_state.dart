part of 'sign_in_bloc.dart';

@immutable
class SignInState {
  final Status status;
  final String message;

  const SignInState({this.status = Status.initial, this.message = ""});

  SignInState copyWith({
    Status? status,
    String? message,
  }) {
    return SignInState(
      status: status ?? this.status,
      message: message ?? this.message,
    );
  }
}

enum Status { initial, loading, success, fail }
