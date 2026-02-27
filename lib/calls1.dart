import 'package:flutter/material.dart';
import 'package:flutter_application_6/contacts.dart';

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
      'callType': 'incoming',
      'callIcon': Icons.wifi_calling_3_rounded,
      'videoIcon': Icons.videocam_outlined,
    },
    {
      'image': 'assets/Rectangle 1092.png',
      'name': 'Jhon Abraham',
      'message': 'Today, 07:30 AM',
      'callType': 'incoming',
      'callIcon': Icons.wifi_calling_3_rounded,
      'videoIcon': Icons.videocam_outlined,
    },
    {
      'image': 'assets/Rectangle 1092 (1).png',
      'name': 'Sabila Sayma',
      'message': 'Yesterday, 07:35 PM',
      'callType': 'missed',
      'callIcon': Icons.wifi_calling_3_rounded,
      'videoIcon': Icons.videocam_outlined,
    },
    {
      'image': 'assets/Rectangle 1092 (4).png',
      'name': 'Alex Linderson',
      'message': 'Monday, 09:30 AM',
      'callType': 'incoming',
      'callIcon': Icons.wifi_calling_3_rounded,
      'videoIcon': Icons.videocam_outlined,
    },
    {
      'image': 'assets/Rectangle 1092.png',
      'name': 'Jhon Abraham',
      'message': '03/07/22, 07:30 AM',
      'callType': 'missed',
      'callIcon': Icons.wifi_calling_3_rounded,
      'videoIcon': Icons.videocam_outlined,
    },
    {
      'image': 'assets/Ellipse 308.png',
      'name': 'John Borino',
      'message': 'Monday, 09:30 AM',
      'callType': 'incoming',
      'callIcon': Icons.wifi_calling_3_rounded,
      'videoIcon': Icons.videocam_outlined,
    },
  ];
  Color getCallColor(String type) {
    switch (type) {
      case 'incoming':
        return Color(0xff139C6F); // green
      case 'outgoing':
        return Colors.blue;
      case 'missed':
        return Colors.red;
      default:
        return Colors.grey;
    }
  }

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
                    child: GestureDetector(
                      onTap: () {
                        Contacts;
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => Contacts()),
                        );
                      },
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
                  ),
                ],
              ),
            ),
            SizedBox(height: 40),
            Expanded(
              child: Container(
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.vertical(top: Radius.circular(30)),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(height: 50),
                    Padding(
                      padding: const EdgeInsets.only(left: 60),
                      child: Text(
                        "Recent",
                        style: TextStyle(
                          fontWeight: FontWeight.w600,
                          fontSize: 16,
                        ),
                      ),
                    ),
                    SizedBox(height: 30),
                    Expanded(
                      child: Padding(
                        padding: const EdgeInsets.only(left: 15),
                        child: ListView.separated(
                          itemCount: chat.length,
                          itemBuilder: (context, index) {
                            return ListTile(
                              leading: CircleAvatar(
                                backgroundImage: AssetImage(
                                  chat[index]['image'],
                                ),
                              ),
                              title: Text(
                                chat[index]['name'],
                                style: TextStyle(
                                  fontWeight: FontWeight.w600,
                                  fontSize: 16,
                                ),
                              ),
                              subtitle: Row(
                                children: [
                                  Icon(
                                    Icons
                                        .phone_callback_sharp, // you can also change icon based on type
                                    size: 16,
                                    color: getCallColor(
                                      chat[index]['callType'],
                                    ),
                                  ),
                                  SizedBox(width: 6),
                                  Text(
                                    chat[index]['message'],
                                    style: TextStyle(
                                      color: Colors.grey.shade600,
                                      fontSize: 13,
                                    ),
                                  ),
                                ],
                              ),
                              trailing: Row(
                                mainAxisSize: MainAxisSize.min, // important!
                                children: [
                                  Icon(
                                    chat[index]['callIcon'],
                                    color: Colors.grey,
                                  ),
                                  SizedBox(width: 15),
                                  Icon(
                                    chat[index]['videoIcon'],
                                    color: Colors.grey,
                                  ),
                                ],
                              ),
                            );
                          },
                          separatorBuilder: (context, index) {
                            return SizedBox(
                              height: 35,
                            ); // 👈 space between items
                          },
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
}
