import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CustomTextFiled extends StatelessWidget {
  String textHint;
  final void Function(String value) onChanched;

  CustomTextFiled(this.textHint, {@required this.onChanched});

  @override
  Widget build(BuildContext context) {
    return TextField(
      cursorColor: Colors.orange,
      decoration: InputDecoration(
        hintText: textHint,
        filled: true,
        fillColor: Color(int.parse("0xFFF3F2F1")),
        border: OutlineInputBorder(
            borderSide: BorderSide.none,
            borderRadius: BorderRadius.circular(10)),
      ),
      onChanged: onChanched,
    );
  }
}
