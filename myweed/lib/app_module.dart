import 'package:flutter_modular/flutter_modular.dart';
import 'package:myweed/modules/home/home_page.dart';

import 'package:myweed/modules/login/login_page.dart';
import 'package:myweed/modules/login/repositories/login_repository.dart';
import 'package:myweed/modules/login/repositories/login_repository_impl.dart';
import 'package:myweed/modules/register/password_page.dart';
import 'package:myweed/modules/register/registe_image_page.dart';
import 'package:myweed/modules/register/registe_page.dart';
import 'package:myweed/modules/splash/splash_page.dart';
import 'package:myweed/shared/service/app_database.dart';
import 'package:myweed/shared/service/firebase_database.dart';

class AppModule extends Module {
  @override
  List<Bind> get binds => [
        Bind<AppDatabase>((i) => FirebaseDatabase()),
        Bind<LoginRepository>((i) => LoginRepositoryImpl()),
      ];

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
