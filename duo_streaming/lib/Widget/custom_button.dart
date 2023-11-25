import 'package:flutter/material.dart';

import '../theme/theme_app.dart';

class CustomButton extends StatelessWidget {
  final String text;
  final VoidCallback onPressed;
  const CustomButton({super.key, 
    required this.text,
    required this.onPressed,
  } );

  @override
  Widget build(BuildContext context) {
    return  ElevatedButton(
      onPressed: onPressed,
      style: ElevatedButton.styleFrom(
                      foregroundColor: Colors.white,
                      backgroundColor: PRIMARY_COLOR ,
                    minimumSize: const Size(270.0,60.0),
                    shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(8.0), // Border radius of 10
          ),),
                  
      child: Text(text,
      style: const TextStyle(fontSize: 30),
    ),
    );
  }
}
