import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:myweed/modules/login/login_controller.dart';
import 'package:myweed/shared/theme/colors.dart';

//Caixa de entrada de texto do Textfield personalizada.
class ContainerLogin extends StatefulWidget {
  const ContainerLogin({Key? key}) : super(key: key);

  @override
  _ContainerLoginState createState() => _ContainerLoginState();
}

class _ContainerLoginState extends State<ContainerLogin> {
  @override
  Widget build(BuildContext context) {
    final _controller = LoginController();
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: AppColors.grey,
      ),
      child: Column(
        children: [
          Container(
            padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 20),
            decoration: const BoxDecoration(
              border: Border(
                bottom: BorderSide(color: Color(0xFF020B04)),
              ),
            ),
            child: TextFormField(
              key: ValueKey("email"),
              decoration: InputDecoration(
                border: InputBorder.none,
                hintText: "Email",
                hintStyle: TextStyle(color: Colors.white54),
              ),
            ),
          ),
          Container(
            padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 20),
            child: Observer(
              builder: (context) => TextFormField(
                key: ValueKey("password"),
                obscureText: _controller.isVisible,
                decoration: InputDecoration(
                  border: InputBorder.none,
                  hintText: "Password",
                  hintStyle: TextStyle(color: Colors.white54),
                  suffixIcon: GestureDetector(
                    child: _controller.isVisible
                        ? Icon(
                            Icons.visibility_off,
                            color: AppColors.secundary,
                          )
                        : Icon(
                            Icons.visibility,
                            color: AppColors.secundary,
                          ),
                    onTap: () {
                      _controller.setVisible(!_controller.isVisible);
                    },
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
