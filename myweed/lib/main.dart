import 'package:flutter/material.dart';
import 'package:myweed/modules/home/home_controller.dart';
import 'package:myweed/modules/splash/splash_page.dart';
import 'package:myweed/shared/theme/colors.dart';
import 'package:provider/provider.dart';

import 'modules/login/login_controller.dart';

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
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Flutter Demo',
        theme: ThemeData.dark().copyWith(
          scaffoldBackgroundColor: AppColors.primary,
          canvasColor: AppColors.secundary,
        ),
        home: SplashPage(),
      ),
    );
  }
}
