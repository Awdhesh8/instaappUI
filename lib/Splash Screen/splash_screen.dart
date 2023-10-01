import 'package:flutter/material.dart';

import '../First Screen/first_screen.dart';


class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {

  @override
  void initState() {
    super.initState();

    // Delay navigation to the next screen for 2 seconds (2000 milliseconds)
    Future.delayed(Duration(milliseconds: 2000), () {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(
          builder: (context) => FirstScreen(),
        ),
      );
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
     body: Container(
       height: double.infinity,
       width: double.infinity,
         color: const Color.fromARGB(255, 255, 255, 1),
       child: Center(
         child: ClipRRect(
           borderRadius: BorderRadius.circular(100),
           child: Image.asset('assets/images/Logo.png'),
         ),
       ),
     ),
    );
  }
}
