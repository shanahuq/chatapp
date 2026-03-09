import 'package:flutter/material.dart';

class Searchscreen2 extends StatefulWidget {
  const Searchscreen2({super.key});

  @override
  State<Searchscreen2> createState() => _Searchscreen2State();
}

class _Searchscreen2State extends State<Searchscreen2>
    with TickerProviderStateMixin {
  final List<Map<String, dynamic>> chat = [
    {
      "image": "assets/Rectangle 1169.png",
      "date": "11/21/2022",
      "tag1": "#fyp/dhh/",
      "tag2": "#viral video",
      "user": "Roshan432",
      "avatar": "assets/Ellipse 1213.png",
      "likes": "3.4k",
    },
    {
      "image": "assets/Rectangle 1170.png",
      "date": "11/21/2022",
      "tag1": "#fyp/dhh/",
      "tag2": "#viral video",
      "user": "Roshan432",
      "avatar": "assets/Ellipse 1213.png",
      "likes": "3.4k",
    },
    {
      "image": "assets/Rectangle 1169 (1).png",
      "date": "11/21/2022",
      "tag1": "#fyp/dhh/",
      "tag2": "#viral video",
      "user": "Roshan432",
      "avatar": "assets/Ellipse 1213.png",
      "likes": "3.4k",
    },
    {
      "image": "assets/Rectangle 1170 (1).png",
      "date": "11/21/2022",
      "tag1": "#fyp/dhh/",
      "tag2": "#viral video",
      "user": "Roshan432",
      "avatar": "assets/Ellipse 1213.png",
      "likes": "3.4k",
    },
    {
      'image': 'assets/Rectangle 1169 (2).png',
      'date': '',
      "tag1": "#fyp/dhh/",
      "tag2": "#viral video",
      "user": "Roshan432",
      "avatar": "assets/Ellipse 1213.png",
      "likes": "3.4k",
    },
    {
      'image': 'assets/Rectangle 1170 (2).png',
      'date': '',
      "tag1": "#fyp/dhh/",
      "tag2": "#viral video",
      "user": "Roshan432",
      "avatar": "assets/Ellipse 1213.png",
      "likes": "3.4k",
    },
  ];
  late TabController _tabController;

  final List<String> tabs = [
    'Top',
    'Videos',
    'Users',
    'Sounds',
    'Places',
    'Hashtags',
  ];

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: tabs.length, vsync: this);
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  Widget _buildSearchBar() {
    return Padding(
      padding: const EdgeInsets.only(top: 30, left: 30, right: 30),
      child: Row(
        children: [
          Icon(Icons.arrow_back, color: const Color(0xffB4B1B1)),
          const SizedBox(width: 10),
          Icon(Icons.search, color: const Color(0xffB4B1B1)),
          const SizedBox(width: 20),
          Expanded(
            child: TextField(
              style: const TextStyle(color: Colors.white),
              cursorColor: Colors.white,
              decoration: const InputDecoration(
                hintText: 'boykaa fulll movie',
                hintStyle: TextStyle(
                  color: Color(0xffB4B1B1),
                  fontWeight: FontWeight.w500,
                  fontSize: 13,
                ),
                border: InputBorder.none,
                isDense: true,
                contentPadding: EdgeInsets.zero,
              ),
            ),
          ),
          Container(
            height: 20,
            width: 20,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(50),
              color: const Color(0xffB4B1B1),
            ),
            child: const Icon(Icons.close, color: Colors.black, size: 18),
          ),
        ],
      ),
    );
  }

  // This content will be shown in the Top tab
  Widget _topTabContent() {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Header
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Text(
                  'Users',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 18,
                    color: Colors.white,
                  ),
                ),
                Row(
                  children: const [
                    Text(
                      'see more',
                      style: TextStyle(color: Color(0xffAEA2A2), fontSize: 12),
                    ),
                    SizedBox(width: 4),
                    Icon(
                      Icons.arrow_forward_ios_outlined,
                      size: 10,
                      color: Color(0xffAEA2A2),
                    ),
                  ],
                ),
              ],
            ),
            const SizedBox(height: 30),

            // First user row
            Row(
              children: [
                const CircleAvatar(
                  radius: 30,
                  backgroundImage: AssetImage('assets/Ellipse 1211.png'),
                ),
                const SizedBox(width: 20),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: const [
                      Text(
                        'boykaa.pubjii game',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 16,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                      Text(
                        'boykaa',
                        style: TextStyle(color: Colors.white, fontSize: 12),
                      ),
                      Text(
                        '555532 followers · 234 videos',
                        style: TextStyle(color: Colors.white, fontSize: 12),
                      ),
                    ],
                  ),
                ),
                Container(
                  height: 18,
                  width: 80,
                  alignment: Alignment.center,
                  color: const Color(0xffEF1F1F),
                  child: const Text(
                    'follow',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 9,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(height: 30),

            // Second user row
            Row(
              children: [
                const CircleAvatar(
                  radius: 30,
                  backgroundImage: AssetImage('assets/Ellipse 1212.png'),
                ),
                const SizedBox(width: 20),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: const [
                      Text(
                        'boykaa.full movie',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 16,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                      Text(
                        'boykaa',
                        style: TextStyle(color: Colors.white, fontSize: 12),
                      ),
                      Text(
                        '555532 followers · 234 videos',
                        style: TextStyle(color: Colors.white, fontSize: 12),
                      ),
                    ],
                  ),
                ),
                Container(
                  height: 18,
                  width: 80,
                  alignment: Alignment.center,
                  color: const Color(0xffEF1F1F),
                  child: const Text(
                    'follow',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 9,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(height: 20),

            // Image
            Container(
              height: 600,
              width: double.infinity,
              decoration: const BoxDecoration(
                image: DecorationImage(
                  image: AssetImage('assets/Frame 51.png'),
                  fit: BoxFit.cover,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _videosTabContent() {
    return GridView.builder(
      padding: const EdgeInsets.all(5),
      itemCount: chat.length,
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        // crossAxisSpacing: 10,
        // mainAxisSpacing: 10,
        childAspectRatio: 0.6,
      ),
      itemBuilder: (context, index) {
        return Padding(padding: const EdgeInsets.all(8.0), child: card(index));
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.teal,
      body: SafeArea(
        child: Column(
          children: [
            _buildSearchBar(),
            const SizedBox(height: 10),
            TabBar(
              controller: _tabController,
              isScrollable: true,
              indicatorColor: Colors.white,
              labelColor: Colors.white,
              unselectedLabelColor: const Color(0xffB4B1B1),
              labelStyle: const TextStyle(fontWeight: FontWeight.bold),
              tabs: tabs.map((tab) => Tab(text: tab)).toList(),
            ),
            Expanded(
              child: TabBarView(
                controller: _tabController,
                children:
                    tabs.map((tab) {
                      if (tab == 'Top')
                        return _topTabContent(); // Show your content in Top
                      else if (tab == 'Videos')
                        return _videosTabContent();
                      return Center(
                        child: Text(
                          'Content for $tab',
                          style: const TextStyle(
                            color: Colors.white,
                            fontSize: 24,
                          ),
                        ),
                      );
                    }).toList(),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget card(int index) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Stack(
          alignment: Alignment.center,
          children: [
            Container(
              height: 300,
              width: double.infinity,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                image: DecorationImage(
                  image: AssetImage(chat[index]['image']),
                  fit: BoxFit.cover,
                ),
              ),
            ),
            Positioned(
              bottom: 5,
              left: 5,
              child: Text(
                chat[index]['date'],
                style: TextStyle(
                  fontWeight: FontWeight.w500,
                  fontSize: 9,
                  color: Colors.white,
                ),
              ),
            ),
            // Positioned(
            //   top: 0,
            //   left: 20,
            //   child: Text(
            //     chat[index]['tag1'],
            //     style: TextStyle(
            //       fontWeight: FontWeight.w500,
            //       fontSize: 9,
            //       color: Colors.white,
            //     ),
            //   ),
            // ),
            // Positioned(
            //   top: 10,
            //   left: 20,
            //   child: Text(
            //     chat[index]['tag2'],
            //     style: TextStyle(
            //       fontWeight: FontWeight.w500,
            //       fontSize: 9,
            //       color: Colors.white,
            //     ),
            //   ),
            // ),
            // Positioned(
            //   top: 20,
            //   left: 20,
            //   child: CircleAvatar(
            //     radius: 10,
            //     child: Image.asset(chat[index]['avatar']),
            //   ),
            // ),
          ],
        ),

        Padding(
          padding: const EdgeInsets.only(top: 20, left: 30),
          child: Text(
            chat[index]['tag1'],
            style: TextStyle(
              fontWeight: FontWeight.w500,
              fontSize: 9,
              color: Colors.white,
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(left: 30),
          child: Text(
            chat[index]['tag2'],
            style: TextStyle(
              fontWeight: FontWeight.w500,
              fontSize: 9,
              color: Colors.white,
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(top: 10, left: 30),
          child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              CircleAvatar(
                radius: 10,
                child: Image.asset(chat[index]['avatar']),
              ),
              Padding(
                padding: const EdgeInsets.only(right: 80),
                child: Text(
                  chat[index]['user'],
                  style: TextStyle(
                    fontWeight: FontWeight.w500,
                    fontSize: 6,
                    color: Color(0xffA59F9F),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(right: 30),
                child: Row(
                  children: [
                    Icon(Icons.favorite_border, color: Colors.black, size: 18),
                    Text(
                      chat[index]['likes'],
                      style: TextStyle(
                        fontWeight: FontWeight.w500,
                        fontSize: 6,
                        color: Color(0xffB2B0B0),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
