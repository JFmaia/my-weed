import 'package:flutter/cupertino.dart';

class FormModel {
  String nome = "";
  String email = "";
  String cpf = "";
  DateTime data = DateTime.now();
  Image? image;
  String password = "";

  FormModel({
    this.image,
  });
}
