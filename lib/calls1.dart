import 'package:flutter/material.dart';

class Calls1 extends StatefulWidget {
  const Calls1({super.key});

  @override
  State<Calls1> createState() => _Calls1State();
}

class _Calls1State extends State<Calls1> {
  final List<Map<String, dynamic>> chat = [
    {
      'image': 'assets/Group 379.png',
      'name': 'Team Align',
      'message': 'Today, 09:30 AM',
      ' Icon': (Icons.wifi_calling_3_rounded),
      'icon': Icons.videocam_outlined,
    },
    {
      'image': 'assets/Rectangle 1092.png',
      'name': 'Jhon Abraham',
      'message': 'Today, 07:30 AM',
      ' Icon': (Icons.wifi_calling_3_rounded),
      'icon': Icons.videocam_outlined,
    },
    {
      'image': 'assets/Rectangle 1092 (1).png',
      'name': 'Sabila Sayma',
      'message': 'Yesterday, 07:35 PM',
      ' Icon': (Icons.wifi_calling_3_rounded),
      'icon': Icons.videocam_outlined,
    },
    {
      'image': 'assets/Rectangle 1092 (4).png',
      'name': 'Alex Linderson',
      'message': 'Monday, 09:30 AM',
      ' Icon': (Icons.wifi_calling_3_rounded),
      'icon': Icons.videocam_outlined,
    },
    {
      'image': 'assets/Rectangle 1092.png',
      'name': 'Jhon Abraham',
      'message': '03/07/22, 07:30 AM',
      ' Icon': (Icons.wifi_calling_3_rounded),
      'icon': Icons.videocam_outlined,
    },
    {
      'image': 'assets/Ellipse 308.png',
      'name': 'John Borino',
      'message': 'Monday, 09:30 AM',
      ' Icon': (Icons.wifi_calling_3_rounded),
      'icon': Icons.videocam_outlined,
    },
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.teal,
      body: SafeArea(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 30, left: 20),
              child: Row(
                children: [
                  Container(
                    height: 44,
                    width: 44,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(50),
                      border: Border.all(color: Colors.white),
                    ),
                    child: Icon(Icons.search, color: Colors.white, size: 28),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 150),
                    child: Text(
                      'Calls',
                      style: TextStyle(
                        fontWeight: FontWeight.w500,
                        fontSize: 20,
                        color: Colors.white,
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 150),
                    child: Container(
                      height: 44,
                      width: 44,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(50),
                        border: Border.all(color: Colors.white),
                      ),
                      child: Icon(
                        Icons.add_ic_call_sharp,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 50, right: 5),
              child: Stack(
                children: [
                  Container(
                    height: 750,
                    width: 500,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(30),
                      color: Colors.white,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 30, left: 20),
                    child: Text(
                      'Recent',
                      style: TextStyle(
                        fontWeight: FontWeight.w600,
                        fontSize: 18,
                      ),
                    ),
                  ),
                  ListView.builder(
                    scrollDirection: Axis.vertical,
                    itemCount: chat.length,
                    itemBuilder:( context,index){
                      return CircleAvatar(
                    radius: 30,
                    child: Image.asset(chat[index]['image']),
                      );
                    }
                    )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
