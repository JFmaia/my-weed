import 'package:animated_card/animated_card.dart';
import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:myweed/modules/login/login_controller.dart';
import 'package:myweed/shared/components/button_login/button_login.dart';
import 'package:myweed/shared/components/container_login/container_login.dart';
import 'package:myweed/shared/theme/colors.dart';
import 'package:flutter_modular/flutter_modular.dart';

/* Pagina de login, por onde é feita a autenticação de usuário, por email e senha ou google.*/
class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final controller = LoginController();
  @override
  Widget build(BuildContext context) {
    final _media = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: AppColors.primary,
      body: Padding(
        padding: const EdgeInsets.only(left: 20, right: 20),
        child: SafeArea(
          child: SingleChildScrollView(
            physics: BouncingScrollPhysics(
              parent: ScrollPhysics(
                parent: NeverScrollableScrollPhysics(),
              ),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Padding(
                  padding: const EdgeInsets.only(
                    top: 60,
                    bottom: 20,
                    left: 70,
                  ),
                  child: AnimatedCard(
                    direction: AnimatedCardDirection.top,
                    initDelay: Duration(microseconds: 5),
                    curve: Curves.decelerate,
                    child: Container(
                      height: _media.height * 0.25,
                      width: _media.width * 0.50,
                      child: Image.asset(
                        'assets/images/logo.png',
                        filterQuality: FilterQuality.high,
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                ),
                AnimatedCard(
                  direction: AnimatedCardDirection.right,
                  initDelay: Duration(microseconds: 1),
                  child: ContainerLogin(),
                ),
                SizedBox(height: 10),
                Row(
                  children: [
                    AnimatedCard(
                      direction: AnimatedCardDirection.right,
                      initDelay: Duration(microseconds: 1),
                      child: TextButton(
                        child: Text(
                          "Esqueceu sua senha?",
                          style: TextStyle(
                            color: Colors.white,
                          ),
                        ),
                        onPressed: () {},
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 12),
                AnimatedCard(
                  direction: AnimatedCardDirection.right,
                  initDelay: Duration(microseconds: 1),
                  child: ButtonPerson(
                    text: "Entrar",
                    corButton: AppColors.secundary,
                    corText: Colors.white,
                    onPressed: () => Modular.to.pushReplacementNamed('/home'),
                  ),
                ),
                SizedBox(height: 12),
                AnimatedCard(
                  direction: AnimatedCardDirection.right,
                  initDelay: Duration(microseconds: 1),
                  child: ButtonPerson(
                    text: "Cadastre-se",
                    corButton: AppColors.grey,
                    corText: AppColors.secundary,
                    onPressed: () =>
                        Modular.to.pushReplacementNamed('/registe'),
                  ),
                ),
                SizedBox(height: 12),
                Observer(
                  builder: (context) => AnimatedCard(
                    direction: AnimatedCardDirection.bottom,
                    initDelay: Duration(microseconds: 1),
                    child: MaterialButton(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                      height: 50,
                      minWidth: double.infinity,
                      color: AppColors.grey,
                      child: Container(
                        height: 30,
                        width: 30,
                        child: Image(
                          image: AssetImage("assets/images/google.png"),
                          fit: BoxFit.cover,
                        ),
                      ),
                      onPressed: () {
                        controller.login(context);
                      },
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
