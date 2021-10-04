import 'package:flutter/material.dart';

class ButtonLogin extends StatefulWidget {
  final String text;
  final Color corButton;
  final Color corText;
  final Function()? onPressed;
  const ButtonLogin({
    Key? key,
    required this.text,
    required this.corButton,
    this.onPressed,
    required this.corText,
  }) : super(key: key);

  @override
  _ButtonLoginState createState() => _ButtonLoginState();
}

class _ButtonLoginState extends State<ButtonLogin> {
  @override
  Widget build(BuildContext context) {
    return MaterialButton(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10),
      ),
      height: 50,
      minWidth: double.infinity,
      color: widget.corButton,
      child: Center(
        child: Text(
          widget.text,
          style: TextStyle(color: widget.corText),
        ),
      ),
      onPressed: widget.onPressed,
    );
  }
}
