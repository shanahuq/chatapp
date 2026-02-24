import 'package:flutter/material.dart';

class Createpoll extends StatefulWidget {
  const Createpoll({super.key});

  @override
  State<Createpoll> createState() => _CreatepollState();
}

class _CreatepollState extends State<Createpoll> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 20, left: 20),
            child: Row(
              children: [
                Text(
                  'Create Poll',
                  style: TextStyle(fontWeight: FontWeight.w600, fontSize: 22),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 300),
                  child: GestureDetector(
                    onTap: () => Navigator.pop(context),
                    child: Icon(Icons.close),
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 20,left: 20),
            child: Row(
              children: [
                Text(
                  'How much you \nlike to using \nourApp',
                  style: TextStyle(fontWeight: FontWeight.w500, fontSize: 40),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
