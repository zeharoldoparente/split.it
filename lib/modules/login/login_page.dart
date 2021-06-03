import 'package:flutter/material.dart';
import 'package:split_it/modules/login/login_controller.dart';
import 'package:split_it/modules/login/login_state.dart';
import 'package:split_it/modules/login/widgets/social_button.dart';
import 'package:split_it/theme/app_theme.dart';

class LoginPage extends StatefulWidget {
  LoginPage({Key? key}) : super(key: key);
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  late LoginController controller;

  @override
  void initState() {
    controller = LoginController(onUpdate: () {
      if (controller.state is LoginstateSuccess) {
        final user = (controller.state as LoginstateSuccess).user;
        Navigator.pushReplacementNamed(context, "/home", arguments: user);
      } else {}
      setState(() {});
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppTheme.colors.backgroundPrimary,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 40),
            child: Row(
              children: [
                Container(
                  width: 236,
                  child: Text(
                    "Divida suas contas com seus amigos",
                    style: AppTheme.textStyle.title,
                  ),
                ),
              ],
            ),
          ),
          Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 40),
                child: Container(
                  width: 330,
                  child: ListTile(
                    leading: Image.asset("assets/images/emoji.png"),
                    title: Text(
                      "Faça login com uma das contas abaixo",
                      style: AppTheme.textStyle.button,
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 50,
              ),
              if (controller.state is LoginStateLoading) ...[
                CircularProgressIndicator(),
              ] else if (controller.state is LoginstateFailure) ...[
                Text((controller.state as LoginstateFailure).message)
              ] else
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 35),
                  child: Container(
                    child: SocialButtonWidget(
                      textLabel: "Entrar com Google",
                      imagePath: "assets/images/google.png",
                      onTap: () {
                        controller.googleSingIn();
                      },
                    ),
                  ),
                ),
              /* FAZER VALIDAÇÃO DE BOTÃO DA APPLE OU HABILITAR BOTÕES EXTRA(E-MAIL OU ANÔNIMO) 
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 35),
                child: Container(
                    child: SocialButtonWidget(
                  textLabel: "Entrar com Apple",
                  imagePath: "assets/images/apple.png",
                  onTap: () {},
                )),
              ), */
            ],
          ),
        ],
      ),
    );
  }
}
