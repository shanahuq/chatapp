import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class Signin extends StatefulWidget {
  const Signin({super.key});

  @override
  State<Signin> createState() => _SigninState();
}

class _SigninState extends State<Signin> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: (Colors.teal),
      appBar: AppBar(
        leading: Icon(Icons.arrow_back, color: Colors.white),
        backgroundColor: Colors.teal,
      ),
      body: Column(
        children: [
          Center(
            child: Padding(
              padding: const EdgeInsets.only(top: 60.0),
              child: Text(
                'Log in to Mettiunlike',
                style: TextStyle(
                  fontWeight: FontWeight.w500,
                  color: Colors.white,

                  fontStyle: FontStyle.normal,
                  fontSize: 16,
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 16, left: 41, right: 41),
            child: Text(
              'Welcome back! sign in  using  your social account or  email to  continue us',
              textAlign: TextAlign.center,
              style: TextStyle(
                color: Colors.white60,
                fontSize: 14,
                fontWeight: FontWeight.w400,
                fontStyle: FontStyle.normal,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 50),
            child: Row(
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 30, left: 95),
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
                  padding: const EdgeInsets.only(top: 30, left: 20, right: 20),
                  child: Container(
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      border: Border.all(color: Colors.white),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Image.asset('assets/Group 438.png'),
                    ),
                    height: 48,
                    width: 48,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 30),
                  child: Container(
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      border: Border.all(color: Colors.white),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(10.0),
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
            padding: const EdgeInsets.only(top: 30, left: 30, right: 30),
            child: Row(
              children: [
                SizedBox(width: 190, child: Divider(color: Colors.white60)),
                Padding(
                  padding: const EdgeInsets.only(left: 15, right: 15),
                  child: Text('OR', style: TextStyle(color: Colors.white60)),
                ),
                SizedBox(width: 190, child: Divider(color: Colors.white60)),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 30, left: 24),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Text(
                  'Your Email',
                  style: TextStyle(
                    color: Colors.white60,
                    fontWeight: FontWeight.w500,
                    fontSize: 14,
                  ),
                ),
              ],
            ),
          ),
          Row(
            children: [
              SizedBox(
                width: 450,
                child: Padding(
                  padding: const EdgeInsets.only(top: 44, left: 24),
                  child: Divider(color: Colors.white),
                ),
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 30, left: 24),
                child: Text(
                  'Password',
                  style: TextStyle(
                    color: Colors.white60,
                    fontWeight: FontWeight.w500,
                    fontSize: 14,
                  ),
                ),
              ),
            ],
          ),
          Row(
            children: [
              SizedBox(
                width: 450,
                child: Padding(
                  padding: const EdgeInsets.only(top: 44, left: 24),
                  child: Divider(color: Colors.white),
                ),
              ),
            ],
          ),
          Row(
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 177, left: 90, bottom: 16),
                child: Center(
                  child: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(16),
                      color: Colors.white,
                    ),
                    child: Center(child: Text('Log in')),

                    height: 48,
                    width: 328,
                  ),
                ),
              ),
            ],
          ),
          Text(
            'Forgot Password?',
            style: TextStyle(
              color: Colors.white60,
              fontWeight: FontWeight.w400,
              fontSize: 16,
            ),
          ),
        ],
      ),
    );
  }
}
