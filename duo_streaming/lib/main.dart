
import 'package:flutter/material.dart';

import 'Pages/login_page.dart';




void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
      return MaterialApp(
      home: const LoginPage(),
      theme: ThemeData(
        // ignore: prefer_const_constructors
        primaryColor: Color.fromARGB(255, 220, 135, 237), // Change the accent color here
      ),
    );

  }
}

