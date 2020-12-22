import 'package:flutter/material.dart';
import 'package:fyp_aneeq/screens/homepage.dart';
import 'package:fyp_aneeq/screens/profile.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Homepage(),
    );
  }
}

