import 'package:flutter/material.dart';
import 'package:myweed/shared/theme/colors.dart';

class PassawordPage extends StatelessWidget {
  const PassawordPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
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
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 40, vertical: 40),
        child: Column(
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
              onChanged: (password) => _onPasswordChanged(password),
              obscureText: !,
              decoration: InputDecoration(
                //Icone de visualizar a senha.
                suffixIcon: IconButton(
                  icon: _isVisible
                      ? Icon(
                          Icons.visibility,
                          color: Colors.black,
                        )
                      : Icon(
                          Icons.visibility_off,
                          color: Colors.grey,
                        ),
                  //Mudando o estado do icone de visualização da senha.
                  onPressed: () {
                    setState(() {
                      _isVisible = !_isVisible;
                    });
                  },
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
          ],
        ),
      ),
    );
  }
}
