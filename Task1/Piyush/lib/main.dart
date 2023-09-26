import 'package:flutter/material.dart';
import 'package:task1/detailpage.dart';
import 'package:task1/landingpage.dart';
import 'package:task1/utils/routes.dart';

void main() {
  runApp(Myapp());
}

class Myapp extends StatelessWidget {
  const Myapp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: {
        "/": (context) => Landingpage(),
        Myroutes.detailRoute: (context) => Detailpage(),
        Myroutes.landingRoute: (context) => Landingpage(),
      },
    );
  }
}
