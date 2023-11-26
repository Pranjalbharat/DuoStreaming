import 'package:flutter/material.dart';

import '../theme/theme_app.dart';



class TeamSection extends StatelessWidget {
  final String title;
  final Color headingColor;
  final Widget content;

  const TeamSection({
    required this.title,
    required this.headingColor,
    required this.content,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(20.0),
      decoration: BoxDecoration(
        border: Border.all(
          color: PRIMARY_COLOR,
          width: 2.0,
        ),
        borderRadius: BorderRadius.circular(10.0),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text(
            title,
            style: TextStyle(
              fontSize: 30,
              color: headingColor,
            ),
          ),
          SizedBox(height: 10),
          content,
        ],
      ),
    );
  }
}
