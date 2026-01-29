import 'dart:math';

import 'package:flutter/material.dart';

class Onboarding extends StatefulWidget {
  const Onboarding({super.key});

  @override
  State<Onboarding> createState() => _OnboardingState();
}

class _OnboardingState extends State<Onboarding> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.teal,
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Center(
              child: Container(
                child: Image.asset(
                  'assets/JPEG4-removebg-preview 1.png',
                  height: 46,
                  width: 61,
                ),
              ),
            ),
           
                      SizedBox(width: 300,
                        child: Text(
                          'Connect friends ',
                        
                          style: TextStyle(
                            fontSize: 68,
                            fontWeight: FontWeight.w400,
                            height: 78 / 68,
                            fontFamily: 'caros',
                            color: Colors.white,
                          ),
                        ),
                      ),
                      
                      SizedBox(width: 300,
                        child: Text(
                          'easily & quickly',
                          style: TextStyle(
                            fontSize: 68,
                            fontWeight: FontWeight.w600,
                            height: 78 / 68,
                            fontFamily: 'caros',
                            color: Colors.white,
                          ),
                        ),
                      ),
                      
        
        
        
        
                      Column(
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(top:16,bottom: 38),
                            child: Text(
                              'our chat app is the perfect way to stay connected with friends and family',
                              style: TextStyle(
                                fontFamily: 'circular std',
                                fontWeight: FontWeight.w400,
                                fontSize: 16,
                                height: 26 / 16,
                                color: Colors.white70,
                              ),
                              maxLines: 2,
                              overflow: TextOverflow.ellipsis,
                            ),
                          ),
        
                          Padding(
                            padding: const EdgeInsets.symmetric(
                              horizontal: 90.0,
                              vertical: 0,
                            ),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Padding(
                                  padding: const EdgeInsets.symmetric(
                                    horizontal: 20.0,
                                  ),
                                  child: Container(
                                    decoration: BoxDecoration(
                                      shape: BoxShape.circle,
                                      border: Border.all(color: Colors.white),
                                    ),
                                    child: Padding(
                                      padding: const EdgeInsets.all(10.0),
                                      child: Image.asset('assets/Group 439.png'),
                                    ),
                                    height: 48,
                                    width: 48,
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.symmetric(
                                    horizontal: 20.0,
                                  ),
                                  child: Container(
                                    decoration: BoxDecoration(
                                      shape: BoxShape.circle,
                                      border: Border.all(color: Colors.white),
                                    ),
                                    child: Padding(
                                      padding: const EdgeInsets.all(12.0),
                                      child: Image.asset('assets/Group 438.png'),
                                    ),
                                    height: 48,
                                    width: 48,
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.symmetric(
                                    horizontal: 20.0,
                                  ),
                                  child: Container(
                                    decoration: BoxDecoration(
                                      shape: BoxShape.circle,
                                      border: Border.all(color: Colors.white),
                                    ),
        
                                    child: Padding(
                                      padding: const EdgeInsets.all(12.0),
                                      child: Image.asset('assets/Vector.png'),
                                    ),
                                    height: 48,
                                    width: 48,
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(top:30,bottom: 134),
                            child: Row(
                              children: [
                                SizedBox(
                                  width: 200,
                                  child: Divider(color: Colors.white),
                                ),
                                Padding(
                                  padding: const EdgeInsets.symmetric(
                                    horizontal: 10,
                                  ),
                                  child: Text(
                                    'OR',
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontWeight: FontWeight.w400,
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  width: 200,
                                  child: Divider(color: Colors.white),
                                ),
                              ],
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(bottom: 40,left: 130,right: 130,top: 124),
                            child: Row(
                              children: [
                                Text(
                                  'Existing Accound ?',
                                  style: TextStyle(color: Colors.white70,fontWeight: FontWeight.w400),
                                ),
                                Text(
                                  'Log in',
                                  style: TextStyle(color: Colors.white,fontWeight: FontWeight.w400),
                                ),
                              ],
                            ),
                          ),
                    
                    ],
                  ),
               
          ],
        ),
      ),
    );
  }
}
