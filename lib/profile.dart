import 'package:flutter/material.dart';

class Profile extends StatefulWidget {
  const Profile({super.key});

  @override
  State<Profile> createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.teal,
      appBar: AppBar(
        backgroundColor: Colors.teal,
        leading: Icon(Icons.arrow_back, color: Colors.white),
        title: Center(
          child: Padding(
            padding: const EdgeInsets.only(right: 40),
            child: Text(
              'Settings',
              style: TextStyle(
                fontWeight: FontWeight.w500,
                fontSize: 20,
                color: Colors.white,
              ),
            ),
          ),
        ),
      ),
      body: SafeArea(child: Column(
        children: [
Container(
  
)
        ],
      )
      ),
    );
  }
}
