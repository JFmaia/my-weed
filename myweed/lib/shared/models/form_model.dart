import 'package:flutter/cupertino.dart';

class FormModel {
  final String? nome;
  final String? email;
  final String? cpf;
  final DateTime? data;
  final Image? image;
  final String? password;
  FormModel({
    this.image,
    this.nome,
    this.password,
    this.email,
    this.cpf,
    this.data,
  });
}
