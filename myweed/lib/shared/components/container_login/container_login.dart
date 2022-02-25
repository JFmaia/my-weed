import 'package:animated_card/animated_card.dart';
import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:myweed/modules/login/login_controller.dart';
import 'package:myweed/shared/models/form_model.dart';
import 'package:myweed/shared/theme/colors.dart';

import '../button_login/button_login.dart';

//Caixa de entrada de texto do Textfield personalizada.
class ContainerLogin extends StatefulWidget {
  final void Function(FormModel) onSubmit;
  const ContainerLogin({
    Key? key,
    required this.onSubmit,
  }) : super(key: key);

  @override
  _ContainerLoginState createState() => _ContainerLoginState();
}

class _ContainerLoginState extends State<ContainerLogin> {
  @override
  Widget build(BuildContext context) {
    final _controller = LoginController();
    final _formkey = GlobalKey<FormState>();
    final _formData = FormModel();

    void _submit() {
      final isValid = _formkey.currentState?.validate() ?? false;
      if (!isValid) return;
      widget.onSubmit(_formData);
    }

    return Column(
      children: [
        Container(
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
                          bottom: BorderSide(color: Color(0xFF020B04)),
                        ),
                      ),
                      child: TextFormField(
                        key: ValueKey("email"),
                        initialValue: _formData.email,
                        onChanged: (email) => _formData.email = email,
                        decoration: InputDecoration(
                          border: InputBorder.none,
                          hintText: "Email",
                          hintStyle: TextStyle(color: Colors.white54),
                        ),
                        validator: (_email) => _controller.verfEmail(_email!),
                      ),
                    ),
                    Container(
                      padding: const EdgeInsets.symmetric(
                          vertical: 10, horizontal: 20),
                      child: TextFormField(
                        key: ValueKey("password"),
                        initialValue: _formData.password,
                        obscureText: _controller.isVisible,
                        onChanged: (password) => _formData.password = password,
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
                        validator: (_password) =>
                            _controller.verfPassword(_password!),
                      ),
                    ),
                  ],
                ),
              ),
            ],
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
            onPressed: () => Modular.to.pushReplacementNamed('/registe'),
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
                _controller.loginGoogle(context);
              },
            ),
          ),
        ),
      ],
    );
  }
}
