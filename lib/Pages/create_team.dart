import 'package:flutter/material.dart';
import '../Widget/custom_border.dart';
import '../Widget/custom_button.dart';
import '../theme/theme_app.dart';
import 'homePage.dart';

class CreateTeamPage extends StatelessWidget {
  final List<String> teamMembers = [
    'John Doe',
    'Jane Smith',
    'Alice Johnson',
    'Bob Williams'
  ];

   CreateTeamPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        title: const Text(
          'Create Team',
          style: TextStyle(
            fontSize: 25,
            fontStyle: FontStyle.italic,
            fontWeight: FontWeight.bold,
          ),
        ),
        backgroundColor: PRIMARY_COLOR,
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const TeamSection(
                title: 'Room Code:', // Replace this with your room code
                headingColor:  Color.fromARGB(255, 71, 160, 233), // Change the heading color
                content: Text('1234',style: TextStyle(color: Colors.white,fontSize: 25,),),
              ),
              const SizedBox(height: 20),
              TeamSection(
                title: 'Team Members:',
                headingColor: const Color.fromARGB(255, 71, 160, 233), // Change the heading color
                content: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: teamMembers
                      .map(
                        (member) => Text(
                          member,
                          style: const TextStyle(
                          color: Colors.white,
                          fontSize: 18,
                        
                          ),
                        ),
                      )
                      .toList(),
                ),
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
      ),
    );
  }

}


