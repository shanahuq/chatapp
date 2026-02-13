import 'package:flutter/material.dart';

class Videochat extends StatefulWidget {
  const Videochat({super.key});

  @override
  State<Videochat> createState() => _VideochatState();
}

class _VideochatState extends State<Videochat> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.teal,
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 55, top: 70),
            child: Text(
              'Video chat',
              style: TextStyle(
                fontWeight: FontWeight.w400,
                fontSize: 24,
                color: Colors.white,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 100, left: 50),
            child: Container(
              height: 391,
              width: 391,
              child: Stack(
                clipBehavior: Clip.none,
                children: [
                  Image.asset('assets/Ellipse 44.png'),
                  Padding(
                    padding: const EdgeInsets.only(top: 45, left: 50),
                    child: Container(
                      height: 290,
                      width: 290,
                      child: Image.asset('assets/Ellipse 38.png'),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 80, left: 90),
                    child: Container(
                      height: 216,
                      width: 216,
                      child: Image.asset('assets/Ellipse 38 (1).png'),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 170, left: 135),
                    child: Text(
                      'Mettiunlike',
                      style: TextStyle(
                        fontWeight: FontWeight.w700,
                        fontSize: 24,
                        color: Colors.white,
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 320, left: 80),
                    child: Container(
                      height: 67,
                      width: 67,
                      child: Stack(
                        clipBehavior: Clip.none,
                        alignment: Alignment.center,
                        children: [
                          // Background circle
                          Image.asset(
                            'assets/Ellipse 40.png',
                            height: 67,
                            width: 67,
                            fit: BoxFit.cover,
                          ),

                          // Center icon
                          Padding(
                            padding: const EdgeInsets.only(bottom: 12),
                            child: Image.asset(
                              'assets/images-removebg-preview (15) 1.png',
                              height: 29,
                              width: 31,
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(top: 22),
                            child: Text(
                              'Female',
                              style: TextStyle(
                                fontWeight: FontWeight.w500,
                                fontSize: 11,
                                color: Colors.white,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 300,left: 160),
                    child: Container(
                      height: 67,
                      width: 67,
                      child: Stack(
                        clipBehavior: Clip.none,
                        alignment: Alignment.center,
                        children: [
                          Image.asset('assets/Ellipse 41.png'),
                          Padding(
                            padding: const EdgeInsets.only(top: 20, left: 10),
                            child: Row(
                              children: [
                                Image.asset(
                                  'assets/images-removebg-preview (15) 1.png',
                                  height: 23,
                                  width: 24,
                                ),
                                Image.asset(
                                  'assets/download-removebg-preview (20) 2.png',
                                  height: 25,
                                  width: 20,
                                ),
                              ],
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(top: 42,left: 21),
                            child: Text(
                              'Both',
                              style: TextStyle(
                                fontWeight: FontWeight.w500,
                                fontSize: 11,
                                color: Colors.black,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
