// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'register_controller.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$RegisterController on _RegisterController, Store {
  final _$isVisibleAtom = Atom(name: '_RegisterController.isVisible');

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

  final _$isPasswordCharactersAtom =
      Atom(name: '_RegisterController.isPasswordCharacters');

  @override
  bool get isPasswordCharacters {
    _$isPasswordCharactersAtom.reportRead();
    return super.isPasswordCharacters;
  }

  @override
  set isPasswordCharacters(bool value) {
    _$isPasswordCharactersAtom.reportWrite(value, super.isPasswordCharacters,
        () {
      super.isPasswordCharacters = value;
    });
  }

  final _$isPasswordNumberAtom =
      Atom(name: '_RegisterController.isPasswordNumber');

  @override
  bool get isPasswordNumber {
    _$isPasswordNumberAtom.reportRead();
    return super.isPasswordNumber;
  }

  @override
  set isPasswordNumber(bool value) {
    _$isPasswordNumberAtom.reportWrite(value, super.isPasswordNumber, () {
      super.isPasswordNumber = value;
    });
  }

  final _$_RegisterControllerActionController =
      ActionController(name: '_RegisterController');

  @override
  void setVisible(bool i) {
    final _$actionInfo = _$_RegisterControllerActionController.startAction(
        name: '_RegisterController.setVisible');
    try {
      return super.setVisible(i);
    } finally {
      _$_RegisterControllerActionController.endAction(_$actionInfo);
    }
  }

  @override
  void onPasswordChanged(String password) {
    final _$actionInfo = _$_RegisterControllerActionController.startAction(
        name: '_RegisterController.onPasswordChanged');
    try {
      return super.onPasswordChanged(password);
    } finally {
      _$_RegisterControllerActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
isVisible: ${isVisible},
isPasswordCharacters: ${isPasswordCharacters},
isPasswordNumber: ${isPasswordNumber}
    ''';
  }
}
