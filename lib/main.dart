import 'package:flutter/material.dart';
import 'package:new_flutter_app/ui/screens/splashScreen.dart';

void main() => runApp(
  MaterialApp(
    theme: ThemeData(
      primarySwatch: Colors.orange,
      visualDensity: VisualDensity.adaptivePlatformDensity,
      fontFamily: 'Brandon'),
    home: SplashScreen(),
  )
);
