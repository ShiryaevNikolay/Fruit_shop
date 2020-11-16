import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:new_flutter_app/ui/screens/homeScreen.dart';
import 'package:new_flutter_app/ui/views/customTextButton.dart';
import 'package:new_flutter_app/ui/views/customTextField.dart';

class AuthScreen extends StatefulWidget {
  @override
  _AuthScreenState createState() => _AuthScreenState();
}

class _AuthScreenState extends State<AuthScreen> {
  String textField;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Expanded(
            child: Container(
                padding: EdgeInsets.all(35),
                color: Color(int.parse("0xFFFFA451")),
                child: Image.asset(
                  "assets/images/auth_im.png",
                  width: 307,
                  height: 307,
                )),
          ),
          Padding(
            padding: EdgeInsets.only(left: 25, right: 25, top: 55, bottom: 88),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Text(
                  "What is your firstname?",
                  style: TextStyle(
                      letterSpacing: -0.01,
                      fontSize: 20,
                      fontWeight: FontWeight.w500,
                      color: Color(int.parse("0xFF27214D"))),
                ),
                SizedBox(height: 16),
                CustomTextFiled("Tony", onChanched: (value) {
                  setState(() {
                    textField = value;
                  });
                }),
                SizedBox(height: 42),
                CustomButton(
                  "Start Ordering",
                  onPressed: () {
                    if (textField != null && textField.isNotEmpty) {
                      Navigator.pushReplacement(
                          context,
                          MaterialPageRoute(
                              builder: (context) => HomeScreen(textField)));
                    }
                  },
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
