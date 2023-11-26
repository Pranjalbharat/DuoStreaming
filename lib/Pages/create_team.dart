import 'package:flutter/material.dart';

import '../Widget/custom_button.dart';
import '../theme/theme_app.dart';
import 'homePage.dart';



class CreateTeamPage extends StatefulWidget {
  const CreateTeamPage({super.key});

  @override
  _CreateTeamPageState createState() => _CreateTeamPageState();
}

class _CreateTeamPageState extends State<CreateTeamPage> {
    final List<String> teamMembers = [
    'John Doe',
    'Jane Smith',
    'Alice Johnson',
    'Bob Williams'
  ]; 
  

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        title: const Text('Create Team'),
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
              const Text(
                'Your Room Code: ABC123', // Replace this with your room code
                style: TextStyle(fontSize: 25,color: Colors.white),
              ),
              const SizedBox(height: 20),
              const Text(
                'Team Members:',
                style: TextStyle(fontSize: 20,color: Colors.white),
              ),
              const SizedBox(height: 10),
              // Replace this with a widget displaying team members
              // For example, a ListView.builder or a list of Text widgets
            Column(
              children: teamMembers.map((member) => Text(member,style: const TextStyle(color: Colors.white,fontSize: 15),)).toList(),
            ),
              const SizedBox(height: 20),
            CustomButton(
            text: ' Start ',
            onPressed: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const HomePage()),
                );
            },
          ),
            ],
          ),
        
      ),
    );
  }
}

