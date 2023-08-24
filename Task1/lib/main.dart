import 'package:flutter/material.dart';
import 'package:task_1/first_page.dart';
import 'package:task_1/second_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
   
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      routes: {

        "/":(context) => LandingPage(),
        "/second_page":(context) => DetailPage(),
        
      },



    );
  }
}
