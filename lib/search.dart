import 'package:flutter/material.dart';

class Search extends StatefulWidget {
  const Search({super.key});

  @override
  State<Search> createState() => _SearchState();
}

class _SearchState extends State<Search> {
  final List<Map<String, dynamic>> chat = [
    {
      'image': 'assets/Rectangle 1092.png',
      'name': 'Adil Adnan',
      'message': 'Be your own hero 💪',
      'type': 'person',
    },
    {
      'image': 'assets/yellow.png',
      'name': 'Bristy Haque',
      'message': 'Keep working ✍',
      'type': 'person',
    },
    {
      'image': 'assets/Ellipse 308.png',
      'name': 'John Borino',
      'message': 'Make yourself proud 😍',
      'type': 'person',
    },
    {
      'image': 'assets/Group 393.png',
      'name': 'Team Align-Practise',
      'message': '4 participants',
      'type': 'group',
    },
    {
      'image': 'assets/Group 379.png',
      'name': 'Team Align',
      'message': '8 participants',
      'type': 'group',
    },
  ];
  @override
  Widget build(BuildContext context) {
    List<Map<String, dynamic>> people =
        chat.where((item) => item['type'] == 'person').toList();
    List<Map<String, dynamic>> groups =
        chat.where((item) => item['type'] == 'group').toList();

    // Sort alphabetically
    people.sort((a, b) => a['name'].compareTo(b['name']));
    groups.sort((a, b) => a['name'].compareTo(b['name']));

    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 30, left: 20, right: 20),
              child: TextField(
                decoration: InputDecoration(
                  hintText: 'People',
                  prefixIcon: Icon(Icons.search, size: 30, color: Colors.black),
                  suffixIcon: Icon(Icons.close, color: Colors.black),
                  // border: OutlineInputBorder(
                  //   borderRadius: BorderRadius.circular(10),
                  // ),
                  contentPadding: EdgeInsets.symmetric(vertical: 15),
                ),
              ),
            ),
            SizedBox(height: 30),

            // 👇 This Expanded gives ListView proper height
            Expanded(
              child: ListView(
                children: [
                  if (people.isNotEmpty)
                    Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Text(
                        'People',
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  SizedBox(height: 20),

                  ...people.map(
                    (item) => ListTile(
                      leading: CircleAvatar(
                        backgroundImage: AssetImage(item['image']),
                      ),
                      title: Text(item['name']),
                      subtitle: Text(item['message']),
                    ),
                  ),
                  SizedBox(height: 20),

                  if (groups.isNotEmpty)
                    Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Text(
                        'Group Chats',
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  SizedBox(height: 20),

                  ...groups.map(
                    (item) => ListTile(
                      leading: CircleAvatar(
                        backgroundImage: AssetImage(item['image']),
                      ),
                      title: Text(item['name']),
                      subtitle: Text(item['message']),
                    ),
                  ),
                ],
              ),
            ),
            Container(
              height: 216,
              width: 390,
              child: Image.asset('assets/iOS keyboard.png', fit: BoxFit.cover),
            ),
          ],
        ),
      ),
    );
  }
}
