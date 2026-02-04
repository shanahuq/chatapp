import 'package:flutter/material.dart';

class Paymentmethods extends StatefulWidget {
  const Paymentmethods({super.key});

  @override
  State<Paymentmethods> createState() => _PaymentmethodsState();
}

class _PaymentmethodsState extends State<Paymentmethods> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: () => Navigator.pop(context),
          icon: Icon(Icons.close, color: Colors.black),
        ),
        actions: [
          GestureDetector(
            onTap: () => Navigator.pop(context),
            child: Padding(
              padding: const EdgeInsets.only(right: 40),
              child: Text(
                'Done',
                style: TextStyle(
                  fontWeight: FontWeight.w500,
                  fontSize: 20,
                  color: Colors.black,
                ),
              ),
            ),
          ),
        ],
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 50, top: 47),
            child: Text(
              'Payments methods',
              style: TextStyle(
                fontWeight: FontWeight.w500,
                fontSize: 35,
                color: Colors.teal,
              ),
            ),
          ),

          // Padding(
          //   padding: const EdgeInsets.only(left: 40, top: 16),
          Row(
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 100, top: 16),
                child: Text(
                  'choose desired payment type. We offer easy ways\n for payments on our app',
                  style: TextStyle(
                    fontWeight: FontWeight.w500,
                    fontSize: 13,
                    color: Colors.black,
                  ),
                ),
              ),
            ],
          ),

          // ),
          Padding(
            padding: const EdgeInsets.only(left: 30, top: 28),
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                border: Border.all(color: Color(0xffE10808)),
              ),
              height: 80,
              width: 333,
              child: Row(
                children: [
                  Image.asset('assets/images-removebg-preview (33) 1.png'),
                  Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(top: 15, left: 10),
                        child: Text(
                          '**********4444',
                          style: TextStyle(
                            fontWeight: FontWeight.w500,
                            fontSize: 20,
                            color: Colors.black,
                          ),
                        ),
                      ),
                      Row(
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(
                              right: 40,
                              bottom: 2,
                            ),
                            child: Text(
                              'Expires 09/25',
                              style: TextStyle(
                                fontWeight: FontWeight.w500,
                                fontSize: 11,
                                color: Color(0xff9A8A8A),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 15, left: 30),
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                border: Border.all(color: Color(0xff4B474780)),
              ),
              height: 80,
              width: 333,
              child: Row(
                children: [
                  Image.asset(
                    'assets/images-removebg-preview (33) 2.png',
                    height: 35,
                    width: 90,
                  ),
                  Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(top: 15, left: 10),
                        child: Text(
                          '**********3343',
                          style: TextStyle(
                            fontWeight: FontWeight.w500,
                            fontSize: 20,
                            color: Colors.black,
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(right: 40, bottom: 2),
                        child: Text(
                          'Expires 09/25',
                          style: TextStyle(
                            fontWeight: FontWeight.w500,
                            fontSize: 11,
                            color: Color(0xff9A8A8A),
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 15, left: 30),
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                border: Border.all(color: Color(0xff4B474780)),
              ),
              height: 80,
              width: 333,
              child: Row(
                children: [
                  Image.asset('assets/images-removebg-preview (33) 3.png'),
                  Padding(
                    padding: const EdgeInsets.only(top: 10, left: 15),
                    child: Text(
                      'Petra-stark@gmail.com',
                      style: TextStyle(
                        fontWeight: FontWeight.w500,
                        fontSize: 14,
                        color: Colors.black,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 45, left: 100),
            child: Row(
              children: [
                Text(
                  'CURRENT METHOD',
                  style: TextStyle(
                    fontWeight: FontWeight.w500,
                    fontSize: 14,
                    color: Colors.black,
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 15, left: 30),
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                border: Border.all(color: Color(0xff4B474780)),
              ),
              height: 80,
              width: 333,
              child: Row(
                children: [
                  Align(
                    alignment: Alignment.centerLeft,
                    child: Padding(
                      padding: const EdgeInsets.only(left: 20),
                      child: Container(
                        height: 35,
                        width: 60,
                        color: Color(0xffFFAB01),
                        child: Image.asset(
                          'assets/fffff-removebg-preview 1.png',
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(),
                    child: Column(
                      children: [
                        Text(
                          'Cash payment',
                          style: TextStyle(
                            fontWeight: FontWeight.w500,
                            fontSize: 16,
                            color: Colors.black,
                          ),
                        ),
                        Text(
                          'Default method',
                          style: TextStyle(
                            fontWeight: FontWeight.w500,
                            fontSize: 11,
                            color: Color(0xff9A8A8A),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
