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
              padding: const EdgeInsets.only(top: 30, left: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Expanded(
                    child: TextField(
                      decoration: InputDecoration(
                        hintText: 'People',
                        prefixIcon: Icon(
                          Icons.search,
                          size: 35,
                          color: Colors.black,
                        ),
                        suffixIcon: Padding(
                          padding: const EdgeInsets.only(right: 40),
                          child: Icon(Icons.close, color: Colors.black),
                        ),
                        border: InputBorder.none,
                        contentPadding: EdgeInsets.symmetric(vertical: 15),
                      ),
                    ),
                  ),
                  Expanded(
                    child: ListView(
                      children: [
                        // People Section
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
                        ...people.map(
                          (item) => ListTile(
                            leading: CircleAvatar(
                              backgroundImage: AssetImage(item['image']),
                            ),
                            title: Text(item['name']),
                            subtitle: Text(item['message']),
                          ),
                        ),

                        // Groups Section
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
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
