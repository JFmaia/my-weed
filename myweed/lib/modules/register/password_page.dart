import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:myweed/modules/register/register_controller.dart';
import 'package:myweed/shared/theme/colors.dart';
import 'package:provider/provider.dart';

//Pagina da validação da senha que estar sendo criada.
class PassawordPage extends StatelessWidget {
  const PassawordPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final _controller = Provider.of<RegisterController>(context);
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: AppColors.primary,
        leading: BackButton(
          color: AppColors.secundary,
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ),
      body: SingleChildScrollView(
        physics: BouncingScrollPhysics(
          parent: ScrollPhysics(
            parent: NeverScrollableScrollPhysics(),
          ),
        ),
        padding: const EdgeInsets.symmetric(horizontal: 40, vertical: 80),
        child: Observer(
          builder: (context) => Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Center(
                child: Text(
                  "Crie sua senha!",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 26,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Text(
                "Por favor, crie uma senha segura incluindo os seguintes critérios abaixo.",
                textAlign: TextAlign.center,
                style: TextStyle(
                    fontSize: 16, height: 1.5, color: Colors.grey.shade600),
              ),
              SizedBox(height: 30),
              Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: AppColors.grey,
                ),
                padding:
                    const EdgeInsets.symmetric(vertical: 10, horizontal: 20),
                child: Observer(
                  builder: (context) => TextField(
                    onChanged: (password) =>
                        _controller.onPasswordChanged(password),
                    obscureText: !_controller.isVisible,
                    decoration: InputDecoration(
                      border: InputBorder.none,
                      hintText: "Password",
                      hintStyle: TextStyle(color: Colors.white54),
                      suffixIcon: GestureDetector(
                        child: _controller.isVisible
                            ? Icon(
                                Icons.visibility,
                                color: AppColors.secundary,
                              )
                            : Icon(
                                Icons.visibility_off,
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
              SizedBox(
                height: 30,
              ),
              Row(
                children: [
                  AnimatedContainer(
                    duration: Duration(milliseconds: 500),
                    width: 20,
                    height: 20,
                    decoration: BoxDecoration(
                      color: _controller.isPasswordCharacters
                          ? AppColors.secundary
                          : Colors.transparent,
                      border: _controller.isPasswordCharacters
                          ? Border.all(color: Colors.transparent)
                          : Border.all(color: Colors.white),
                      borderRadius: _controller.isPasswordCharacters
                          ? BorderRadius.circular(10)
                          : BorderRadius.circular(5),
                    ),
                    child: Center(
                      child: _controller.isPasswordCharacters
                          ? Icon(
                              Icons.check,
                              color: Colors.white,
                              size: 15,
                            )
                          : null,
                    ),
                  ),
                  SizedBox(width: 10),
                  Text("Contém pelo menos 8 caracteres"),
                ],
              ),
              SizedBox(height: 10),
              Row(
                children: [
                  AnimatedContainer(
                    duration: Duration(milliseconds: 500),
                    width: 20,
                    height: 20,
                    decoration: BoxDecoration(
                      color: _controller.isPasswordNumber
                          ? AppColors.secundary
                          : Colors.transparent,
                      border: _controller.isPasswordNumber
                          ? Border.all(color: Colors.transparent)
                          : Border.all(color: Colors.white),
                      borderRadius: _controller.isPasswordNumber
                          ? BorderRadius.circular(10)
                          : BorderRadius.circular(5),
                    ),
                    child: Center(
                      child: _controller.isPasswordNumber
                          ? Icon(
                              Icons.check,
                              color: Colors.white,
                              size: 15,
                            )
                          : null,
                    ),
                  ),
                  SizedBox(width: 10),
                  Text("Contém pelo menos 1 número"),
                ],
              ),
              SizedBox(height: 60),
              MaterialButton(
                height: 50,
                minWidth: double.infinity,
                onPressed: () {
                  Navigator.pushNamed(context, "/registe_image");
                },
                color: AppColors.secundary,
                child: Text(
                  "Criar",
                  style: TextStyle(color: Colors.white),
                ),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
