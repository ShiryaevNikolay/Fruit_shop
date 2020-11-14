import 'package:flutter/material.dart';

// ignore: must_be_immutable
class CustomButton extends StatefulWidget {
  String textButton;
  final GestureTapCallback onPressed;

  CustomButton(this.textButton, {@required this.onPressed});

  @override
  _CustomButtonState createState() => _CustomButtonState();
}

class _CustomButtonState extends State<CustomButton> {
  @override
  Widget build(BuildContext context) {
    return MaterialButton(
        padding: EdgeInsets.symmetric(vertical: 14),
        color: Color(int.parse("0xFFFFA451")),
        elevation: 0,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
        child: Text(
          widget.textButton,
          style: TextStyle(color: Colors.white, fontSize: 16),
        ),
        onPressed: widget.onPressed);
  }
}
