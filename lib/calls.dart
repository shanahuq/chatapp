import 'package:call_slider_button/call_slider_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_6/videocall.dart';

class Calls extends StatefulWidget {
  const Calls({super.key});

  @override
  State<Calls> createState() => _CallsState();
}

class _CallsState extends State<Calls> {
  @override
  Widget build(BuildContext context) {
    // Get screen size to make background responsive
    final Size size = MediaQuery.of(context).size;

    return Scaffold(
      body: Stack(
        children: [
          SizedBox(
            height: size.height,
            width: size.width,
            child: Image.asset(
              'assets/download (22) 2.png',
              fit: BoxFit.cover, // Cover ensures it fills without stretching
            ),
          ),

          Padding(
            padding: const EdgeInsets.only(top: 220, left: 160),
            child: Column(
              children: [
                CircleAvatar(
                  radius: 80,
                  backgroundColor: Colors.white24,
                  child: ClipOval(
                    child: Image.asset(
                      'assets/Ellipse 311.png',
                      fit: BoxFit.cover,
                      width: 160,
                      height: 160,
                    ),
                  ),
                ),

                const SizedBox(height: 20),

                // Name
                const Text(
                  'Borsha Akther',
                  style: TextStyle(
                    fontWeight: FontWeight.w600,
                    fontSize: 32,
                    color: Colors.white,
                  ),
                ),

                const SizedBox(height: 8),

                // Status
                const Text(
                  'Incoming call',
                  style: TextStyle(
                    fontWeight: FontWeight.w400,
                    fontSize: 18,
                    color: Colors.white70,
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 540, left: 100),
            child: Row(
              children: [
                Icon(Icons.alarm, color: Colors.white, size: 26),
                Padding(
                  padding: const EdgeInsets.only(left: 220),
                  child: Container(
                    height: 26,
                    width: 26,
                    child: Image.asset('assets/Message.png'),
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 570, left: 70),
            child: Row(
              children: [
                Text(
                  'Remind me',
                  style: TextStyle(
                    fontWeight: FontWeight.w500,
                    fontSize: 16,
                    color: Colors.white,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 175),
                  child: Text(
                    'Message',
                    style: TextStyle(
                      fontWeight: FontWeight.w500,
                      fontSize: 16,
                      color: Colors.white,
                    ),
                  ),
                ),
              ],
            ),
          ),
          Positioned(
            bottom: 60,
            left: 30,
            right: 30,
            child: Container(
              height: 65,
              decoration: BoxDecoration(
                color: Colors.black.withOpacity(
                  0.35,
                ), // translucent black background
                borderRadius: BorderRadius.circular(40), // rounded corners
              ),
              child: CallSliderButton(
  height: 65,
  backgroundColor: Colors.transparent,
  acceptIcon: const Icon(Icons.call, color: Colors.green),
  textStyle: const TextStyle(
    color: Colors.white70,
    fontSize: 18,
    fontWeight: FontWeight.w500,
  ),

  onAccept: () {
    Navigator.pushReplacement(
      context,
      MaterialPageRoute(
        builder: (context) => const Videocall(),
      ),
    );
  },

  onDecline: () {
    debugPrint("Call declined!");
  },
),
            ),
          ),
        ],
      ),
    );
  }
}
