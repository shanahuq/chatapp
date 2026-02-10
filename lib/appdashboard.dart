import 'package:flutter/material.dart';

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
                padding: const EdgeInsets.only(left: 190),
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
                padding: const EdgeInsets.only(left: 50, top: 90),
                child: Container(
                  height: 144,
                  width: 390,
                  child: Image.asset('assets/Rectangle 8.png'),
                ),
              ),
              Positioned(
                bottom: -40,
                left: 100,
                child: Container(
                  padding: const EdgeInsets.all(4),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(14),
                    color: Colors.white, // white border
                    // shape: BoxShape.circle,
                  ),
                  child: Image.asset('assets/image 91.png', fit: BoxFit.fill),
                  height: 120,
                  width: 100,
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
                padding: const EdgeInsets.only(top: 90, right: 250),
                child: Text(
                  'Number of \n followers',
                  style: TextStyle(
                    fontWeight: FontWeight.w400,
                    fontSize: 15,
                    color: Colors.white,
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(right: 250,top: 10),
                child: Text(
                  'Number of \n likes',
                  style: TextStyle(
                    fontWeight: FontWeight.w400,
                    fontSize: 15,
                    color: Colors.white,
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
