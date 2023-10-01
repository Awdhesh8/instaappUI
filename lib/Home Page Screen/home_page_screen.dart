import 'package:flutter/material.dart';

class HomePageScreen extends StatefulWidget {
  const HomePageScreen({Key? key});

  @override
  State<HomePageScreen> createState() => _HomePageScreenState();
}

class _HomePageScreenState extends State<HomePageScreen> {
  final List<String> avatarAssetPaths = [
    'assets/images/Logo.png', // Replace with actual AssetImage paths
    'assets/images/Logo.png',
    'assets/images/Logo.png',
    'assets/images/Logo.png',
    'assets/images/Logo.png',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        title: Center(child: Image.asset('assets/images/Logo.png', width: 70)),
        leading: Padding(
          padding: const EdgeInsets.only(left: 50),
          child: Icon(Icons.add_circle_outline_outlined),
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 30),
            child: Icon(Icons.share, color: Colors.black),
          ),
        ],
      ),
      body: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: avatarAssetPaths.length,
        itemBuilder: (context, index) {
          return Padding(
            padding: EdgeInsets.all(8.0),
            child: Stack(
              children: [
                Container(
                  width: 60,
                  height: 60,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    border: Border.all(
                      color: Colors.yellow, // Yellow border color
                      width: 2.0, // Border width
                    ),
                  ),
                  child: CircleAvatar(
                    backgroundImage: AssetImage(avatarAssetPaths[index]),
                  ),
                ),
                if (index == 0) // Only add plus icon to the first circle
                  Positioned(
                    bottom: 0,
                    right: 0,
                    child: Icon(
                      Icons.add,
                      color: Colors.white,
                      size: 20,
                    ),
                  ),
              ],
            ),
          );
        },
      ),
    );
  }
}
