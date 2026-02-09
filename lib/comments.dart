import 'package:flutter/material.dart';

class Comments extends StatefulWidget {
  const Comments({super.key});

  @override
  State<Comments> createState() => _CommentsState();
}

class _CommentsState extends State<Comments> {
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
              radius: 50,
              backgroundColor: Colors.white,
              child: ClipOval(
                child: Image.asset(
                  'assets/Mask group.png',
                  width: 70,
                  height: 70,
                  fit: BoxFit.contain, // 👈 change to cover if needed
                ),
              ),
            ),
          ),
          Text('Anabia songama'),
        ],
      ),
    );
  }
}
