import 'package:flutter/material.dart';
import 'package:myweed/components/button_login/button_login.dart';
import 'package:myweed/components/container_login/container_login.dart';
import 'package:myweed/shared/theme/colors.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final _media = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: AppColors.primary,
      body: Padding(
        padding: const EdgeInsets.only(left: 20, right: 20),
        child: InkWell(
          child: SingleChildScrollView(
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 80, bottom: 20),
                  child: Center(
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
                ContainerLogin(),
                SizedBox(height: 10),
                Row(
                  children: [
                    TextButton(
                      child: Text(
                        "Esqueceu sua senha?",
                        style: TextStyle(
                          color: Colors.white,
                        ),
                      ),
                      onPressed: () {},
                    ),
                  ],
                ),
                SizedBox(height: 12),
                ButtonLogin(
                  text: "Entrar",
                  corButton: AppColors.secundary,
                  corText: Colors.white,
                  onPressed: () {},
                ),
                SizedBox(height: 12),
                ButtonLogin(
                  text: "Cadastre-se",
                  corButton: AppColors.grey,
                  corText: AppColors.secundary,
                  onPressed: () {},
                ),
                SizedBox(height: 12),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    MaterialButton(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                      height: 50,
                      minWidth: 135,
                      color: AppColors.grey,
                      child: Container(
                        height: 30,
                        width: 30,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          color: Colors.blueGrey,
                          image: const DecorationImage(
                            image: AssetImage("assets/images/facebook.png"),
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                      onPressed: () {},
                    ),
                    MaterialButton(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                      height: 50,
                      minWidth: 135,
                      color: AppColors.grey,
                      child: Container(
                        height: 30,
                        width: 30,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          color: Colors.blueGrey,
                          image: const DecorationImage(
                            image: AssetImage("assets/images/google.png"),
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                      onPressed: () {},
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
