import 'package:animated_card/animated_card.dart';
import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:myweed/modules/login/login_controller.dart';
import 'package:myweed/shared/components/button_login/button_login.dart';
import 'package:myweed/shared/models/form_model.dart';
import 'package:myweed/shared/theme/colors.dart';

/* Pagina de login, por onde é feita a autenticação de usuário, por email e senha ou google.*/
class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final controller = LoginController();
  final _formkey = GlobalKey<FormState>();
  final _formData = FormModel();

  Future<void> _submit() async {
    final isValid = _formkey.currentState?.validate() ?? false;
    if (!isValid) return;
    final response = await controller.loginEmailAndPassword(
      context,
      _formData.email,
      _formData.password,
    );
    if (response == "") {
      return;
    } else {
      _showError(response);
    }
  }

  void _showError(String erro) {
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: Text(
          erro,
          style: TextStyle(color: AppColors.secundary),
        ),
        backgroundColor: AppColors.grey,
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    final _media = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: AppColors.primary,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.only(left: 20, right: 20),
          child: SingleChildScrollView(
            physics: BouncingScrollPhysics(
              parent: ScrollPhysics(
                parent: NeverScrollableScrollPhysics(),
              ),
            ),
            child: Observer(
              builder: (context) => Column(
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
                        height: _media.height * 0.20,
                        width: _media.width * 0.50,
                        child: Image.asset(
                          'assets/images/logo.png',
                          filterQuality: FilterQuality.high,
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  AnimatedCard(
                    direction: AnimatedCardDirection.right,
                    initDelay: Duration(microseconds: 1),
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: AppColors.grey,
                      ),
                      child: Column(
                        children: [
                          Form(
                            key: _formkey,
                            child: Column(
                              children: [
                                Container(
                                  padding: const EdgeInsets.symmetric(
                                      vertical: 10, horizontal: 20),
                                  decoration: const BoxDecoration(
                                    border: Border(
                                      bottom:
                                          BorderSide(color: Color(0xFF020B04)),
                                    ),
                                  ),
                                  child: TextFormField(
                                    key: ValueKey("email"),
                                    initialValue: _formData.email,
                                    onChanged: (email) =>
                                        _formData.email = email,
                                    keyboardType: TextInputType.text,
                                    decoration: InputDecoration(
                                      border: InputBorder.none,
                                      hintText: "Email",
                                      hintStyle:
                                          TextStyle(color: Colors.white54),
                                    ),
                                    validator: (_email) {
                                      final email = _email ?? '';
                                      if (!email.contains('@')) {
                                        return "Email informado invalido!";
                                      }
                                      return null;
                                    },
                                  ),
                                ),
                                Container(
                                  padding: const EdgeInsets.symmetric(
                                      vertical: 10, horizontal: 20),
                                  child: TextFormField(
                                    key: ValueKey("password"),
                                    keyboardType: TextInputType.text,
                                    initialValue: _formData.password,
                                    obscureText: controller.isVisible,
                                    onChanged: (password) =>
                                        _formData.password = password,
                                    decoration: InputDecoration(
                                      border: InputBorder.none,
                                      hintText: "Password",
                                      hintStyle:
                                          TextStyle(color: Colors.white54),
                                      suffixIcon: GestureDetector(
                                        child: controller.isVisible
                                            ? Icon(
                                                Icons.visibility_off,
                                                color: AppColors.secundary,
                                              )
                                            : Icon(
                                                Icons.visibility,
                                                color: AppColors.secundary,
                                              ),
                                        onTap: () {
                                          controller.setVisible(
                                              !controller.isVisible);
                                        },
                                      ),
                                    ),
                                    validator: (_password) {
                                      final password = _password ?? '';
                                      if (password.length < 6) {
                                        return "A senha deve ter no mínimo 6 caracteres.";
                                      }
                                      return null;
                                    },
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
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
                      onPressed: () {
                        _submit();
                      },
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
                  AnimatedCard(
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
                        controller.loginGoogle(context);
                      },
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
