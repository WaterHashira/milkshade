import 'package:flutter/material.dart';
import 'package:milkshade/home_screen/home_page.dart';
import 'package:milkshade/login_screens/milk_man_login.dart';
import 'package:milkshade/splash_screen.dart';
import 'login_screens/user_login.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Splash_Screen(),
    );
  }
}
