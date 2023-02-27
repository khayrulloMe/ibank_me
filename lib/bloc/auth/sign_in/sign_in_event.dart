part of 'sign_in_bloc.dart';

@immutable
abstract class SignInEvent {

}

class Submit extends SignInEvent{
  final SignInRequest signInRequest;
  Submit(this.signInRequest);

}
