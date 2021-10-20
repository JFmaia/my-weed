import 'package:flutter/material.dart';
import 'package:myweed/modules/home/home_controller.dart';
import 'package:myweed/modules/home/home_page.dart';
import 'package:myweed/modules/login/login_page.dart';
import 'package:myweed/modules/register/password_page.dart';
import 'package:myweed/modules/register/registe_page.dart';
import 'package:myweed/modules/splash/splash_page.dart';
import 'package:myweed/shared/theme/colors.dart';
import 'package:provider/provider.dart';
import 'modules/login/login_controller.dart';
import 'modules/register/register_controller.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        Provider<HomeController>(
          create: (_) => HomeController(),
        ),
        Provider<LoginController>(
          create: (_) => LoginController(),
        ),
        Provider<RegisterController>(
          create: (_) => RegisterController(),
        ),
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Flutter Demo',
        theme: ThemeData.dark().copyWith(
          scaffoldBackgroundColor: AppColors.primary,
          canvasColor: AppColors.secundary,
        ),
        initialRoute: "/splash",
        routes: {
          "/splash": (context) => SplashPage(),
          "/home": (context) => HomePage(),
          "/login": (context) => LoginPage(),
          "/registe": (context) => RegistePage(),
          "/password": (context) => PassawordPage(),
        },
      ),
    );
  }
}
