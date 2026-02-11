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
              padding: const EdgeInsets.only(right: 40),
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
              padding: const EdgeInsets.only(right: 400),
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
              padding: const EdgeInsets.only(top: 5, left: 40, right: 40),
              child: SizedBox(width:420,child:  Divider(color: const Color.fromARGB(255, 234, 229, 229))),
            ),
            Container(
              height: 116,
              width: 100,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15),
              ),
              child: Image.asset('assets/image 91.png'),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 5),
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
              padding: const EdgeInsets.only(left: 40, top: 20),
              child: Row(
                children: [
                  Text(
                    'Name',
                    style: TextStyle(
                      fontWeight: FontWeight.w400,
                      fontSize: 16,
                      color: Colors.white,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 130, top: 20),
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
                    padding: const EdgeInsets.only(left: 30),
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
            SizedBox(width:366,child:  Divider(color: const Color.fromARGB(255, 234, 229, 229), thickness: 1)),
          ],
        ),
      ),
    );
  }
}
