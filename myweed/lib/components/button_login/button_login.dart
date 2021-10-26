import 'package:flutter/material.dart';

class ButtonPerson extends StatefulWidget {
  final String text;
  final Color corButton;
  final Color corText;
  final Function()? onPressed;
  const ButtonPerson({
    Key? key,
    required this.text,
    required this.corButton,
    this.onPressed,
    required this.corText,
  }) : super(key: key);

  @override
  _ButtonPersonState createState() => _ButtonPersonState();
}

class _ButtonPersonState extends State<ButtonPerson> {
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
