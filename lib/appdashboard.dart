import 'package:flutter/material.dart';
import 'package:flutter_application_6/contactsofgiftsending.dart';

class Appdashboard extends StatefulWidget {
  const Appdashboard({super.key});

  @override
  State<Appdashboard> createState() => _AppdashboardState();
}

class _AppdashboardState extends State<Appdashboard> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.teal,
      body: Column(
        children: [
          Stack(
            clipBehavior: Clip.none,
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 150),
                child: Text(
                  'Mettiunlike',
                  style: TextStyle(
                    fontWeight: FontWeight.w700,
                    fontSize: 24,
                    color: Colors.white,
                  ),
                ),
              ),
              GestureDetector(
                onTap: () => Navigator.pop(context),
                child: Padding(
                  padding: const EdgeInsets.only(left: 30, top: 40),
                  child: CircleAvatar(
                    radius: 15,
                    backgroundColor: Colors.white,
                    child: Icon(Icons.arrow_back),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 30, top: 90),
                child: Container(
                  height: 144,
                  width: 360,
                  child: Image.asset('assets/Rectangle 8.png'),
                ),
              ),
              Positioned(
                bottom: -40,
                left: 95,
                child: Container(
                  padding: const EdgeInsets.all(4),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(14),
                    color: Colors.white, // white border
                    // shape: BoxShape.circle,
                  ),
                  child: Image.asset('assets/image 91.png', fit: BoxFit.fill),
                  height: 110,
                  width: 95,
                  // child: CircleAvatar(
                  //   radius: 40,
                  //   backgroundImage: AssetImage('assets/image 91.png'),
                  // ),
                ),
              ),
            ],
          ),
          Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 90, left: 40),
                child: Row(
                  children: [
                    Text(
                      'Number of \n followers',
                      style: TextStyle(
                        fontWeight: FontWeight.w400,
                        fontSize: 15,
                        color: Colors.white,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 20),
                      child: Text(
                        '1k+',
                        style: TextStyle(
                          fontWeight: FontWeight.w400,
                          fontSize: 24,
                          color: Colors.white,
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 30),
                      child: Text(
                        'Number of \n members',
                        style: TextStyle(
                          fontWeight: FontWeight.w400,
                          fontSize: 15,
                          color: Colors.white,
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 10),
                      child: Text(
                        '10k+',
                        style: TextStyle(
                          fontWeight: FontWeight.w400,
                          fontSize: 24,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 40, top: 10),
                child: Row(
                  children: [
                    Text(
                      'Number of \n likes',
                      style: TextStyle(
                        fontWeight: FontWeight.w400,
                        fontSize: 15,
                        color: Colors.white,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 20),
                      child: Text(
                        '36k+',
                        style: TextStyle(
                          fontWeight: FontWeight.w400,
                          fontSize: 24,
                          color: Colors.white,
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 30),
                      child: Text(
                        'Average \n users',
                        style: TextStyle(
                          fontWeight: FontWeight.w400,
                          fontSize: 15,
                          color: Colors.white,
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 15),
                      child: Text(
                        '728/month',
                        style: TextStyle(
                          fontWeight: FontWeight.w400,
                          fontSize: 22,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
          Padding(
            padding: const EdgeInsets.only(top: 30),
            child: Container(
              height: 138,
              width: 313,
              child: Image.asset('assets/image 11.png'),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(right: 230, top: 25),
            child: Text(
              'Milestones',
              style: TextStyle(
                fontWeight: FontWeight.w400,
                fontSize: 15,
                color: Colors.white,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(right: 90, top: 90),
            child: Text(
              'Payment options for members',
              style: TextStyle(
                fontWeight: FontWeight.w400,
                fontSize: 16,
                color: Colors.white,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 70, top: 5),
            child: Row(
              children: [
                Text(
                  'Credit card/ Debit card',
                  style: TextStyle(
                    fontWeight: FontWeight.w400,
                    fontSize: 15,
                    color: Colors.white,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 110),
                  child: Container(
                    height: 13,
                    width: 26,
                    child: Image.asset('assets/Component 1.png'),
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 70, top: 5),
            child: Row(
              children: [
                Text(
                  'Online Wallet',
                  style: TextStyle(
                    fontWeight: FontWeight.w400,
                    fontSize: 15,
                    color: Colors.white,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 177),
                  child: Container(
                    height: 13,
                    width: 26,
                    child: Image.asset('assets/Component 1.png'),
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 70, top: 25),
            child: Row(
              children: [
                Text(
                  'Banking Details',
                  style: TextStyle(
                    fontWeight: FontWeight.w400,
                    fontSize: 17,
                    color: Colors.white,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 170),
                  child: GestureDetector(
                    onTap: () {
                      Contactsofgiftsending;
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => Contactsofgiftsending(),
                        ),
                      );
                    },
                    child: Icon(
                      Icons.arrow_forward_ios,
                      color: Color(0xffB9B9B9),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
