import 'package:flutter_test/flutter_test.dart';
import 'package:split_it/modules/login/login_controller.dart';
import 'package:split_it/modules/login/login_services.dart';
import 'package:split_it/modules/login/login_state.dart';
import 'package:split_it/modules/login/models/user_model.dart';

class LoginServiceMock implements LoginService {
  @override
  Future<UserModel> googleSingIn() async {
    return UserModel(email: "joseharoldoparente@gmail.com", id: "id");
  }
}

void main() {
  late LoginController controller;
  setUp(() {
    controller = LoginController(service: LoginServiceMock(), onUpdate: () {});
  });

  test("Testando o Google SingIn retornando Sucesso", () async {
    expect(controller.state, isInstanceOf<LoginStateEmpty>());
    final states = <LoginState>[];
    controller.listen((state) => states.add(state));
    await controller.googleSingIn();
    expect(states[0], isInstanceOf<LoginStateLoading>());
    expect(states[1], isInstanceOf<LoginstateSuccess>());
  });
}
