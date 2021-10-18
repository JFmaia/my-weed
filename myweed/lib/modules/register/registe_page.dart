import 'package:flutter/material.dart';
import 'package:myweed/shared/theme/colors.dart';

class RegistePage extends StatelessWidget {
  const RegistePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: AppColors.primary,
        centerTitle: true,
        title: Container(
          height: 30,
          width: 30,
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage("assets/images/logo.png"),
            ),
          ),
        ),
        leading: BackButton(
          color: AppColors.secundary,
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ),
    );
  }
}
