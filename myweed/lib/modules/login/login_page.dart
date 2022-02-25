import 'package:animated_card/animated_card.dart';
import 'package:flutter/material.dart';
import 'package:myweed/modules/login/login_controller.dart';
import 'package:myweed/shared/components/container_login/container_login.dart';
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
  Future<void> handleSubmit(FormModel dataForm) async {
    final response = await controller.loginEmailAndPassword(
      context,
      dataForm.email,
      dataForm.password,
    );
    if (response.isEmpty) {
      controller.setLoading(false);
    } else {
      controller.setLoading(false);
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
                  child: ContainerLogin(
                    onSubmit: handleSubmit,
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
