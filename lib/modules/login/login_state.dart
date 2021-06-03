import 'package:split_it/modules/login/models/user_model.dart';

abstract class LoginState {}

class LoginStateEmpty extends LoginState {}

class LoginStateLoading extends LoginState {}

class LoginstateFailure extends LoginState {
  final String message;
  LoginstateFailure({required this.message});
}

class LoginstateSuccess extends LoginState {
  final UserModel user;
  LoginstateSuccess({
    required this.user,
  });
}
