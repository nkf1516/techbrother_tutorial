

import 'package:flutter/material.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Column(
          children: [
            Center(
              child: Text('Login', style: TextStyle(fontSize: 24),),
            ),
            SizedBox(
              height: 10,
            ),
            Center(
              child: Text('Hello Login this App, and give best servises',
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 16, color: Colors.lightBlue,),),
            )
          ],
        ),
      ),
    );
  }
}
