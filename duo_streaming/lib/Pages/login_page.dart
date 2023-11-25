import 'package:duo_streaming/Widget/google_signin_button_widget.dart';
import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: Colors.black,
      body: Center(
        child: 
            Expanded(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
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
                  Text(
                    'DuoStreaming',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 50,
                      color: Colors.white, // Adjust color for visibility
                      fontWeight: FontWeight.bold,
                    ),
                  ),

                    GoogleSignInButton(),
                ],
              ),
            ),
      
      ),
    );
  }
}

