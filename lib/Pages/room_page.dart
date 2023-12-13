import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import '../Widget/custom_button.dart';
import '../theme/theme_app.dart';
import 'create_team.dart';
import 'join_team.dart';
import 'dart:math';


class RoomPage extends StatefulWidget {
  const RoomPage({super.key});

  @override
  State<RoomPage> createState() => _RoomPageState();
}

class _RoomPageState extends State<RoomPage> {
  Future<void> createRoom() async {
  final CollectionReference rooms = FirebaseFirestore.instance.collection('rooms');
  final random = Random();

  // Generate a random 4-digit number between 1000 and 9999 (inclusive)
  int uniqueCode = 1000 + random.nextInt(9000);

  // Check if the generated code already exists in Firestore
  var snapshot = await rooms.doc(uniqueCode.toString()).get();
  while (snapshot.exists) {
    uniqueCode = 1000 + random.nextInt(9000);
    snapshot = await rooms.doc(uniqueCode.toString()).get();
  }

  // Add Firestore data
  await rooms.doc(uniqueCode.toString()).set({
    'roomCode': uniqueCode.toString(),
    'hostUser': 'UserID1', // Replace with the actual host user ID
    'members': ['UserID1', 'UserID2'], // Replace with the actual list of member user IDs
    'currentSong': 'SongID1', // Replace with the actual current song ID
   'playbackState': true, // Replace with the actual playback state (true for playing, false for paused)
    'currentPosition': 320,// Replace with the actual current position
    // Add other room details as needed
  });

  // Navigate to the created room's page
  Navigator.push(
    context,
    MaterialPageRoute(builder: (context) => CreateTeamPage(roomCode: uniqueCode.toString())),
  );
}


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        title: const Text('Room Page'),
        titleTextStyle: const TextStyle(
          fontSize: 25,
          fontStyle: FontStyle.italic,
          fontWeight: FontWeight.bold,
        ),
        backgroundColor: PRIMARY_COLOR,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CustomButton(
              text: 'Create Team',
              onPressed: () {
                createRoom();
              },
            ),
            const SizedBox(height: 20),
            CustomButton(
              text: 'Join Team',
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




