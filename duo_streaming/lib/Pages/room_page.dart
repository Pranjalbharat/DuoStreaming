import 'package:flutter/material.dart';
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
      appBar: AppBar(
        title: const Text('Room Page'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const CreateTeamPage()),
                );
              },
              child: const Text('Create Team'),
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const JoinTeamPage()),
                );
              },
              child: const Text('Join Team'),
            ),
          ],
        ),
      ),
    );
  }
}



