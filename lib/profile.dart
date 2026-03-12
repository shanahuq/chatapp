import 'package:flutter/material.dart';
import 'package:flutter_application_6/userprofile.dart';

class Profile extends StatefulWidget {
  const Profile({super.key});

  @override
  State<Profile> createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  final List<Map<String, dynamic>> chat = [
    {
      'image': 'assets/Keys.png',
      'name': 'Account',
      'status': 'Privacy, security, change number',
    },
    {
      'image': 'assets/Message (1).png',
      'name': 'Chat',
      'status': 'Chat history,theme,wallpapers',
    },
    {
      'image': 'assets/Notification.png',
      'name': 'Notifications',
      'status': 'Messages, group and others',
    },
    {
      'image': 'assets/Help (1).png',
      'name': 'Help',
      'status': 'Help center,contact us, privacy policy',
    },
    {
      'image': 'assets/Data.png',
      'name': 'Storage and data',
      'status': 'Network usage, stogare usage',
    },
    {'image': 'assets/Users.png', 'name': 'Invite a friend', 'status': ''},
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.teal,
      appBar: AppBar(
        backgroundColor: Colors.teal,
        leading: Padding(
          padding: const EdgeInsets.only(top: 20, left: 10),
          child: Icon(Icons.arrow_back, color: Colors.white),
        ),
        title: Center(
          child: Padding(
            padding: const EdgeInsets.only(right: 40, top: 20),
            child: Text(
              'Settings',
              style: TextStyle(
                fontWeight: FontWeight.w500,
                fontSize: 20,
                color: Colors.white,
              ),
            ),
          ),
        ),
      ),
      body: SafeArea(
        child: Column(
          children: [
            SizedBox(height: 30),
            Expanded(
              child: Container(
                width: double.infinity,
                margin: const EdgeInsets.only(top: 20),
                padding: const EdgeInsets.symmetric(horizontal: 20),
                decoration: const BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(30),
                    topRight: Radius.circular(30),
                  ),
                ),
                child: Column(
                  children: [
                    SizedBox(height: 40),
                    Row(
                      children: [
                        Container(
                          height: 60,
                          width: 60,
                          child: Image.asset(
                            'assets/Ellipse 307 (3).png',
                            fit: BoxFit.cover,
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 20),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Nazrul Islam',
                                style: TextStyle(
                                  fontWeight: FontWeight.w600,
                                  fontSize: 20,
                                ),
                              ),
                              Text(
                                'Never give up 💪',
                                style: TextStyle(
                                  fontWeight: FontWeight.w500,
                                  fontSize: 12,
                                  color: Color(0xff797C7B),
                                ),
                              ),
                            ],
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 220),
                          child: Icon(
                            Icons.qr_code_scanner_sharp,
                            color: Colors.teal,
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 40),
                    Expanded(
                      child: ListView.separated(
                        itemBuilder: (context, index) {
                          return GestureDetector(
                            onTap: () {
                              if (index == 0) {
                                Userprofile;
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) => Userprofile(),
                                  ),
                                );
                              }
                            },
                            child: ListTile(
                              leading: CircleAvatar(
                                radius: 20,
                                child: Image.asset(chat[index]['image']),
                              ),
                              title: Text(
                                chat[index]['name'],
                                style: TextStyle(
                                  fontWeight: FontWeight.w600,
                                  fontSize: 16,
                                  color: Color(0xff000E08),
                                ),
                              ),
                              subtitle: Row(
                                children: [Text(chat[index]['status'])],
                              ),
                            ),
                          );
                        },
                        separatorBuilder: (cotext, index) {
                          return SizedBox(height: 30);
                        },
                        itemCount: chat.length,
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
