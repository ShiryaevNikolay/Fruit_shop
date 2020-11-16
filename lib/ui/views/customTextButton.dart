import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  final String textButton;
  final GestureTapCallback onPressed;

  CustomButton(this.textButton, {@required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return MaterialButton(
        padding: EdgeInsets.symmetric(vertical: 14),
        color: Color(int.parse("0xFFFFA451")),
        elevation: 0,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
        child: Text(
          textButton,
          style: TextStyle(color: Colors.white, fontSize: 16),
        ),
        onPressed: onPressed);
  }
}
