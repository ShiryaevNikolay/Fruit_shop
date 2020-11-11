import 'dart:async';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:new_flutter_app/ui/screens/welcomeScreen.dart';

import 'homeScreen.dart';

class SplashScreen extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
          primarySwatch: Colors.blue,
          visualDensity: VisualDensity.adaptivePlatformDensity,
          fontFamily: 'Brandon'),
      home: SplashPage()
    );
  }
}

class SplashPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // Запускаем HomeScreen
    Timer(Duration(milliseconds: 300), () => Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => WelcomeScreen())));
    
    return Scaffold(
      body: Align(
        alignment: Alignment.center,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SvgPicture.asset("assets/images/splash_logo.svg"),
            Container(
              padding: EdgeInsets.symmetric(
                horizontal: 48,
              ),
              decoration: BoxDecoration(
                  color: Color(int.parse("0xFFFFA451")),
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(16),
                      bottomRight: Radius.circular(16))),
              child: Text(
                "Fruit Hub",
                style: TextStyle(
                    color: Colors.white, fontSize: 24, fontFamily: 'Badscript'),
              ),
            )
          ],
        ),
      )
    );
  }
}
