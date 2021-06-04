import 'package:flutter/material.dart';
import 'package:split_it/modules/login/login_services.dart';
import 'package:split_it/modules/login/login_state.dart';

class LoginController {
  LoginState state = LoginStateEmpty();
  VoidCallback onUpdate;
  final LoginService service;
  Function(LoginState state)? onChange;
  LoginController({required this.onUpdate, required this.service});

  Future<void> googleSingIn() async {
    try {
      state = LoginStateLoading();
      onUpdate();
      final user = await service.googleSingIn();
      state = LoginstateSuccess(user: user);
      onUpdate();
    } catch (error) {
      state = LoginstateFailure(message: error.toString());
      onUpdate();
    }
  }

  void update() {
    onUpdate();
    if (onChange != null) {
      onChange!(state);
    }
  }

  void listen(Function(LoginState state) onChange) {
    this.onChange = onChange;
  }
}
