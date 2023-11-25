import 'package:flutter/material.dart';

class CurrentTeamPage extends StatelessWidget {
  final String roomCode = 'ABC123'; // Replace this with the actual room code
  final List<String> teamMembers = ['Member 1', 'Member 2', 'Member 3'];

  CurrentTeamPage({super.key}); // Replace this with actual team members

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Current Team'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(
              'Room Code: $roomCode',
              style: const TextStyle(fontSize: 20),
            ),
            const SizedBox(height: 20),
            const Text(
              'Team Members:',
              style: TextStyle(fontSize: 18),
            ),
            const SizedBox(height: 10),
            Column(
              children: teamMembers.map((member) => Text(member)).toList(),
            ),
            const SizedBox(height: 20),
            const Text(
              'Waiting for host to start...',
              style: TextStyle(fontSize: 16),
            ),
          ],
        ),
      ),
    );
  }
}