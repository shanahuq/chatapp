import 'package:flutter/material.dart';

class Chatscreen extends StatefulWidget {
  const Chatscreen({super.key, required this.image, required this.name});
  final String name;
  final String image;

  @override
  State<Chatscreen> createState() => _ChatscreenState();
}

class _ChatscreenState extends State<Chatscreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        elevation: 0,
        leading: IconButton(
          icon: Icon(Icons.arrow_back, color: Colors.black),
          onPressed: () => Navigator.pop(context),
        ),
        title: Row(
          children: [
            Stack(
              children: [
                CircleAvatar(
                  radius: 18,
                  backgroundImage: AssetImage(widget.image),
                ),
                Positioned(
                  bottom: 0,
                  right: 0,
                  child: CircleAvatar(backgroundColor: Colors.green, radius: 5),
                ),
              ],
            ),

            const SizedBox(width: 10),

            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisSize: MainAxisSize.min,
              children: [
                Text(
                  widget.name,
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
                  ),
                ),
                Text('Active now', style: TextStyle(fontSize: 12)),
              ],
            ),
          ],
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 44),
            child: Row(
              children: [
                Icon(Icons.call_outlined),
                Icon(Icons.videocam_outlined),
              ],
            ),
          ),
        ],
      ),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          children: [
            Center(
              child: Padding(
                padding: const EdgeInsets.only(top: 40),
                child: Text('Today'),
              ),
            ),
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 340, top: 20),
                  child: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(16),
                      color: Colors.teal,
                    ),
                    height: 36,
                    width: 141,
                    child: Center(
                      child: Text(
                        'Hello! Jhon abraham',
                        style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.w400,
                          fontSize: 12,
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 430, top: 10),
                  child: Text(
                    '09:25 AM',
                    style: TextStyle(fontWeight: FontWeight.w400, fontSize: 10),
                  ),
                ),
              ],
            ),
            Row(
              children: [
                Column(
                  children: [
                    CircleAvatar(
                      radius: 18,
                      backgroundImage: AssetImage(widget.image),
                    ),
                  ],
                ),
                SizedBox(width: 20),
                Text(
                  widget.name,
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
                  ),
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.only(right: 160, top: 20),
              child: Text(
                'Hello ! Nazrul How are you?',
                style: TextStyle(fontWeight: FontWeight.w400, fontSize: 12),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 10),
              child: Text(
                '09:25 AM',
                style: TextStyle(fontWeight: FontWeight.w400, fontSize: 10),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(top: 115),
                      child: CircleAvatar(
                        radius: 18,
                        backgroundImage: AssetImage(widget.image),
                      ),
                    ),
                  ],
                ),
                SizedBox(width: 20),
                Padding(
                  padding: const EdgeInsets.only(top: 115),
                  child: Text(
                    widget.name,
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                    ),
                  ),
                ),
              ],
            ),
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 90, top: 20),
                  child: Text(
                    'Have a great working week!!',
                    style: TextStyle(fontWeight: FontWeight.w400, fontSize: 12),
                  ),
                ),
              ],
            ),
            Column(
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 35, right: 200),
                  child: Text(
                    'Hope you like it',
                    style: TextStyle(fontWeight: FontWeight.w400, fontSize: 12),
                  ),
                ),
              ],
            ),
            Column(
              children: [
                Text(
                  '09:25 AM',
                  style: TextStyle(fontWeight: FontWeight.w400, fontSize: 10),
                ),
              ],
            ),
            Column(
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 250, top: 30),
                  child: Container(
                    child: Image.asset('assets/Voice.png'),
                    height: 40,
                    width: 222,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 410, top: 10),
                  child: Text(
                    '09:25 AM',
                    style: TextStyle(fontWeight: FontWeight.w400, fontSize: 10),
                  ),
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                CircleAvatar(
                  backgroundImage: AssetImage(widget.image),
                  radius: 16,
                ),
                SizedBox(width: 20),
                Text(
                  widget.name,
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
                  ),
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.only(right: 220, top: 25),
              child: Column(
                children: [
                  Text(
                    'Look at my work man!!',
                    style: TextStyle(fontWeight: FontWeight.w400, fontSize: 12),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 80, top: 16),
              child: Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(right: 3),
                    child: Container(
                      child: Image.asset('assets/Rectangle 1068.png'),
                      height: 68,
                      width: 68,
                    ),
                  ),
                  Container(
                    child: Image.asset('assets/Rectangle 1067.png'),
                    height: 68,
                    width: 68,
                  ),
                ],
              ),
            ),
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 200, top: 10),
                  child: Text(
                    '09:25 AM',
                    style: TextStyle(fontWeight: FontWeight.w400, fontSize: 10),
                  ),
                ),
              ],
            ),
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 340, top: 20),
                  child: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(16),
                      color: Colors.teal,
                    ),
                    height: 36,
                    width: 141,
                    child: Center(
                      child: Text(
                        'Hello! Jhon abraham',
                        style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.w400,
                          fontSize: 12,
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.only(left: 410,top: 10),
              child: Text(
                '09:25 AM',
                style: TextStyle(fontWeight: FontWeight.w400, fontSize: 10),
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: Container(
        height: 48,
        width: 500,
        color: Colors.white,
        child: Row(
          children: [
            Image.asset('assets/Group.png', height: 24, width: 24),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.only(left: 15),
                child: TextFormField(
                  decoration: const InputDecoration(
                    hintText: "Write your message",
                    hintStyle: TextStyle(
                      fontWeight: FontWeight.w400,
                      fontSize: 12,
                    ),
                    border: InputBorder.none,
                    isDense: true,
                  ),
                ),
              ),
            ),
            SizedBox(
              width: 50,
              child: Image.asset(
                'assets/files.png',
                height: 24,
                width: 24,
                color: Colors.black,
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(right: 30),
              child: Icon(Icons.camera_alt_outlined),
            ),
            Padding(
              padding: const EdgeInsets.only(right: 30),
              child: Icon(Icons.keyboard_voice_outlined),
            ),
          ],
        ),
      ),
    );
  }
}
