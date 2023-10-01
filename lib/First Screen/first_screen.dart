import 'package:flutter/material.dart';

import '../Auth Screens/login_screen.dart';
import '../Auth Screens/registration_screen.dart';

class FirstScreen extends StatefulWidget {
  const FirstScreen({super.key});

  @override
  State<FirstScreen> createState() => _FirstScreenState();
}

class _FirstScreenState extends State<FirstScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Image.asset('assets/images/bg 1.png',
          fit: BoxFit.cover,
          width: double.infinity,
            height: double.infinity,
          ),
      Padding(
        padding: const EdgeInsets.only(left: 20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Container(
              width: 382, // Button width
              height: 62, // Button height
              margin: EdgeInsets.symmetric(vertical: 16),
              child: ElevatedButton(
                onPressed: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) => LoginWithEmailScreen()));
                },
                style: ElevatedButton.styleFrom(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(6), // Set to 0 for a rectangular shape
                    side: BorderSide(
                      color: Color.fromRGBO(248, 206, 88, 1), // Border color
                      width: 2, // Border width
                    ),
                  ),
                  backgroundColor: Color.fromRGBO(248, 206, 88, 1),
                ),
                child: Text(
                  'Log in with Email',
                  style: TextStyle(
                    fontFamily: 'Roboto',
                    fontSize: 14,
                    fontWeight: FontWeight.w900,
                    letterSpacing: 0.04,
                    color: Colors.black,
                  ),
                ),
              ),
            ),
            Container(
              width: 382, // Button width
              height: 62, // Button height
              margin: EdgeInsets.only(bottom: 16),
              child: ElevatedButton(
                onPressed: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) => RegisterScreen()));
                },
                style: ElevatedButton.styleFrom(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(6), // Set to 0 for a rectangular shape
                    side: BorderSide(
                      color: Color.fromRGBO(1, 29, 69, 1), // Border color
                      width: 2, // Border width
                    ),
                  ),
                  backgroundColor: Color.fromRGBO(1, 29, 69, 1),
                ),
                child: Text(
                  'Register',
                  style: TextStyle(
                    fontFamily: 'Roboto',
                    fontSize: 14,
                    fontWeight: FontWeight.w900,
                    letterSpacing: 0.04,
                    color: Colors.white,
                  ),
                ),
              ),
            ),

          ],
        ),
      ),
      ],
    ),
    );

  }
}
