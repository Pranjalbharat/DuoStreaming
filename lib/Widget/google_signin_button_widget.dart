import 'package:flutter/material.dart';


import '../Pages/room_page.dart';
import '../Services/authentication.dart';

class GoogleSignInButton extends StatefulWidget {
  const GoogleSignInButton({super.key});

  @override
  // ignore: library_private_types_in_public_api
  _GoogleSignInButtonState createState() => _GoogleSignInButtonState();
}

class _GoogleSignInButtonState extends State<GoogleSignInButton> {
  bool _isSigningIn = false;

  // ignore: non_constant_identifier_names
  _check_login() {
    if (Authenticate.isLoggedIn()) {
      Navigator.of(context)
          .push(MaterialPageRoute(builder: (context) => const RoomPage()));
    } else {
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(
          content: Text('Failed!'),
          duration: Duration(seconds: 3), // Adjust the duration as needed
        ),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(15,80,15,0),
    child:
    _isSigningIn
          ? const CircularProgressIndicator(
              valueColor: AlwaysStoppedAnimation<Color>(Colors.white),
            )
          : Padding(
            padding: const EdgeInsets.only(bottom: 45),
            child: OutlinedButton(
                style: ButtonStyle(
                  alignment: Alignment.center,
                  backgroundColor: MaterialStateProperty.all( Colors.white),
                  shape: MaterialStateProperty.all(
                    RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(40),
                      side: const BorderSide(color: Colors.white),
                    ),
                  ),
                ),
                onPressed: () async{
                
                  setState(() {
                    _isSigningIn = true;
                  });
          
                  if (await Authenticate.continueWithGoogle()) {
                    _check_login();
                  } else {
                    ScaffoldMessenger.of(context).showSnackBar(
                      const SnackBar(
                        content: Text('Failed!'),
                        duration:
                            Duration(seconds: 3), // Adjust the duration as needed
                      ),
                    );
                  }
          
                  setState(() {
                    _isSigningIn = false;
                  });
                },
                  child: Container(
                    decoration: BoxDecoration(
                      color:  Colors.white, // Medium Purple
                      borderRadius: BorderRadius.circular(40),
                    ),
                child: const Padding(
                  padding: EdgeInsets.fromLTRB(0, 10, 0, 10),
                  child: Row(
                    mainAxisSize: MainAxisSize.min,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Image(
                        image: AssetImage("images/google_logo.png"),
                        height: 35.0,
                      ),
                      Padding(
                        padding: EdgeInsets.only(left: 10),
                        child: Text(
                          'Sign in with Google',
                          style: TextStyle(
                            fontSize: 20,
                            color: Colors.black,
                            fontWeight: FontWeight.w600,
                          ),
                          
                        ),
                        
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
  
    );    
    
  }
}
