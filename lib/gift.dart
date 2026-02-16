import 'package:flutter/material.dart';
import 'sendgifts.dart';

class Gift extends StatefulWidget {
  const Gift({super.key});

  @override
  State<Gift> createState() => _GiftState();
}

class _GiftState extends State<Gift> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.teal,
      body: SingleChildScrollView(scrollDirection: Axis.vertical,
        child: Column(
          children: [
            Center(
              child: Padding(
                padding: const EdgeInsets.only(top: 100),
                child: Text(
                  'Sent a Gift',
                  style: TextStyle(
                    fontWeight: FontWeight.w500,
                    fontSize: 24,
                    color: Colors.white,
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 100),
              child: Container(
                child: Image.asset('assets/gift-removebg-preview 1.png'),
                height: 323,
                width: 273,
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 50),
              child: GestureDetector(
                onTap: () {
                 Sendgifts;
                 Navigator.push(context, MaterialPageRoute(builder:(context )=>Sendgifts())); 
                },
                child: Text(
                  'Continue',
                  style: TextStyle(
                    fontWeight: FontWeight.w500,
                    fontSize: 36,
                    color: Colors.white,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
