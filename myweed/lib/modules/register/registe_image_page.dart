import 'package:flutter/material.dart';
import 'package:myweed/shared/theme/colors.dart';

class RegisterImage extends StatefulWidget {
  const RegisterImage({Key? key}) : super(key: key);

  @override
  _RegisterImageState createState() => _RegisterImageState();
}

class _RegisterImageState extends State<RegisterImage> {
  @override
  Widget build(BuildContext context) {
    final _media = MediaQuery.of(context).size;
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
        child: Padding(
          padding: const EdgeInsets.symmetric(
            vertical: 60,
            horizontal: 20,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Center(
                child: Text(
                  "Escolha uma foto!",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 26,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              SizedBox(height: 10),
              Text(
                "Por favor, escolha uma foto para o seu perfil, essa foto será seu rosto no My Weed.",
                textAlign: TextAlign.center,
                style: TextStyle(
                    fontSize: 16, height: 1.5, color: Colors.grey.shade600),
              ),
              SizedBox(height: 30),
              Center(
                child: Stack(
                  children: [
                    Container(
                      height: _media.height * 0.30,
                      width: _media.width * 0.60,
                      decoration: BoxDecoration(
                        color: AppColors.grey,
                        borderRadius: BorderRadius.circular(
                          200,
                        ),
                      ),
                    ),
                    Positioned(
                      bottom: 0,
                      right: 0,
                      child: MaterialButton(
                        height: _media.height * 0.08,
                        minWidth: _media.width * 0.10,
                        color: AppColors.secundary,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(60),
                        ),
                        child: Icon(
                          Icons.photo_camera,
                          color: AppColors.grey,
                        ),
                        onPressed: () {},
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 30),
              Text(
                "Para escolher a imagem, basta aperta no botão de câmera!",
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 16,
                  height: 1.5,
                  color: AppColors.secundary,
                ),
              ),
              SizedBox(height: 60),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  MaterialButton(
                    height: _media.height * 0.06,
                    minWidth: _media.width * 0.30,
                    color: AppColors.primary,
                    child: Text(
                      "Pular",
                      style: TextStyle(color: Colors.white),
                    ),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                      side: BorderSide(
                        color: Colors.white,
                      ),
                    ),
                    onPressed: () {
                      Navigator.pushReplacementNamed(context, "/home");
                    },
                  ),
                  MaterialButton(
                    height: _media.height * 0.06,
                    minWidth: _media.width * 0.30,
                    color: AppColors.secundary,
                    child: Text(
                      "Avançar",
                      style: TextStyle(color: Colors.white),
                    ),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                    onPressed: () {
                      Navigator.pushReplacementNamed(context, "/home");
                    },
                  )
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
