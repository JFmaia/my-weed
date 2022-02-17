import 'package:flutter_modular/flutter_modular.dart';
import 'package:myweed/modules/home/home_page.dart';
import 'package:myweed/modules/login/login_page.dart';
import 'package:myweed/modules/register/password_page.dart';
import 'package:myweed/modules/register/registe_image_page.dart';
import 'package:myweed/modules/register/registe_page.dart';
import 'package:myweed/modules/splash/splash_page.dart';

class AppModule extends Module {
  @override
  List<Bind> get binds => [];

  @override
  List<ModularRoute> get routes => [
        ChildRoute('/', child: (context, args) => SplashPage()),
        ChildRoute('/home', child: (context, args) => HomePage()),
        ChildRoute('/login', child: (context, args) => LoginPage()),
        ChildRoute('/registe', child: (context, args) => RegistePage()),
        ChildRoute('/password', child: (context, args) => PassawordPage()),
        ChildRoute('/registe_image', child: (context, args) => RegisterImage()),
      ];
}
