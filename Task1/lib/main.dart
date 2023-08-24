import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:assignshubh/screens/details.dart';
import 'package:assignshubh/screens/home.dart';

void main() {
  runApp(const MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        theme: ThemeData(
            brightness: Brightness.light,
            primaryColor: Colors.white
        ),
        home: Home());
  }
}

