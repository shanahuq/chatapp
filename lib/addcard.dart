import 'package:flutter/material.dart';

class Addcard extends StatefulWidget {
  const Addcard({super.key});

  @override
  State<Addcard> createState() => _AddcardState();
}

class _AddcardState extends State<Addcard> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: () => Navigator.pop(context),
          icon: Icon(Icons.arrow_back, color: Colors.black),
        ),
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(right: 80, top: 60),
            child: Text(
              'Add credit card',
              style: TextStyle(
                fontWeight: FontWeight.w500,
                fontSize: 35,
                color: Colors.teal,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 25, right: 270),
            child: Text(
              'Name',
              style: TextStyle(fontWeight: FontWeight.w500, fontSize: 13),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 12, right: 200),
            child: Text(
              'Jorden dagoo',
              style: TextStyle(fontWeight: FontWeight.w500, fontSize: 20),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 40, right: 30),
            child: Divider(color: Color(0xff000000)),
          ),
          Padding(
            padding: const EdgeInsets.only(right: 200, top: 40),
            child: Text(
              'Credit card number',
              style: TextStyle(fontWeight: FontWeight.w500, fontSize: 13),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(right: 152, top: 12),
            child: Text(
              '******-****-*****67',
              style: TextStyle(fontWeight: FontWeight.w500, fontSize: 20),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 40, right: 30),
            child: Divider(color: Color(0xff000000)),
          ),
          Padding(
            padding: const EdgeInsets.only(right: 160, top: 36),
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: Colors.teal,
              ),
              height: 44,
              width: 154,
              child: Padding(
                padding: const EdgeInsets.only(left: 30),
                child: Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(right: 5),
                      child: Icon(
                        Icons.document_scanner_outlined,
                        color: Colors.white,
                      ),
                    ),
                    Text(
                      'Scan card',
                      style: TextStyle(
                        fontWeight: FontWeight.w500,
                        fontSize: 15,
                        color: Colors.white,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
          Row(
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 40,top: 50),
                child: Column(
                  children: [
                    Text(
                      'Express',
                      style: TextStyle(fontWeight: FontWeight.w500, fontSize: 13),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(right: 20),
                      child: Text(
                        '10/25/2030',
                        style: TextStyle(fontWeight: FontWeight.w500, fontSize: 16),
                      ),
                    ),
                    Divider(color: Color(0xff000000),)
                  ],
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
