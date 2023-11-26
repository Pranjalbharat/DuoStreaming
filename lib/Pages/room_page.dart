import 'package:flutter/material.dart';
import '../Widget/custom_button.dart';
import '../theme/theme_app.dart';
import 'create_team.dart';
import 'join_team.dart';

class roomPage extends StatefulWidget {
  const roomPage({super.key});

  @override
  State<roomPage> createState() => _roomPageState();
}

class _roomPageState extends State<roomPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        title: const Text('Room Page'),
        titleTextStyle: const TextStyle(fontSize: 25,
        fontStyle: FontStyle.italic,
        fontWeight: FontWeight.bold),
        backgroundColor: PRIMARY_COLOR,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
          CustomButton(
            text: 'Create Team',
            onPressed: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) =>  CreateTeamPage()),
                );
            },
          ),
            const SizedBox(height: 20),
              CustomButton(
            text: '  Join Team  ',
            onPressed: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const JoinTeamPage()),
                );
            },
          ),
        
          ],
        ),
      ),
    );
  }
}



