import 'package:flutter/material.dart';
import 'package:flutter_application_6/paymentmethods.dart';

class Sendgifts extends StatefulWidget {
  const Sendgifts({super.key});

  @override
  State<Sendgifts> createState() => _SendgiftsState();
}

class _SendgiftsState extends State<Sendgifts> {
  final List<Map<String, dynamic>> items = [
    {
      'image': 'assets/istockphoto-1314193409-612x612-removebg-preview 1.png',
      'amount': 150,
      'title': 'standard',
      'price': '\$4.33',
    },
    {
      'image': 'assets/istockphoto-1314193409-612x612-removebg-preview 2.png',
      'amount': 650,
      'title': '15% off',
      'price': '\$3333',
    },
    {
      'image': 'assets/istockphoto-1314193409-612x612-removebg-preview 3.png',
      'amount': 1050,
      'title': '20% off',
      'price': '\$2222',
    },
    {
      'image': 'assets/istockphoto-1314193409-612x612-removebg-preview 4.png',
      'amount': 3333,
      'title': '40% off',
      'price': '\$5555',
    },
    {
      'image': 'assets/istockphoto-1314193409-612x612-removebg-preview 5.png',
      'amount': 555,
      'title': '40% off',
      'price': '\$6666',
    },
    {
      'image': 'assets/istockphoto-1314193409-612x612-removebg-preview 6.png',
      'amount': 999,
      'title': '50% off',
      'price': '\$2333',
    },
  ];
  // Function to show the Google Pay-style bottom sheet
  void _showPaymentSheet() {
    showModalBottomSheet(
      context: context,
      isScrollControlled: true,
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.vertical(top: Radius.circular(20)),
      ),
       builder: (context) => Padding(
      padding: EdgeInsets.only(
        left: 24,
        right: 24,
        top: 24,
        bottom: MediaQuery.of(context).viewInsets.bottom + 24,
      ),
          // (context) => SizedBox(
          //   height: MediaQuery.of(context).size.height * 0.38,
          //   child: Padding(
          //     // 2. Set to 70% of screen height
          //     padding: const EdgeInsets.all(24),
              child: SingleChildScrollView(
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      "Google pay",
                      style: TextStyle(color: Color(0xFF123B70), fontSize: 16),
                    ),
                    const Divider(color: Color.fromARGB(255, 48, 39, 39)),
                    const SizedBox(height: 20),
                    const Text(
                      "Start by adding a payment method",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 16,
                        color: Color(0xFF123B70),
                      ),
                    ),
                    const Text(
                      "king@gmail.com",
                      style: TextStyle(color: Color(0xff123B70)),
                    ),
                    const SizedBox(height: 20),
                    const Text(
                      "Add a payment method to your Google account to complete your purchase.Your payment information only visible to Google",
                      style: TextStyle(fontSize: 13, color: Color(0xFF123B70)),
                    ),
                    const SizedBox(height: 20),

                    Center(
                      child: GestureDetector(
                        onTap: () {
                          Paymentmethods;
                          Navigator.push(context, MaterialPageRoute(builder: (context) => Paymentmethods(),));
                        },
                        child: Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(16),
                            color: Colors.teal,
                          ),
                          height: 45,
                          width: 322,
                          child: Padding(
                            padding: const EdgeInsets.only(left: 70),
                            child: Row(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.only(right: 10),
                                  child: Icon(
                                    Icons.credit_card,
                                    color: Colors.white,
                                    size: 27,
                                  ),
                                ),
                                Text(
                                  'Add credit or debit card',
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
                    ),
                  ],
                ),
              ),
            ),
          
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.teal,
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 20, top: 30),
            child: Row(
              children: [
                GestureDetector(
                  onTap: () {
                    Navigator.pop(context);
                  },
                  child: CircleAvatar(
                    radius: 13,
                    backgroundColor: Colors.white,
                    child: Icon(Icons.arrow_back, size: 20),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 100),
                  child: Text(
                    'Store',
                    style: TextStyle(
                      fontWeight: FontWeight.w500,
                      fontSize: 24,
                      color: Colors.white,
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 100),
                  child: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(50),
                      color: Colors.white,
                    ),
                    height: 60,
                    width: 96,
                    child: Row(
                      children: [
                        Image.asset(
                          'assets/download-removebg-preview (31) 1.png',
                          height: 50,
                        ),
                        SizedBox(width: 10),
                        Image.asset('assets/0.png', height: 30),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 20, top: 35),
            child: Row(
              children: [
                Text(
                  'VIP Package',
                  style: TextStyle(
                    fontWeight: FontWeight.w500,
                    fontSize: 20,
                    color: Colors.white,
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(right: 35, top: 35),
            child: Stack(
              children: [
                Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    color: Colors.white,
                  ),
                  height: 170,
                  width: 380,
                  child: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 20, top: 40),
                        child: Row(
                          children: [
                            Text(
                              'VIP +',
                              style: TextStyle(
                                fontWeight: FontWeight.w500,
                                fontSize: 16,
                                color: const Color.fromARGB(255, 1, 23, 60),
                              ),
                            ),
                            Image.asset(
                              'assets/download-removebg-preview (31) 1.png',
                              height: 20,
                            ),
                            Text(
                              '3000',
                              style: TextStyle(
                                fontWeight: FontWeight.w500,
                                fontSize: 16,
                                color: const Color.fromARGB(255, 243, 208, 101),
                              ),
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 20),
                        child: Row(
                          children: [
                            Text(
                              'GET',
                              style: TextStyle(
                                fontWeight: FontWeight.w500,
                                fontSize: 11,
                                color: const Color.fromARGB(255, 1, 23, 60),
                              ),
                            ),
                            Image.asset(
                              'assets/download-removebg-preview (31) 1.png',
                              height: 20,
                            ),
                            Text(
                              '3000 COINS',
                              style: TextStyle(
                                fontWeight: FontWeight.w500,
                                fontSize: 11,
                                color: const Color.fromARGB(255, 246, 210, 79),
                              ),
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 20),
                        child: Row(
                          children: [
                            Text(
                              'Every month',
                              style: TextStyle(
                                fontWeight: FontWeight.w500,
                                fontSize: 15,
                                color: const Color.fromARGB(255, 3, 29, 73),
                              ),
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 20),
                        child: Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(16),
                            color: Colors.teal,
                          ),
                          height: 30,
                          width: 285,
                          child: Center(
                            child: Text(
                              '\$ 33,444 / Month  \$ 56.66',
                              style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.w500,
                                fontSize: 10,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Positioned(
                  right: 0,

                  child: Stack(
                    children: [
                      Image.asset('assets/Rectangle 46.png'),
                      Padding(
                        padding: const EdgeInsets.only(bottom: 10, left: 10),
                        child: Positioned(
                          top: 100,
                          right: 50,
                          child: Padding(
                            padding: const EdgeInsets.only(top: 15, left: 30),
                            child: Transform.rotate(
                              angle: 45,
                              child: Column(
                                children: [
                                  Text(
                                    '50%',
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontWeight: FontWeight.w500,
                                      fontSize: 11,
                                    ),
                                  ),
                                  Text(
                                    'OFF',
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontWeight: FontWeight.w500,
                                      fontSize: 11,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 20, top: 20),
            child: Row(
              children: [
                Text(
                  'coins',
                  style: TextStyle(
                    fontWeight: FontWeight.w500,
                    fontSize: 20,
                    color: Colors.white,
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            child: GridView.builder(
              padding: const EdgeInsets.all(8),
              itemCount: 6,
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                crossAxisSpacing: 10,
                mainAxisSpacing: 10,
                childAspectRatio: 1.2, // square items
              ),
              itemBuilder: (context, index) {
                final item = items[index];
                return Container(
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: Column(
                    children: [
                      Image.asset(
                        item['image'],
                        height: 55,
                        width: 81,
                        fit: BoxFit.contain,
                      ),
                      SizedBox(height: 10),
                      Text(
                        item['amount'].toString(),
                        style: TextStyle(
                          fontWeight: FontWeight.w500,
                          fontSize: 14,
                        ),
                      ),
                      Text(
                        item['title'],
                        style: TextStyle(
                          fontWeight: FontWeight.w500,
                          fontSize: 14,
                        ),
                      ),
                      SizedBox(height: 5),
                      ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.teal,
                          shape: const StadiumBorder(),
                        ),
                        onPressed: _showPaymentSheet,
                        child: Text(
                          item['price'],
                          style: const TextStyle(color: Colors.white),
                        ),
                      ),
                    ],
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
