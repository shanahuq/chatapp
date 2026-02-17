import 'package:call_slider_button/call_slider_button.dart';
import 'package:flutter/material.dart';

class Calls extends StatefulWidget {
  const Calls({super.key});

  @override
  State<Calls> createState() => _CallsState();
}

class _CallsState extends State<Calls> {
  double _dragPosition = 0;
  final double _maxDrag = 250;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          children: [
            Stack(
              children: [
                Container(
                  height: 800,
                  width: 490,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: Image.asset(
                    'assets/download (22) 2.png',
                    fit: BoxFit.fill,
                  ),
                ),
                Center(
                  child: Padding(
                    padding: const EdgeInsets.only(top: 200),
                    child: CircleAvatar(
                      radius: 80,
                      child: Image.asset(
                        'assets/Ellipse 311.png',
                        fit: BoxFit.fill,
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 380),
                  child: Center(
                    child: Text(
                      'Borsha Akther',
                      style: TextStyle(
                        fontWeight: FontWeight.w600,
                        fontSize: 25,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
                Center(
                  child: Padding(
                    padding: const EdgeInsets.only(top: 415),
                    child: Text(
                      'Incoming call',
                      style: TextStyle(
                        fontWeight: FontWeight.w500,
                        fontSize: 16,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 100, top: 550),
                  child: Row(
                    children: [
                      Icon(Icons.alarm, color: Colors.white, size: 24),
                      Padding(
                        padding: const EdgeInsets.only(left: 230),
                        child: Container(
                          height: 26,
                          width: 26,
                          child: Image.asset(
                            'assets/Message.png',
                            fit: BoxFit.fill,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 70, top: 580),
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
                        padding: const EdgeInsets.only(left: 180),
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
                Center(
                  child: Padding(
                    padding: const EdgeInsets.only(top: 660),
                    child: Container(
                      height: 60,
                      width: 275,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(40),
                        color: const Color.fromARGB(
                          19,
                          0,
                          0,
                          0,
                        ).withOpacity(0.4),
                      ),
                      
                      child: Row(
                        children: [
                          // Padding(
                          //   padding: const EdgeInsets.only(left: 10),
                          //   child: Image.asset(
                          //     'assets/Group 153.png',
                          //     height: 42,
                          //     width: 42,
                          //   ),
                          // ),
                          // Padding(
                          //   padding: const EdgeInsets.only(left: 30),
                          //   child: Text(
                          //     'slide to answer',
                          //     style: TextStyle(
                          //       fontWeight: FontWeight.w500,
                          //       fontSize: 18,
                          //       color: Colors.white,
                          //     ),
                          //   ),
                          // ),
                          CallSliderButton(
            onAccept: () => debugPrint("Call accepted!"),
            onDecline: () => debugPrint("Call declined!"),
          ),
                        ],
                      ),
                    ),
                  ),
                ),
                
              ],
            ),
            // Positioned(
            //   bottom: 60,
            //   left: 40,
            //   right: 40,
            //   child: Container(
            //     height: 70,
            //     decoration: BoxDecoration(
            //       color: Colors.black.withOpacity(0.4),
            //       borderRadius: BorderRadius.circular(40),
            //     ),
            //     child: Stack(
            //       alignment: Alignment.centerLeft,
            //       children: [
            //         Center(
            //           child: Text(
            //             "slide to answer",
            //             style: TextStyle(
            //               color: Colors.white70,
            //               fontSize: 16,
            //               fontWeight: FontWeight.w500,
            //             ),
            //           ),
            //         ),
            //         Positioned(
            //           left: _dragPosition,
            //           child: GestureDetector(
            //             onHorizontalDragUpdate: (details) {
            //               setState(() {
            //                 _dragPosition += details.delta.dx;
            //                 if (_dragPosition < 0) _dragPosition = 0;
            //                 if (_dragPosition > _maxDrag) {
            //                   _dragPosition = _maxDrag;
            //                 }
            //               });
            //             },
            //             onHorizontalDragEnd: (details) {
            //               if (_dragPosition >= _maxDrag) {
            //                 print("Call Answered");
            //               }
            //               setState(() {
            //                 _dragPosition = 0;
            //               });
            //             },
            //             child: Container(
            //               width: 60,
            //               height: 60,
            //               decoration: const BoxDecoration(
            //                 color: Colors.white,
            //                 shape: BoxShape.circle,
            //               ),
            //               child: const Icon(
            //                 Icons.call,
            //                 color: Colors.green,
            //                 size: 30,
            //               ),
            //             ),
            //           ),
            //         ),
            //       ],
            //     ),
            //   ),
            // ),
          ],
        ),
      ),
    );
  }
}
