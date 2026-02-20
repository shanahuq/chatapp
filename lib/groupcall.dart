import 'package:flutter/material.dart';

class Groupcall extends StatefulWidget {
  const Groupcall({super.key});

  @override
  State<Groupcall> createState() => _GroupcallState();
}

class _GroupcallState extends State<Groupcall> {
  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;

    return Scaffold(
      body: Stack(
        children: [
          SizedBox(
            height: 680,
            width: size.width,
            child: Image.asset(
              'assets/Rectangle 1110.png',
              fit: BoxFit.cover,
              // Cover ensures it fills without stretching
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 40,left: 30),
            child: Text(
              'Meeting with \nLora Adom',
              style: TextStyle(
                fontWeight: FontWeight.w700,
                fontSize: 40,
                color: Colors.white,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 165,left: 30),
            child: Row(
              children: [
                CircleAvatar(
                  radius: 20,
                  child: Image.asset(
                    'assets/Ellipse 424.png',
                    fit: BoxFit.cover,
                  ),
                ),
                
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top:165,left: 65 ),
            child: Column(
                    children: [
                      Text(
                        'Lora Adom',
                        style: TextStyle(
                          fontWeight: FontWeight.w600,
                          fontSize: 16,
                          color: Colors.white,
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 30),
                        child: Text('Meeting organizer',style: TextStyle(fontWeight: FontWeight.w500,fontSize: 13,color: Colors.white),),
                      )
                    ],
                  ),
          ),
        ],
      ),
    );
  }
}
