import 'package:flutter/material.dart';

class Contactsofgiftsending extends StatefulWidget {
  const Contactsofgiftsending({super.key});

  @override
  State<Contactsofgiftsending> createState() => _ContactsofgiftsendingState();
}

class _ContactsofgiftsendingState extends State<Contactsofgiftsending> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.teal,
      body: SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(right: 230),
              child: Text(
                'Mettiunlike',
                style: TextStyle(
                  fontWeight: FontWeight.w700,
                  fontSize: 24,
                  color: Colors.white,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(right: 560),
              child: GestureDetector(
                onTap: () => Navigator.pop(context),
                child: CircleAvatar(
                  radius: 20,
                  backgroundColor: Colors.white,
                  child: Icon(Icons.arrow_back),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 5, left: 30, right: 300),
              child: SizedBox(
                width: 370,
                child: Divider(color: const Color.fromARGB(255, 234, 229, 229)),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(right: 240),
              child: Container(
                height: 116,
                width: 100,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                ),
                child: Image.asset('assets/image 91.png'),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 5, right: 230),
              child: Text(
                'NONI',
                style: TextStyle(
                  fontWeight: FontWeight.w600,
                  fontSize: 20,
                  color: Colors.white,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(right: 150, top: 20),
              child: Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(right: 20),
                    child: Text(
                      'Name',
                      style: TextStyle(
                        fontWeight: FontWeight.w400,
                        fontSize: 16,
                        color: Colors.white,
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 80, top: 20),
                    child: Text(
                      'Phone \n number',
                      style: TextStyle(
                        fontWeight: FontWeight.w400,
                        fontSize: 16,
                        color: Colors.white,
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 20),
                    child: Text(
                      ' Gift Amount',
                      style: TextStyle(
                        fontWeight: FontWeight.w400,
                        fontSize: 16,
                        color: Colors.white,
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 30),
                    child: Text(
                      'Method of payment',
                      style: TextStyle(
                        fontWeight: FontWeight.w400,
                        fontSize: 16,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 5, right: 280),
              child: SizedBox(
                width: 400,
                child: Divider(
                  color: const Color.fromARGB(255, 234, 229, 229),
                  thickness: 1,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 20, right: 250),
              child: Row(
                children: [
                  Text(
                    'Anikaa \n  Shinde',
                    style: TextStyle(
                      fontWeight: FontWeight.w400,
                      fontSize: 14,
                      color: Colors.white,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 80),
                    child: Text(
                      '9574047397',
                      style: TextStyle(
                        fontWeight: FontWeight.w400,
                        fontSize: 14,
                        color: Colors.white,
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 30),
                    child: Text(
                      'Rs.1000',
                      style: TextStyle(
                        fontWeight: FontWeight.w400,
                        fontSize: 14,
                        color: Colors.white,
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 30),
                    child: Text(
                      'Via Gpay',
                      style: TextStyle(
                        fontWeight: FontWeight.w400,
                        fontSize: 14,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(right: 220, top: 20),
              child: Row(
                children: [
                  Text(
                    'Hanii \n Deshpande',
                    style: TextStyle(
                      fontWeight: FontWeight.w400,
                      fontSize: 14,
                      color: Colors.white,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 60),
                    child: Text(
                      '8307750899',
                      style: TextStyle(
                        fontWeight: FontWeight.w400,
                        fontSize: 14,
                        color: Colors.white,
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 30),
                    child: Text(
                      'Rs.700',
                      style: TextStyle(
                        fontWeight: FontWeight.w400,
                        fontSize: 14,
                        color: Colors.white,
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 30),
                    child: Text(
                      'ViaVia PayTm',
                      style: TextStyle(
                        fontWeight: FontWeight.w400,
                        fontSize: 14,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 20, right: 198),
              child: Row(
                children: [
                  Text(
                    'Boykaa \n  Hadawale',
                    style: TextStyle(
                      fontWeight: FontWeight.w400,
                      fontSize: 14,
                      color: Colors.white,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 60),
                    child: Text(
                      '9575497292',
                      style: TextStyle(
                        fontWeight: FontWeight.w400,
                        fontSize: 14,
                        color: Colors.white,
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 30),
                    child: Text(
                      'Rs.10000',
                      style: TextStyle(
                        fontWeight: FontWeight.w400,
                        fontSize: 14,
                        color: Colors.white,
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 30),
                    child: Text(
                      'Via Credit card',
                      style: TextStyle(
                        fontWeight: FontWeight.w400,
                        fontSize: 14,
                        color: Colors.white,
                      ),
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
