import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      backgroundColor: Colors.teal,
      body: Column(mainAxisAlignment: MainAxisAlignment.center,
        children: [
       Center(child: Container(child: Image.asset('assets/JPEG4-removebg-preview 1.png',height: 257,width: 321,),)) 
        ],
      ),
    );
  }
}