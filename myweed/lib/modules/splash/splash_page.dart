import 'package:flutter/material.dart';
import 'package:myweed/shared/theme/colors.dart';

class SplashPage extends StatelessWidget {
  const SplashPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Future.delayed(Duration(seconds: 2)).then(
      (_) => Navigator.pushReplacementNamed(context, "/login"),
    );
    return Scaffold(
      backgroundColor: AppColors.primary,
      body: Container(
        width: double.infinity,
        child: Center(
          child: Container(
            height: 200,
            width: 200,
            child: Image.asset(
              "assets/images/logo.png",
              fit: BoxFit.cover,
              filterQuality: FilterQuality.high,
            ),
          ),
        ),
      ),
    );
  }
}
