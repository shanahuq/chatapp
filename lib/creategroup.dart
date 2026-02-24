import 'package:flutter/material.dart';
import 'package:flutter_application_6/createpoll.dart';

class Creategroup extends StatefulWidget {
  const Creategroup({super.key});

  @override
  State<Creategroup> createState() => _CreategroupState();
}

class _CreategroupState extends State<Creategroup> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: GestureDetector(
          onTap: () => Navigator.pop(context),
          child: Icon(Icons.arrow_back, color: Colors.black),
        ),
        title: Center(
          child: Text(
            'Create Group',
            style: TextStyle(fontWeight: FontWeight.w500, fontSize: 16),
          ),
        ),
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 20, left: 20),
            child: Row(
              children: [
                Text(
                  'Group Description',
                  style: TextStyle(
                    fontWeight: FontWeight.w500,
                    fontSize: 18,
                    color: Color(0xff797C7B),
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 20, left: 20),
            child: Row(
              children: [
                Text(
                  'Make a Group \ncall with friends',
                  style: TextStyle(fontWeight: FontWeight.w500, fontSize: 40),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 35, left: 20),
            child: Row(
              children: [
                Container(
                  height: 36,
                  width: 107,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: const Color.fromARGB(137, 187, 234, 223),
                  ),
                  child: Center(
                    child: Text(
                      'Group work',
                      style: TextStyle(
                        fontWeight: FontWeight.w500,
                        fontSize: 14,
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 50),
                  child: Container(
                    height: 36,
                    width: 147,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: const Color.fromARGB(137, 187, 234, 223),
                    ),
                    child: Center(
                      child: Text(
                        'Team  relationship',
                        style: TextStyle(
                          fontWeight: FontWeight.w500,
                          fontSize: 14,
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 45, left: 22),
            child: Row(
              children: [
                Text(
                  'Group Admin',
                  style: TextStyle(
                    fontWeight: FontWeight.w500,
                    fontSize: 16,
                    color: Color(0xff797C7B),
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 40, left: 23),
            child: Row(
              children: [
                Container(
                  height: 52,
                  width: 52,
                  child: Image.asset('assets/Ellipse 307 (2).png'),
                ),
                Padding(
                  padding: const EdgeInsets.only(bottom: 5, left: 13),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Rashid Khan',
                        style: TextStyle(
                          fontWeight: FontWeight.w500,
                          fontSize: 16,
                        ),
                      ),
                      Text(
                        'Group Admin',
                        style: TextStyle(
                          fontWeight: FontWeight.w400,
                          fontSize: 12,
                          color: Color(0xff797C7B),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 250),
            child: GestureDetector(
              onTap: () {
                Createpoll;
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => Createpoll()),
                );
              },
              child: Container(
                height: 48,
                width: 327,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  color: Colors.teal,
                ),
                child: Center(
                  child: Text(
                    'Create',
                    style: TextStyle(
                      fontWeight: FontWeight.w600,
                      fontSize: 16,
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
