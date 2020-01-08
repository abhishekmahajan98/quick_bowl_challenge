import 'package:flutter/material.dart';
import 'package:quick_bowl_challenge/pages/home.dart';
import 'package:quick_bowl_challenge/pages/login.dart';

void main() => runApp(new MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Welcome to Flutter",
      routes: {
        '/': (context) => LoginPage(),
        '/home': (context) => HomePage(),
      },
    );
  }
}
