import 'package:flutter/material.dart';

import 'homePage.dart';



class CreateTeamPage extends StatefulWidget {
  const CreateTeamPage({super.key});

  @override
  _CreateTeamPageState createState() => _CreateTeamPageState();
}

class _CreateTeamPageState extends State<CreateTeamPage> {
  

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Create Team'),
      ),
      body: Center(
        child: FadeTransition(
        
          opacity: kAlwaysCompleteAnimation,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const Text(
                'Your Room Code: ABC123', // Replace this with your room code
                style: TextStyle(fontSize: 20),
              ),
              const SizedBox(height: 20),
              const Text(
                'Team Members:',
                style: TextStyle(fontSize: 18),
              ),
              const SizedBox(height: 10),
              // Replace this with a widget displaying team members
              // For example, a ListView.builder or a list of Text widgets
              const Text('Member 1'),
              const Text('Member 2'),
              const Text('Member 3'),
              const SizedBox(height: 20),
              ElevatedButton(
                onPressed: () {
                  Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => const HomePage()),
            ); // Navigate back to homepage
                },
                child: const Text('Start'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

