import 'package:flutter/cupertino.dart';
import 'package:google_sign_in/google_sign_in.dart';

import 'package:split_it/modules/login/login_state.dart';
import 'package:split_it/modules/login/models/user_model.dart';

class LoginController {
  LoginState state = LoginStateEmpty();
  VoidCallback onUpdate;
  LoginController({
    required this.onUpdate,
  });

  Future<void> googleSingIn() async {
    GoogleSignIn _googleSignIn = GoogleSignIn(
      scopes: [
        'email',
      ],
    );
    try {
      state = LoginStateLoading();
      onUpdate();
      final account = await _googleSignIn.signIn();
      state = LoginstateSuccess(user: UserModel.google(account!));
      onUpdate();
    } catch (error) {
      state = LoginstateFailure(message: error.toString());
      onUpdate();
    }
  }
}
