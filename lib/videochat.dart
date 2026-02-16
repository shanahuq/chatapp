import 'package:flutter/material.dart';
import 'package:flutter_application_6/startscreen.dart';

class Videochat extends StatefulWidget {
  const Videochat({super.key});

  @override
  State<Videochat> createState() => _VideochatState();
}

class _VideochatState extends State<Videochat> {
  String selected = "Both";

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    final circleSize = size.width * 0.85;

    return Scaffold(
      backgroundColor: const Color(0xFF0F8F7F),
      body: SafeArea(
        child: Column(
          children: [
            const SizedBox(height: 30),
            const Text(
              "Video chat",
              style: TextStyle(
                fontSize: 22,
                color: Colors.white,
                fontWeight: FontWeight.w500,
              ),
            ),
            const SizedBox(height: 40),

            /// Main Circle Section
            Center(
              child: SizedBox(
                height: circleSize,
                width: circleSize,
                child: Stack(
                  alignment: Alignment.center,
                  clipBehavior: Clip.none,
                  children: [
                    /// Outer Gradient Circle
                    Container(
                      decoration: const BoxDecoration(
                        shape: BoxShape.circle,
                        gradient: LinearGradient(
                          colors: [
                            Color.fromARGB(114, 29, 216, 135),
                            Color.fromARGB(255, 57, 15, 153),
                          ],
                          begin: Alignment.topLeft,
                          end: Alignment.bottomRight,
                        ),
                      ),
                    ),

                    /// Middle Circle
                    Container(
                      height: circleSize * 0.75,
                      width: circleSize * 0.75,
                      decoration: const BoxDecoration(
                        shape: BoxShape.circle,
                        gradient: LinearGradient(
                          colors: [
                            Color.fromARGB(255, 52, 3, 108),
                            Color.fromARGB(255, 52, 3, 108),
                          ],
                          begin: Alignment.topLeft,
                          end: Alignment.bottomRight,
                        ),
                      ),
                    ),
                    Container(
                      height: circleSize * 0.55,
                      width: circleSize * 0.55,
                      decoration: const BoxDecoration(
                        shape: BoxShape.circle,
                        gradient: LinearGradient(
                          colors: [
                            Color(0xFF6A1BC4),
                            Color(0xFF3E0E83),
                            Color.fromARGB(255, 158, 86, 239),
                          ],
                          begin: Alignment.topLeft,
                          end: Alignment.bottomRight,
                        ),
                      ),
                    ),

                    /// Text
                    const Text(
                      "Mettiunlike",
                      style: TextStyle(
                        fontSize: 22,
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                      ),
                    ),

                    /// Gender Buttons
                    // Positioned(
                    //   bottom: -30,
                    // child: Row(
                    //   children: [
                    //     genderButton("Female"),
                    //     const SizedBox(width: 15),
                    //     genderButton("Both"),
                    //     const SizedBox(width: 15),
                    //     genderButton("Male"),
                    //   ],
                    // ),
                    // ),
                    Positioned(
                      bottom: -10,
                      left: 80,
                      child: GestureDetector(
                        onTap: () {
                          Startscreen;
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => Startscreen(),
                            ),
                          );
                        },
                        child: Container(
                          height: 67,
                          width: 67,
                          child: Stack(
                            children: [
                              Image.asset('assets/Ellipse 40.png'),
                              Center(
                                child: Padding(
                                  padding: const EdgeInsets.only(bottom: 10),
                                  child: Image.asset(
                                    'assets/images-removebg-preview (15) 1.png',
                                    height: 29,
                                    width: 31,
                                  ),
                                ),
                              ),
                              Center(
                                child: Padding(
                                  padding: const EdgeInsets.only(top: 30),
                                  child: Text(
                                    'Female',
                                    style: TextStyle(
                                      fontWeight: FontWeight.w500,
                                      fontSize: 11,
                                      color: Colors.white,
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                    Positioned(
                      bottom: -39,
                      child: Container(
                        height: 67,
                        width: 67,
                        child: Stack(
                          children: [
                            Image.asset('assets/Ellipse 41.png'),
                            Center(
                              child: Padding(
                                padding: const EdgeInsets.only(
                                  bottom: 10,
                                  left: 10,
                                ),
                                child: Row(
                                  children: [
                                    Image.asset(
                                      'assets/images-removebg-preview (15) 1.png',
                                      height: 23,
                                      width: 24,
                                    ),
                                    Image.asset(
                                      'assets/download-removebg-preview (20) 2.png',
                                      height: 23,
                                      width: 24,
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            Center(
                              child: Padding(
                                padding: const EdgeInsets.only(top: 20),
                                child: Text(
                                  'Both',
                                  style: TextStyle(
                                    fontWeight: FontWeight.w500,
                                    fontSize: 11,
                                    color: Colors.black,
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    Positioned(
                      bottom: -10,
                      right: 80,
                      child: Container(
                        height: 67,
                        width: 67,
                        child: Stack(
                          children: [
                            Image.asset('assets/Ellipse 40.png'),
                            Center(
                              child: Padding(
                                padding: const EdgeInsets.only(bottom: 10),
                                child: Image.asset(
                                  'assets/download-removebg-preview (20) 2.png',
                                  height: 32,
                                  width: 26,
                                ),
                              ),
                            ),
                            Center(
                              child: Padding(
                                padding: const EdgeInsets.only(top: 33),
                                child: Text(
                                  'Male',
                                  style: TextStyle(
                                    fontWeight: FontWeight.w500,
                                    fontSize: 11,
                                    color: Colors.black,
                                  ),
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
      ),
    );
  }

  Widget genderButton(String type) {
    bool isSelected = selected == type;

    return GestureDetector(
      onTap: () {
        setState(() {
          selected = type;
        });
      },
      child: Container(
        height: 65,
        width: 65,
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          color: isSelected ? const Color(0xFF36C2A6) : const Color(0xFF6A1BC4),
          boxShadow: [
            if (isSelected)
              const BoxShadow(
                color: Colors.black26,
                blurRadius: 8,
                offset: Offset(0, 4),
              ),
          ],
        ),
        alignment: Alignment.center,
        child: Text(
          type,
          textAlign: TextAlign.center,
          style: const TextStyle(
            fontSize: 12,
            color: Colors.white,
            fontWeight: FontWeight.w500,
          ),
        ),
      ),
    );
  }
}
