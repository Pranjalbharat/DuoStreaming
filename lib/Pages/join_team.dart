
import 'package:flutter/material.dart';

import '../Widget/custom_button.dart';
import '../theme/theme_app.dart';
import 'current_team.dart';

class JoinTeamPage extends StatefulWidget {
  const JoinTeamPage({Key? key}) : super(key: key);

  @override
  _JoinTeamPageState createState() => _JoinTeamPageState();
}

class _JoinTeamPageState extends State<JoinTeamPage> {
  final TextEditingController _roomCodeController = TextEditingController();
  bool _isButtonEnabled = false;

  @override
  void initState() {
    super.initState();
    _roomCodeController.addListener(_validateInput);
  }

  @override
  void dispose() {
    _roomCodeController.dispose();
    super.dispose();
  }

  void _validateInput() {
    setState(() {
      _isButtonEnabled = _roomCodeController.text.isNotEmpty;
    });
  }

    void _navigateToCurrentTeamPage() {
    if (_isButtonEnabled) {
      Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) =>  CurrentTeamPage(),
        ),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        title: const Text('Join Team'),
        titleTextStyle: const TextStyle(fontSize: 25,
        fontStyle: FontStyle.italic,
        fontWeight: FontWeight.bold),
        backgroundColor: PRIMARY_COLOR,
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            TextField(
              controller: _roomCodeController,
              keyboardType: TextInputType.number,
              style: const TextStyle(color: Colors.white),
              decoration: const InputDecoration(
                      labelText: 'Enter Room Code',
                      labelStyle: TextStyle(color: Colors.white),
                      hintText: 'Enter valid room code',
                      hintStyle: TextStyle(color: Colors.white),
                      enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                          width: 3,
                          color: PRIMARY_COLOR,
                        ),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                          width: 3,
                          color: PRIMARY_COLOR,
                        ),
                      ),
                    ),
            ),
            const SizedBox(height: 20),
          CustomButton(
              text: 'Join',
              onPressed: _navigateToCurrentTeamPage,
            ),
          ],
        ),
      ),
    );
  }
}