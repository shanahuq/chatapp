import 'package:flutter/material.dart';

class Sendgifts extends StatefulWidget {
  const Sendgifts({super.key});

  @override
  State<Sendgifts> createState() => _SendgiftsState();
}

class _SendgiftsState extends State<Sendgifts> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.teal,
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 20, top: 30),
            child: Row(
              children: [
                GestureDetector(
                  onTap: () {
                    Navigator.pop(context);
                  },
                  child: CircleAvatar(
                    radius: 13,
                    backgroundColor: Colors.white,
                    child: Icon(Icons.arrow_back, size: 20),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 160),
                  child: Text(
                    'Store',
                    style: TextStyle(
                      fontWeight: FontWeight.w500,
                      fontSize: 24,
                      color: Colors.white,
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 100),
                  child: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(50),
                      color: Colors.white,
                    ),
                    height: 60,
                    width: 96,
                    child: Row(
                      children: [
                        Image.asset(
                          'assets/download-removebg-preview (31) 1.png',
                          height: 50,
                        ),
                        SizedBox(width: 10),
                        Image.asset('assets/0.png', height: 30),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 20, top: 35),
            child: Row(
              children: [
                Text(
                  'VIP Package',
                  style: TextStyle(
                    fontWeight: FontWeight.w500,
                    fontSize: 20,
                    color: Colors.white,
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(right: 35, top: 35),
            child: Stack(
              children: [
                Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    color: Colors.white,
                  ),
                  height: 170,
                  width: 380,
                  child: Column(
                    children: [
                      // Positioned(
                      // top: 0,
                      // right: 0,
                      // child: Transform.rotate(angle: 45,
                      //   child: Container(
                      //     height: 50,
                      //     width: 100,
                      //     color: Colors.black,
                      //     alignment: Alignment.center,
                      // decoration: BoxDecoration(
                      //   color: Colors.black,
                      //   borderRadius: BorderRadius.only(
                      //     topRight: Radius.circular(20),
                      //     bottomLeft: Radius.circular(20),
                      //   ),
                      // ),
                      //       child: Text(
                      //         '50% OFF',
                      //         style: TextStyle(
                      //           color: Colors.white,
                      //           fontWeight: FontWeight.w500,
                      //           fontSize: 11,
                      //         ),
                      //       ),
                      //     ),
                      //   ),
                      // ),
                      Padding(
                        padding: const EdgeInsets.only(left: 20, top: 40),
                        child: Row(
                          children: [
                            Text(
                              'VIP +',
                              style: TextStyle(
                                fontWeight: FontWeight.w500,
                                fontSize: 16,
                                color: const Color.fromARGB(255, 1, 23, 60),
                              ),
                            ),
                            Image.asset(
                              'assets/download-removebg-preview (31) 1.png',
                              height: 20,
                            ),
                            Text(
                              '3000',
                              style: TextStyle(
                                fontWeight: FontWeight.w500,
                                fontSize: 16,
                                color: const Color.fromARGB(255, 243, 208, 101),
                              ),
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 20),
                        child: Row(
                          children: [
                            Text(
                              'GET',
                              style: TextStyle(
                                fontWeight: FontWeight.w500,
                                fontSize: 11,
                                color: const Color.fromARGB(255, 1, 23, 60),
                              ),
                            ),
                            Image.asset(
                              'assets/download-removebg-preview (31) 1.png',
                              height: 20,
                            ),
                            Text(
                              '3000 COINS',
                              style: TextStyle(
                                fontWeight: FontWeight.w500,
                                fontSize: 11,
                                color: const Color.fromARGB(255, 246, 210, 79),
                              ),
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 20),
                        child: Row(
                          children: [
                            Text(
                              'Every month',
                              style: TextStyle(
                                fontWeight: FontWeight.w500,
                                fontSize: 15,
                                color: const Color.fromARGB(255, 3, 29, 73),
                              ),
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 20),
                        child: Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(16),
                            color: Colors.teal,
                          ),
                          height: 30,
                          width: 285,
                          child: Center(
                            child: Text(
                              '\$ 33,444 / Month  \$ 56.66',
                              style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.w500,
                                fontSize: 10,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Positioned(
                  right: 0,

                  child: Stack(
                    children: [
                      Image.asset('assets/Rectangle 46.png'),
                      Padding(
                        padding: const EdgeInsets.only(bottom: 10, left: 10),
                        child: Positioned(
                          top: 100,
                          right: 50,
                          child: Padding(
                            padding: const EdgeInsets.only(top: 15, left: 30),
                            child: Transform.rotate(
                              angle: 45,
                              child: Column(
                                children: [
                                  Text(
                                    '50%',
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontWeight: FontWeight.w500,
                                      fontSize: 11,
                                    ),
                                  ),
                                  Text(
                                    'OFF',
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontWeight: FontWeight.w500,
                                      fontSize: 11,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 20, top: 20),
            child: Row(
              children: [
                Text(
                  'coins',
                  style: TextStyle(
                    fontWeight: FontWeight.w500,
                    fontSize: 20,
                    color: Colors.white,
                  ),
                ),
              ],
            ),
          ),
        Expanded(
          child: GridView.builder(
            padding: const EdgeInsets.all(8),
            itemCount: 6,
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
              crossAxisSpacing: 10,
              mainAxisSpacing: 10,
              childAspectRatio: 1.5, // square items
            ),
            itemBuilder: (context, index) {
              return Container(
                decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(20),
                ),
                child: Center(
          child: Text(''),
                ),
              );
            },
          ),
        ),]
      ),
    );
  }
}
