import 'package:flutter/material.dart';
import 'package:flutter_application_6/searchingscreen.dart';

class Startscreen extends StatefulWidget {
  const Startscreen({super.key});

  @override
  State<Startscreen> createState() => _StartscreenState();
}

class _StartscreenState extends State<Startscreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.teal,
      body: Column(
        children: [
          Row(
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 30, left: 30),
                child: Icon(Icons.person, color: Colors.white, size: 40),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 30, left: 60),
                child: Stack(
                  children: [
                    Container(
                      height: 30,
                      width: 163,
                      alignment: Alignment.centerRight,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(30),
                        color: Color(0xff0BEBA7),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.only(right: 20),
                        child: Text(
                          'Oncam',
                          style: TextStyle(
                            fontWeight: FontWeight.w500,
                            fontSize: 11,
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ),
                    Container(
                      height: 30,
                      width: 88,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(30),
                        color: Colors.white,
                      ),
                      child: Center(
                        child: Text(
                          'Random',
                          style: TextStyle(
                            fontWeight: FontWeight.w500,
                            fontSize: 11,
                            color: Colors.red,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 25, left: 60),
                child: Container(
                  height: 30,
                  width: 30,
                  child: Image.asset('assets/Group 8.png'),
                ),
              ),
            ],
          ),
          Padding(
            padding: const EdgeInsets.only(top: 120),
            child: GestureDetector(
              onTap: () {
                Searchingscreen;
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => Searchingscreen()),
                );
              },
              child: Container(
                height: 336,
                width: 336,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(200),
                  border: Border.all(color: Colors.white),
                ),
                child: Icon(Icons.videocam, color: Colors.white, size: 115),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 30),
            child: Text(
              'Tap the screen to start',
              style: TextStyle(
                fontWeight: FontWeight.w500,
                fontSize: 24,
                color: Colors.white,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 180, left: 150),
            child: Row(
              children: [
                Padding(
                  padding: const EdgeInsets.only(right: 15),
                  child: Container(
                    height: 36,
                    width: 36,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(100),
                      color: Color(0xff8DECF9),
                    ),
                    child: Icon(Icons.arrow_outward, color: Colors.teal),
                  ),
                ),
                Text(
                  'Female',
                  style: TextStyle(
                    fontWeight: FontWeight.w500,
                    fontSize: 24,
                    color: Colors.black,
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
