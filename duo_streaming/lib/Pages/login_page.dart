import 'package:duo_streaming/Widget/google_signin_button_widget.dart';
import 'package:flutter/material.dart';

class loginPage extends StatefulWidget {
  const loginPage({super.key});

  @override
  State<loginPage> createState() => _loginPageState();
}

class _loginPageState extends State<loginPage> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body:Center(
        child:  Column(
          children: [
              Text(
              'Welcome \n to',
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 44,
                color: Colors.white, // Adjust color for visibility
                fontWeight: FontWeight.bold,
              ),
            ),
          
        Padding(
          padding: EdgeInsets.only(left: 13),
          child: Text(
                'DuoStreaming',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 50,
                  color: Colors.white, // Adjust color for visibility
                  fontWeight: FontWeight.bold,
                ),
              ),
        ),
            GoogleSignInButton(),
          ],
        ),
        ),
    );
  }
}