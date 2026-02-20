import 'package:flutter/material.dart';
import 'package:flutter_volume_controller/flutter_volume_controller.dart';

class Videocall extends StatefulWidget {
  const Videocall({super.key});

  @override
  State<Videocall> createState() => _VideocallState();
}

class _VideocallState extends State<Videocall> {
  double volume = 0.5;
  @override
  void initState() {
    super.initState();

    FlutterVolumeController.getVolume().then((value) {
      setState(() {
        volume = value ?? 0.5; // <-- update the state variable
      });
    });
  }

  Widget build(BuildContext context) {
    Widget _buildControlButton(IconData icon, bool isActive, {Color? color}) {
  final bool isCallEnd = icon == Icons.close;

  return Container(
    decoration: BoxDecoration(
      color: isCallEnd
          ? Colors.red // red background for hang-up button
          : isActive
              ? Colors.teal
              : const Color.fromARGB(255, 107, 105, 105).withOpacity(0.6),
      shape: BoxShape.circle,
      boxShadow: [
        BoxShadow(
          color: Colors.black.withOpacity(0.4),
          blurRadius: 4,
          offset: Offset(0, 2),
        ),
      ],
    ),
    padding: const EdgeInsets.all(15),
    child: Icon(icon, color: color ?? Colors.white, size: 28),
  );
}

    final Size size = MediaQuery.of(context).size;

    return Scaffold(
      body: Stack(
        children: [
          SizedBox(
            height: size.height,
            width: size.width,
            child: Image.asset(
              'assets/image 40 (1) 1.png',
              fit: BoxFit.cover, // Cover ensures it fills without stretching
            ),
          ),
          GestureDetector(
            onTap: () => Navigator.pop(context),
            child: Padding(
              padding: const EdgeInsets.only(top: 50, left: 30),
              child: Icon(Icons.arrow_back, color: Colors.white),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 40, left: 370),
            child: Container(
              height: 96,
              width: 86,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(30),
              ),
              child: Image.asset('assets/Rectangle 1087.png', fit: BoxFit.fill),
            ),
          ),

          /// 🔊 Volume Slider
          Positioned(
            left: 20,
            top: size.height * 0.25,
            child: Container(
              height: 250,
              width: 70,
              decoration: BoxDecoration(
                color: const Color.fromARGB(255, 0, 0, 0).withOpacity(0.6),
                borderRadius: BorderRadius.circular(40),
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  RotatedBox(
                    quarterTurns: -1,
                    child: Slider(
                      thumbColor: Colors.white,
                      activeColor: Colors.teal,
                      value: volume,
                      min: 0.0,
                      max: 1.0,
                      onChanged: (value) async {
                        setState(() {
                          volume = value;
                        });

                        await FlutterVolumeController.setVolume(value);
                      },
                    ),
                  ),
                  const Icon(Icons.volume_up, color: Colors.white),
                ],
              ),
            ),
          ),
          Positioned(
            bottom: 20,
            left: 30,
            right: 30,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                _buildControlButton(Icons.mic, false),
                _buildControlButton(Icons.volume_up, false),
                _buildControlButton(Icons.videocam, false),
                _buildControlButton(
                  Icons.chat_bubble,
                  true,
                ), // active chat button
                _buildControlButton(Icons.close, false, color: Colors.white),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
