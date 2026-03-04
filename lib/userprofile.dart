import 'package:flutter/material.dart';

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
                children: [Icon(Icons.arrow_back, color: Colors.white)],
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
                child: Padding(
                  padding: const EdgeInsets.only(left: 20, top: 10),
                  child: ListView.separated(
                    itemBuilder: (context, index) {
                      return ListTile(
                        contentPadding: EdgeInsets.zero,
                        title: Text(
                          chat[index]['status'],
                          style: TextStyle(
                            fontWeight: FontWeight.w400,
                            fontSize: 14,
                            color: Color(0xff797C7B),
                          ),
                        ),
                        subtitle: Text(
                          chat[index]['name'],
                          style: TextStyle(
                            fontWeight: FontWeight.w500,
                            fontSize: 16,
                            color: Color(0xff000E08),
                          ),
                        ),
                        
                      );
                      
                    },
                    separatorBuilder: (context, index) => SizedBox(height: 15),
                    itemCount: chat.length,
                  ),
                ),
              ),
            ),
          
          ],
        ),
      ),
    );
  }
}
