import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:new_flutter_app/ui/views/CustomButton.dart';

class AuthScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        theme: ThemeData(
            primarySwatch: Colors.orange,
            visualDensity: VisualDensity.adaptivePlatformDensity,
            fontFamily: 'Brandon'),
        home: AuthPage());
  }
}

class AuthPage extends StatelessWidget {
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
                TextField(
                  cursorColor: Colors.orange,
                  decoration: InputDecoration(
                    hintText: "Tony",
                    filled: true,
                    fillColor: Color(int.parse("0xFFF3F2F1")),
                    border: OutlineInputBorder(
                        borderSide: BorderSide.none,
                        borderRadius: BorderRadius.circular(10)),
                  ),
                ),
                SizedBox(height: 42),
                CustomButton(
                  "Start Ordering",
                  onPressed: () {},
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
