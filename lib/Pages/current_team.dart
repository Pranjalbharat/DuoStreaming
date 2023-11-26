import 'package:flutter/material.dart';

import '../theme/theme_app.dart';

class CurrentTeamPage extends StatefulWidget {
  const CurrentTeamPage({Key? key}) : super(key: key);

  @override
  _CurrentTeamPageState createState() => _CurrentTeamPageState();
}

class _CurrentTeamPageState extends State<CurrentTeamPage> {
  final String roomCode = 'ABC123'; // Replace this with the actual room code
  final List<String> teamMembers = [
    'John Doe',
    'Jane Smith',
    'Alice Johnson',
    'Bob Williams'
  ]; // Replace this with actual team members

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        title: const Text('Current Team'),
        titleTextStyle: const TextStyle(fontSize: 25,
        fontStyle: FontStyle.italic,
        fontWeight: FontWeight.bold),
        backgroundColor: PRIMARY_COLOR,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(
              'Room Code: $roomCode',
              style: const TextStyle(fontSize: 25,color: Colors.white),
            ),
            const SizedBox(height: 20),
            const Text(
              'Team Members:',
              style: TextStyle(fontSize: 20,color: Colors.white),
            ),
            const SizedBox(height: 10),
            Column(
              children: teamMembers.map((member) => Text(member,style: const TextStyle(color: Colors.white,fontSize: 15),)).toList(),
            ),
            const SizedBox(height: 20),
            const Text(
              'Waiting for host to start...',
              style: TextStyle(fontSize: 18),
            ),
          ],
        ),
      ),
    );
  }
}
