import 'package:flutter/material.dart';
import 'appdashboard.dart';

class Comments extends StatefulWidget {
  const Comments({super.key});

  @override
  State<Comments> createState() => _CommentsState();
}

class _CommentsState extends State<Comments> {
  final List<Map<String, dynamic>> items = [
    {'image': 'assets/image 8.png', 'name': 'Anikaa'},
    {'image': 'assets/image 7.png', 'name': 'Noni'},
    {'image': 'assets/image 5.png', 'name': 'Hanii'},
    {'image': 'assets/image 6.png', 'name': 'Boykaa'},
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.teal,
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 25, right: 330),
            child: GestureDetector(
              onTap: () => Navigator.pop(context),
              child: CircleAvatar(
                radius: 15,
                backgroundColor: Colors.white,
                child: Icon(Icons.arrow_back, color: Colors.black),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 5),
            child: Divider(color: Colors.white),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 15),
            child: CircleAvatar(
              radius: 40,
              backgroundColor: Colors.white,
              child: ClipOval(
                child: Image.asset(
                  'assets/Mask group.png',
                  width: 50,
                  height: 50,
                  fit: BoxFit.contain, // 👈 change to cover if needed
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 16),
            child: Text(
              'Anabia songama',
              style: TextStyle(
                fontWeight: FontWeight.w600,
                fontSize: 20,
                color: Colors.white,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 10),
            child: Text(
              'Anabia283048',
              style: TextStyle(
                fontWeight: FontWeight.w600,
                fontSize: 14,
                color: Colors.white,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 20),
            child: Text(
              'Your communities',
              style: TextStyle(
                fontWeight: FontWeight.w400,
                fontSize: 16,
                color: Colors.white,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 30, right: 50),
            child: Divider(color: Colors.white),
          ),
          Expanded(
            child: GestureDetector(
              onTap: () {
                Appdashboard;
                Navigator.push(context, MaterialPageRoute(builder: (context) => Appdashboard(),));
              },
              child: ListView.builder(
                scrollDirection: Axis.vertical,
                itemCount: items.length,
                itemBuilder: (context, index) {
                  return Padding(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 16,
                      vertical: 10,
                    ),
                    child: Row(
                      children: [
                        CircleAvatar(
                          radius: 20,
                          backgroundColor: Colors.white,
                          child: ClipOval(
                            child: Image.asset(
                              items[index]['image'],
                              width: 80,
                              height: 80,
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                        SizedBox(width: 16),
                        Text(
                          items[index]['name'],
                          style: TextStyle(
                            fontWeight: FontWeight.w400,
                            fontSize: 15,
                            color: Colors.white,
                          ),
                        ),
                      ],
                    ),
                  );
                },
              ),
            ),
          ),
        ],
      ),
    );
  }
}
