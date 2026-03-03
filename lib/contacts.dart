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
    {
      'image': 'assets/Ellipse 311.png',
      'name': 'Borsha Akther khan',
      'message': 'Flowers are beautiful 🌸',
    },
     {
      'image': 'assets/yellow.png',
      'name': 'Cristy Haque',
      'message': 'Keep working ✍',
    },
  ];

  @override
  void initState() {
    super.initState();
    chat.sort((a, b) => a['name'].compareTo(b['name']));
  }

  Map<String, List<Map<String, dynamic>>> groupedContacts() {
    Map<String, List<Map<String, dynamic>>> grouped = {};

    for (var contact in chat) {
      String firstLetter = contact['name'][0].toUpperCase();

      if (!grouped.containsKey(firstLetter)) {
        grouped[firstLetter] = [];
      }

      grouped[firstLetter]!.add(contact);
    }

    return grouped;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.teal,
      body: SafeArea(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 30, left: 20),
              child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
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
                    padding: const EdgeInsets.only(left: 0),
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
                    padding: const EdgeInsets.only(right: 30),
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
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Builder(
                  builder: (context) {
                    final grouped = groupedContacts();
                    final letters = grouped.keys.toList()..sort();

                    return ListView.builder(
                      itemCount: letters.length,
                      itemBuilder: (context, index) {
                        String letter = letters[index];
                        List contacts = grouped[letter]!;

                        return Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            SizedBox(height: 20),
                            Text(
                              letter,
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 18,
                              ),
                            ),
                            SizedBox(height: 10),

                            ...contacts.map((contact) {
                              return ListTile(
                                leading: CircleAvatar(
                                  backgroundImage: AssetImage(contact['image']),
                                ),
                                title: Text(
                                  contact['name'],
                                  style: TextStyle(fontWeight: FontWeight.w600),
                                ),
                                subtitle: Text(contact['message']),
                              );
                            }).toList(),
                          ],
                        );
                      },
                    );
                  },
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
