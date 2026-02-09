import 'package:flutter/material.dart';
import 'package:flutter_application_6/onboarding.dart';

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
       Center(child: GestureDetector(
        onTap: () {
          Onboarding;
          Navigator.push(context, MaterialPageRoute(builder: (context) => Onboarding(),));
        },
        child: Container(child: Image.asset('assets/JPEG4-removebg-preview 1.png',height: 257,width: 321,),))) 
        ],
      ),
    );
  }
}