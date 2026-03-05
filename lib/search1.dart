import 'package:flutter/material.dart';

class Search1 extends StatefulWidget {
  const Search1({super.key});

  @override
  State<Search1> createState() => _Search1State();
}

class _Search1State extends State<Search1> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.teal,
      body: SafeArea(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 30, left: 30),
              child: Row(
                children: [
                  Icon(Icons.arrow_back, color: Color(0xffB4B1B1)),
                  Padding(
                    padding: const EdgeInsets.only(left: 10),
                    child: Icon(Icons.search, color: Color(0xffB4B1B1)),
                  ),
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.only(left: 20),
                      child: TextField(
                        style: const TextStyle(color: Colors.white),
                        cursorColor: Colors.white,
                        decoration: const InputDecoration(
                          hintText: 'search',
                          hintStyle: TextStyle(color: Color(0xffB4B1B1)),
                          border: InputBorder.none,
                          isDense: true,
                          contentPadding: EdgeInsets.zero,
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(right: 50),
                    child: Text(
                      'search',
                      style: TextStyle(
                        fontWeight: FontWeight.w500,
                        fontSize: 13,
                        color: Color(0xffEE0808),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
