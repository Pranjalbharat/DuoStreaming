
import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'Pages/login_page.dart';
import 'firebase_options.dart';




Future main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );

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
      primaryColor: Colors.blue.shade800,// Change the accent color here
      ),
    );

  }
}

