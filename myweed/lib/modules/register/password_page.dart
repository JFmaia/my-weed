import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:myweed/modules/register/register_controller.dart';
import 'package:myweed/shared/theme/colors.dart';
import 'package:provider/provider.dart';

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
        padding: const EdgeInsets.symmetric(horizontal: 40, vertical: 40),
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
              TextField(
                onChanged: (password) =>
                    _controller.onPasswordChanged(password),
                obscureText: !_controller.isVisible,
                decoration: InputDecoration(
                  //Icone de visualizar a senha.
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
                      _controller.isVisible = !_controller.isVisible;
                    },
                    //Mudando o estado do icone de visualização da senha.
                  ),
                  //Forma da caixa de texto e cor.
                  border: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.black),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  //Forma da caixa de texto e cor, depois de selecionada.
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                    borderSide: BorderSide(color: Colors.black),
                  ),
                  //Texto que fica antes da digitação.
                  hintText: "Senha",
                  //Distancia dentro da caixa de entrada de texto.
                  contentPadding:
                      EdgeInsets.symmetric(horizontal: 20, vertical: 20),
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
                      child: Icon(
                        Icons.check,
                        color: Colors.white,
                        size: 15,
                      ),
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
                      child: Icon(
                        Icons.check,
                        color: Colors.white,
                        size: 15,
                      ),
                    ),
                  ),
                  SizedBox(width: 10),
                  Text("Contém pelo menos 1 número"),
                ],
              ),
              SizedBox(height: 50),
              MaterialButton(
                height: 40,
                minWidth: double.infinity,
                onPressed: () {},
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
