import 'package:flutter/material.dart';

class Contacts extends StatefulWidget {
  const Contacts({super.key});

  @override
  State<Contacts> createState() => _ContactsState();
}

class _ContactsState extends State<Contacts> {
  final List<Map<String, dynamic>> chat = [
    {
      'image': 'assets/Rectangle 1092 (1).png',
      'name': 'Afrin Sabila ',
      'message': 'Life is beautiful 👌',
    },
    {
      'image': 'assets/Rectangle 1092.png',
      'name': 'Adil Adnan',
      'message': 'Be your own hero 💪',
    },
  ];
  final List<Map<String, dynamic>> b = [
    {
      'image': 'assets/yellow.png',
      'name': 'Bristy Haque',
      'message': 'Keep working ✍',
    },
    {
      'image': 'assets/Ellipse 308.png',
      'name': 'John Borino',
      'message': 'Make yourself proud 😍',
    },
    {
      'image': 'assets/Ellipse 311.png',
      'name': 'Borsha Akther',
      'message': 'Flowers are beautiful 🌸',
    },
  ];
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
                      'Contacts',
                      style: TextStyle(
                        fontWeight: FontWeight.w500,
                        fontSize: 20,
                        color: Colors.white,
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 130),
                    child: Container(
                      height: 44,
                      width: 44,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(50),
                        border: Border.all(color: Colors.white),
                      ),
                      child: Icon(
                        Icons.person_add_alt_1_outlined,
                        color: Colors.white,
                        size: 28,
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
                    SizedBox(height: 40),
                    Padding(
                      padding: const EdgeInsets.only(left: 40),
                      child: Text(
                        "Recent",
                        style: TextStyle(
                          fontWeight: FontWeight.w600,
                          fontSize: 16,
                        ),
                      ),
                    ),
                    SizedBox(height: 15),
                    Padding(
                      padding: const EdgeInsets.only(left: 40),
                      child: Text(
                        'A',
                        style: TextStyle(
                          fontWeight: FontWeight.w600,
                          fontSize: 18,
                        ),
                      ),
                    ),
                    SizedBox(height: 10),
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

                              title: Row(
                                children: [
                                  Text(
                                    chat[index]['name'],
                                    style: TextStyle(
                                      fontWeight: FontWeight.w600,
                                      fontSize: 16,
                                    ),
                                  ),
                                ],
                              ),
                              subtitle: Text(
                                chat[index]['message'],
                                style: TextStyle(
                                  color: Colors.grey[600],
                                  fontSize: 14,
                                ),
                              ),
                            );
                          },

                          separatorBuilder: (context, index) {
                            return SizedBox(
                              height: 20,
                            ); // 👈 space between items
                          },
                        ),
                      ),
                    ),
                    // SizedBox(height: 10),
                    Padding(
                      padding: const EdgeInsets.only(left: 40,bottom: 280),
                      child: Text(
                        'B',
                        style: TextStyle(
                          fontWeight: FontWeight.w600,
                          fontSize: 18,
                        ),
                      ),
                    ),
                    Expanded(
                      child: Padding(
                        padding: const EdgeInsets.only(),
                        child: ListView.separated(
                          itemBuilder: (context, index) {
                            return ListTile(
                              leading: CircleAvatar(
                                child: Image.asset(b[index]['image']),
                              ),
                              title: Row(
                                children: [
                                  Text(
                                    b[index]['name'],
                                    style: TextStyle(
                                      fontWeight: FontWeight.w600,
                                      fontSize: 16,
                                    ),
                                  ),
                                ],
                              ),
                              subtitle: Text(
                                b[index]['message'],
                                style: TextStyle(
                                  color: Colors.grey[600],
                                  fontSize: 14,
                                ),
                              ),
                            );
                          },
                          separatorBuilder: (context, index) {
                            return SizedBox(height: 20);
                          },
                          itemCount: b.length,
                          scrollDirection: Axis.vertical,
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
