import 'package:flutter/material.dart';
import 'package:new_flutter_app/ui/screens/pages/homePage.dart';

class HomeScreen extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter App',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
        fontFamily: 'Brandon'
      ),
      home: HomePage(title: 'Flutter App'),
    );
  }
}