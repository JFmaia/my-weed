// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'login_controller.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$LoginController on _LoginController, Store {
  final _$isVisibleAtom = Atom(name: '_LoginController.isVisible');

  @override
  bool get isVisible {
    _$isVisibleAtom.reportRead();
    return super.isVisible;
  }

  @override
  set isVisible(bool value) {
    _$isVisibleAtom.reportWrite(value, super.isVisible, () {
      super.isVisible = value;
    });
  }

  final _$loginGoogleAsyncAction = AsyncAction('_LoginController.loginGoogle');

  @override
  Future<void> loginGoogle(BuildContext context) {
    return _$loginGoogleAsyncAction.run(() => super.loginGoogle(context));
  }

  final _$loginEmailAndPasswordAsyncAction =
      AsyncAction('_LoginController.loginEmailAndPassword');

  @override
  Future<void> loginEmailAndPassword(
      BuildContext context, String email, String password) {
    return _$loginEmailAndPasswordAsyncAction
        .run(() => super.loginEmailAndPassword(context, email, password));
  }

  final _$_LoginControllerActionController =
      ActionController(name: '_LoginController');

  @override
  void setVisible(bool i) {
    final _$actionInfo = _$_LoginControllerActionController.startAction(
        name: '_LoginController.setVisible');
    try {
      return super.setVisible(i);
    } finally {
      _$_LoginControllerActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
isVisible: ${isVisible}
    ''';
  }
}
