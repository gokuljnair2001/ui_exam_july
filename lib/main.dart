// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:ui_exam_july/view/homescreen/homescreen.dart';
import 'package:ui_exam_july/view/registration_screen/registration_screen.dart';

String email = '';
String password = '';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Homescreen(),
    );
  }
}
