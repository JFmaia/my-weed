import 'package:flutter/cupertino.dart';
import 'package:flutter_modular/flutter_modular.dart';

class AuthController {
  var _isAuthenticated = false;
  var _user;

  get user => _user;

  void setUser(BuildContext context, var user) {
    if (user != null) {
      _user = user;
      _isAuthenticated = true;
      Modular.to.pushReplacementNamed('/home');
    } else {
      _isAuthenticated = false;
      Modular.to.pushReplacementNamed('/login');
    }
  }
}
