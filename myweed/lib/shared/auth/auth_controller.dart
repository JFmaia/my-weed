import 'package:flutter/cupertino.dart';

class AuthController {
  var _isAuthenticated = false;
  var _user;

  get user => _user;

  void setUser(BuildContext context, var user) {
    if (user != null) {
      _user = user;
      _isAuthenticated = true;
      Navigator.of(context).pushReplacementNamed("/home");
    } else {
      _isAuthenticated = false;
      Navigator.of(context).pushReplacementNamed("/login");
    }
  }
}
