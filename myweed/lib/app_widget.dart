import 'package:flutter/material.dart';
import 'package:myweed/modules/home/home_page.dart';
import 'package:myweed/modules/login/login_page.dart';
import 'package:myweed/modules/register/password_page.dart';
import 'package:myweed/modules/register/registe_image_page.dart';
import 'package:myweed/modules/register/registe_page.dart';
import 'package:myweed/modules/splash/splash_page.dart';
import 'package:myweed/shared/theme/colors.dart';

class AppWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'My Weed',
      theme: ThemeData.dark().copyWith(
        scaffoldBackgroundColor: AppColors.primary,
      ),
      initialRoute: "/splash",
      routes: {
        "/splash": (context) => SplashPage(),
        "/home": (context) => HomePage(),
        "/login": (context) => LoginPage(),
        "/registe": (context) => RegistePage(),
        "/password": (context) => PassawordPage(),
        "/registe_image": (context) => RegisterImage(),
      },
    );
  }
}
