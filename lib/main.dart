import 'package:flutter/material.dart';
import 'package:renting_app/home.dart';
import 'package:renting_app/loginPage.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: const loginPage(),
      routes: {
        "home": (context) => const Home(),
      },
    );
  }
}
