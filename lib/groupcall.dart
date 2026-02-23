import 'package:flutter/material.dart';

class Groupcall extends StatefulWidget {
  const Groupcall({super.key});

  @override
  State<Groupcall> createState() => _GroupcallState();
}

class _GroupcallState extends State<Groupcall> {
  
  final List<Map<String, dynamic>> chat = [
    {
      'image': 'assets/Ellipse 425.png',
      'name': 'Dean Ronload',
      'message': 'Sounds resonable',
    },
    {
      'image': 'assets/Rectangle 1092 (5).png',
      'name': 'Annei Ellison',
      'message': 'What about our profit?',
    },
    {
      'image': 'assets/Rectangle 1092.png',
      'name': 'John Borino',
      'message': 'What led you to this thought?',
    },
  ];
  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;

    return Scaffold(
      body: Stack(
        children: [
          Positioned.fill(
            child: Image.asset(
              'assets/Rectangle 1110.png',
              fit: BoxFit.cover,
              // Cover ensures it fills without stretching
            ),
          ),
          SafeArea(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 40, left: 28),
                  child: Text(
                    'Meeting with \nLora Adom',
                    style: TextStyle(
                      fontWeight: FontWeight.w700,
                      fontSize: 40,
                      color: Colors.white,
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 28.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(height: 20),
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          CircleAvatar(
                            radius: 20,
                            child: Image.asset(
                              'assets/Ellipse 424.png',
                              fit: BoxFit.cover,
                            ),
                          ),

                          Column(
                            children: [
                              Text(
                                'Lora Adom',
                                style: TextStyle(
                                  fontWeight: FontWeight.w600,
                                  fontSize: 16,
                                  color: Colors.white,
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(
                                  left: 24,
                                  top: 0,
                                ),
                                child: Text(
                                  'Meeting organizer',
                                  style: TextStyle(
                                    fontWeight: FontWeight.w500,
                                    fontSize: 13,
                                    color: Colors.white,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),

                      Padding(
                        padding: const EdgeInsets.only(top: 200),
                        child: SizedBox(
                          height: 280,

                          child: ListView.builder(
                            itemCount: chat.length,
                            scrollDirection: Axis.vertical,
                            itemBuilder: (context, index) {
                              return Padding(
                                padding: const EdgeInsets.only(top: 10),
                                child: SizedBox(
                                  height: 80,
                                  
                                  child: Row(
                                    children: [
                                      Container(
                                        height: 36,
                                        width: 36,
                                        child: Image.asset(
                                          chat[index]['image'],
                                        ),
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.only(left: 27,top: 17),
                                        child: Column(crossAxisAlignment: CrossAxisAlignment.start,
                                          children: [
                                            Text(
                                              chat[index]['name'],
                                              style: TextStyle(
                                                color: Colors.white,
                                                fontWeight: FontWeight.w500,
                                                fontSize: 15,
                                              ),
                                            ),
                                            Text(
                                              chat[index]['message'],
                                              style: TextStyle(
                                                color: Colors.white,
                                                fontWeight: FontWeight.w500,
                                                fontSize: 15,
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              );
                            },
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 10),
                  child: Container(
                    height: 80,
                    width: 480,
                    child: Image.asset('assets/Icons uihut.png'),
                  ),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
