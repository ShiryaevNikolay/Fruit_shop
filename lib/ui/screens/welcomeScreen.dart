import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class WelcomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
          primarySwatch: Colors.blue,
          visualDensity: VisualDensity.adaptivePlatformDensity,
          fontFamily: 'Brandon'),
      home: Scaffold(
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Expanded(
              child: Container(
                padding: EdgeInsets.all(35),
                color: Color(int.parse("0xFFFFA451")),
                child: Image.asset(
                  "assets/images/welcome_im.png",
                  width: 303,
                  height: 304,
                )
              ),
            ),
            Padding(
              padding: EdgeInsets.only(
                left: 25,
                right: 25,
                top: 55,
                bottom: 88
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  Text(
                    "Get The Freshest Fruit Salad Combo",
                    style: TextStyle(
                      letterSpacing: -0.01,
                      fontSize: 20,
                      fontWeight: FontWeight.w500,
                      color: Color(int.parse("0xFF27214D"))
                    ),
                  ),
                  SizedBox(height: 8),
                  Text("We deliver the best and freshest fruit salad in\ntown. Order for a combo today!!!"),
                  SizedBox(height: 58),
                  MaterialButton(
                    padding: EdgeInsets.symmetric(
                      vertical: 14
                    ),
                    color: Color(int.parse("0xFFFFA451")),
                    elevation: 0,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10)
                    ),
                    child: Text(
                      "Let's Continue",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 16
                      ),
                    ),
                    onPressed: () {}
                  )
                ],
              ),
            )
          ],
        )
      )
    );
  }
}
