import 'package:flutter/material.dart';
import 'package:flutter_application_6/following.dart';

class Userprofile extends StatefulWidget {
  const Userprofile({super.key});

  @override
  State<Userprofile> createState() => _UserprofileState();
}

class _UserprofileState extends State<Userprofile> {
  final List<Map<String, dynamic>> chat = [
    {'status': 'Display Name', 'name': 'Jhon Abraham'},
    {'status': 'Email Address', 'name': 'jhonabraham20@gmail.com'},
    {'status': 'Address', 'name': '33 street west subidbazar,sylhet'},
    {'status': 'Phone  Number', 'name': '(320) 555-0104'},
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.teal,
      body: SafeArea(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 40, left: 30),
              child: Row(
                children: [
                  GestureDetector(
                    onTap: () => Navigator.pop(context),
                    child: Icon(Icons.arrow_back, color: Colors.white),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 10, right: 20),
              child: Column(
                children: [
                  CircleAvatar(
                    radius: 50,
                    child: Image.asset(
                      'assets/Rectangle 1092.png',
                      fit: BoxFit.cover,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 10),
                    child: Text(
                      'Jhon Abraham',
                      style: TextStyle(
                        fontWeight: FontWeight.w600,
                        fontSize: 20,
                        color: Colors.white,
                      ),
                    ),
                  ),
                  Text(
                    '@jhonabraham',
                    style: TextStyle(
                      fontWeight: FontWeight.w400,
                      fontSize: 12,
                      color: Color(0xff797C7B),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 30),
            Padding(
              padding: const EdgeInsets.only(left: 100),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Icon(Icons.chat_outlined, color: Colors.white),
                  Icon(Icons.videocam_outlined, color: Colors.white),
                  Icon(Icons.call_outlined, color: Colors.white),
                  Padding(
                    padding: const EdgeInsets.only(right: 100),
                    child: Icon(Icons.more_horiz_outlined, color: Colors.white),
                  ),
                ],
              ),
            ),
            SizedBox(height: 10),
            Expanded(
              child: Container(
                width: double.infinity,
                margin: const EdgeInsets.only(top: 20),
                padding: const EdgeInsets.symmetric(
                  horizontal: 20,
                  vertical: 20,
                ),
                decoration: const BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(30),
                    topRight: Radius.circular(30),
                  ),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    /// User Info List
                    ListView.separated(
                      shrinkWrap: true,
                      physics: NeverScrollableScrollPhysics(),
                      itemCount: chat.length,
                      itemBuilder: (context, index) {
                        return ListTile(
                          contentPadding: EdgeInsets.zero,
                          title: Text(
                            chat[index]['status'],
                            style: TextStyle(
                              fontSize: 14,
                              color: Color(0xff797C7B),
                            ),
                          ),
                          subtitle: Text(
                            chat[index]['name'],
                            style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.w500,
                              color: Color(0xff000E08),
                            ),
                          ),
                        );
                      },
                      separatorBuilder:
                          (context, index) => SizedBox(height: 15),
                    ),

                    SizedBox(height: 15),

                    /// Media Shared Header
                    Padding(
                      padding: const EdgeInsets.only(top: 20),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "Media Shared",
                            style: TextStyle(
                              fontSize: 14,
                              color: Color(0xff797C7B),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(right: 20),
                            child: GestureDetector(
                              onTap: () {
                                Following;
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) => Following(),
                                  ),
                                );
                              },
                              child: Text(
                                "View All",
                                style: TextStyle(
                                  fontSize: 14,
                                  color: Colors.teal,
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 20, left: 60),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Container(
                            height: 92,
                            width: 92,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(12),
                              image: DecorationImage(
                                image: AssetImage('assets/Rectangle 1154.png'),
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),

                          SizedBox(width: 15),

                          Container(
                            height: 92,
                            width: 92,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(12),
                              image: DecorationImage(
                                image: AssetImage('assets/Rectangle 1155.png'),
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),

                          SizedBox(width: 15),

                          Padding(
                            padding: const EdgeInsets.only(right: 60),
                            child: Container(
                              height: 92,
                              width: 92,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(12),
                                image: DecorationImage(
                                  image: AssetImage('assets/Group 430.png'),
                                  fit: BoxFit.cover,
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
            ),
          ],
        ),
      ),
    );
  }
}
