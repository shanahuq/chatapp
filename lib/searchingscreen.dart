import 'package:flutter/material.dart';
import 'package:flutter_application_6/calls.dart';

class Searchingscreen extends StatefulWidget {
  const Searchingscreen({super.key});

  @override
  State<Searchingscreen> createState() => _SearchingscreenState();
}

class _SearchingscreenState extends State<Searchingscreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.teal,
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 40, right: 280),
            child: GestureDetector(
              onTap: () => Navigator.pop(context),
              child: CircleAvatar(
                radius: 25,
                backgroundColor: const Color.fromARGB(91, 255, 255, 255),
                child: Center(
                  child: Icon(Icons.arrow_back_ios, color: Colors.white),
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 140),
            child: Center(
              child: GestureDetector(
                onTap: () {
                  Calls;
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => Calls()),
                  );
                },
                child: Container(
                  height: 334,
                  width: 334,
                  child: Image.asset('assets/Ellipse 48.png'),
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 20),
            child: Text(
              'Searching for new friends......',
              style: TextStyle(
                fontWeight: FontWeight.w500,
                fontSize: 24,
                color: Colors.white,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
