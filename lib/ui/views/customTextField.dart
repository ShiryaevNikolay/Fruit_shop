import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CustomTextFiled extends StatelessWidget {
  String textHint;
  Widget iconField;
  final void Function(String value) onChanched;

  CustomTextFiled(this.textHint, {@required this.onChanched, this.iconField});

  @override
  Widget build(BuildContext context) {
    return TextField(
      cursorColor: Colors.orange,
      decoration: InputDecoration(
        prefixIcon: iconField,
        hintText: textHint,
        hintStyle: TextStyle(color: Color(int.parse("0xFF86869E"))),
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
