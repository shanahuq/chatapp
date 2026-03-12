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
      "icon": Icons.play_arrow_rounded,
    },
    {
      "image": "assets/Rectangle 1170.png",
      "date": "11/21/2022",
      "tag1": "#fyp/dhh/",
      "tag2": "#viral video",
      "user": "Roshan432",
      "avatar": "assets/Ellipse 1213.png",
      "likes": "3.4k",
      "icon": Icons.play_arrow_rounded,
    },
    {
      "image": "assets/Rectangle 1169 (1).png",
      "date": "11/21/2022",
      "tag1": "#fyp/dhh/",
      "tag2": "#viral video",
      "user": "Roshan432",
      "avatar": "assets/Ellipse 1213.png",
      "likes": "3.4k",
      "icon": Icons.play_arrow_rounded,
    },
    {
      "image": "assets/Rectangle 1170 (1).png",
      "date": "11/21/2022",
      "tag1": "#fyp/dhh/",
      "tag2": "#viral video",
      "user": "Roshan432",
      "avatar": "assets/Ellipse 1213.png",
      "likes": "3.4k",
      "icon": Icons.play_arrow_rounded,
    },
    {
      'image': 'assets/Rectangle 1169 (2).png',
      'date': '',
      "tag1": "#fyp/dhh/",
      "tag2": "#viral video",
      "user": "Roshan432",
      "avatar": "assets/Ellipse 1213.png",
      "likes": "3.4k",
      "icon": Icons.play_arrow_rounded,
    },
    {
      'image': 'assets/Rectangle 1170 (2).png',
      'date': '',
      "tag1": "#fyp/dhh/",
      "tag2": "#viral video",
      "user": "Roshan432",
      "avatar": "assets/Ellipse 1213.png",
      "likes": "3.4k",
      "icon": Icons.play_arrow_rounded,
    },
  ];
  final List<Map<String, dynamic>> message = [
    {
      'image': 'assets/Ellipse 1211 (1).png',
      'name': 'boykaa.pubjii game',
      'title': 'boykaa',
      'status': '555532 followers . 234 videos',
      'comment': 'follow',
    },
    {
      'image': 'assets/Ellipse 1212 (1).png',
      'name': 'boykaa.full movie',
      'title': 'boykaa',
      'status': '555532 followers . 234 videos',
      'comment': 'follow',
    },
    {
      'image': 'assets/Ellipse 1212 (2).png',
      'name': 'boykaa.f2heeeee',
      'title': 'boykaa',
      'status': '555532 followers . 234 videos',
      'comment': 'follow',
    },
    {
      'image': 'assets/Ellipse 1212 (3).png',
      'name': 'boykaa.ttttt4443',
      'title': 'boykaa',
      'status': '555532 followers . 234 videos',
      'comment': 'follow',
    },
    {
      'image': 'assets/Ellipse 1212 (4).png',
      'name': 'boykaa55555555',
      'title': 'boykaa',
      'status': '3333532 followers . 234 videos',
      'comment': 'follow',
    },
    {
      'image': 'assets/Ellipse 1212 (5).png',
      'name': 'boykaa.4444444',
      'title': 'boykaa',
      'status': '7777777 followers . 234 videos',
      'comment': 'follow',
    },
    {
      'image': 'assets/Ellipse 1212 (6).png',
      'name': 'boykaa.full 3444',
      'title': 'boykaa',
      'status': '999992 followers . 234 videos',
      'comment': 'follow',
    },
    {
      'image': 'assets/Ellipse 1212 (7).png',
      'name': 'boykaa.ddddddd',
      'title': 'boykaa',
      'status': '6666666 followers . 234 videos',
      'comment': 'follow',
    },
    {
      'image': 'assets/Ellipse 1212 (8).png',
      'name': 'boykaa.4444555',
      'title': 'boykaa',
      'status': '3333332 followers . 234 videos',
      'comment': 'follow',
    },
    {
      'image': 'assets/Ellipse 1212 (9).png',
      'name': 'boykaa.5588888',
      'title': 'boykaa',
      'status': '555532 followers . 234 videos',
      'comment': 'follow',
    },
  ];
  final List<Map<String, dynamic>> videos = [
    {
      'image': 'assets/Group 539.png',
      'name': 'boykaa.pubjii game',
      'title': 'boykaa',
      'status': '01:00. 234k videos',
      'icon': Icons.video_camera_back,
    },
    {
      'image': 'assets/Group 538.png',
      'name': 'boykaa.full movie',
      'title': 'boykaa',
      'status': '01:00. 234k videos',
      'icon': Icons.video_camera_back,
    },
    {
      'image': 'assets/Group 537.png',
      'name': 'boykaa.f2heeeee',
      'title': 'boykaa',
      'status': '01:00. 234k videos',
      'icon': Icons.video_camera_back,
    },
    {
      'image': 'assets/Group 536.png',
      'name': 'boykaa.ttttt4443',
      'title': 'boykaa',
      'status': '01:00. 2354k videos',
      'icon': Icons.video_camera_back,
    },
    {
      'image': 'assets/Group 535.png',
      'name': 'boykaa55555555',
      'title': 'boykaa',
      'status': '02:00. 2634k videos',
      'icon': Icons.video_camera_back,
    },
    {
      'image': 'assets/Group 534.png',
      'name': 'boykaa.4444444',
      'title': 'boykaa',
      'status': '03:00. 2334k videos',
      'icon': Icons.video_camera_back,
    },
    {
      'image': 'assets/Group 533.png',
      'name': 'boykaa.full 3444',
      'title': 'boykaa',
      'status': '03:00. 2334k videos',
      'icon': Icons.video_camera_back,
    },
    {
      'image': 'assets/Group 534.png',
      'name': 'boykaa.ddddddd',
      'title': 'boykaa',
      'status': '01:00. 2334k videos',
      'icon': Icons.video_camera_back,
    },
    {
      'image': 'assets/Group 531.png',
      'name': 'boykaa.4444555',
      'title': 'boykaa',
      'status': '04:00. 2334k videos',
      'icon': Icons.video_camera_back,
    },
    {
      'image': 'assets/Group 539.png',
      'name': 'boykaa.5588888',
      'title': 'boykaa',
      'status': '03:00. 23354k videos',
      'icon': Icons.video_camera_back,
    },
    {
      'image': 'assets/Group 534.png',
      'name': 'Boykaa4444444',
      'title': 'boykaa',
      'status': '02:00. 23234k videos',
      'icon': Icons.video_camera_back,
    },
  ];
  final List<Map<String, dynamic>> location = [
    {
      'icon': Icons.location_on,
      'name': 'Boykataa',
      'title': 'boykaa',
      'status': '01:00. 234k videos',
    },
    {
      'icon': Icons.location_on,
      'name': 'boykaa.metal',
      'title': 'boykaa',
      'status': '01:00. 234k videos',
    },
    {
      'icon': Icons.location_on,
      'name': 'boykaa.f2heeeee',
      'title': 'boykaa',
      'status': '01:00. 234k videos',
    },
    {
      'icon': Icons.location_on,
      'name': 'boykaa.ttttt4443',
      'title': 'boykaa',
      'status': '01:00. 2354k videos',
    },
    {
      'icon': Icons.location_on,
      'name': 'boykaa55555555',
      'title': 'boykaa',
      'status': '02:00. 2634k videos',
    },
    {
      'icon': Icons.location_on,
      'name': 'boykaa.4444444',
      'title': 'boykaa',
      'status': '03:00. 2334k videos',
    },
    {
      'icon': Icons.location_on,
      'name': 'boykaa.full 3444',
      'title': 'boykaa',
      'status': '03:00. 2334k videos',
    },
    {
      'icon': Icons.location_on,
      'name': 'boykaa.ddddddd',
      'title': 'boykaa',
      'status': '01:00. 2334k videos',
    },
    {
      'icon': Icons.location_on,
      'name': 'boykaa.4444555',
      'title': 'boykaa',
      'status': '04:00. 2334k videos',
    },
    {
      'icon': Icons.location_on,
      'name': 'boykaa.5588888',
      'title': 'boykaa',
      'status': '03:00. 23354k videos',
    },
    {
      'icon': Icons.location_on,
      'name': 'Boykaa4444444',
      'title': 'boykaa',
      'status': '02:00. 23234k videos',
    },
  ];
  final List<Map<String, dynamic>> hash = [
    {"name": '#       boykaafilm', 'status': '2345 views'},
    {'name': '#       boyka full farm', 'status': '22225 views'},
    {'name': '#       boyka44afilm', 'status': '12233 views'},
    {'name': '#       boykaaf44m', 'status': '12233 views'},
    {'name': '#       full movie', 'status': '12233 views'},
    {'name': '#       boykaafilm', 'status': '12233 views'},
    {'name': '#       boykaafilm', 'status': '12233 views'},
    {'name': '#       boykaafilm', 'status': '12233 views'},
    {'name': '#       boykaafilm', 'status': '12233 views'},
    {'name': '#       boykaafilm', 'status': '12233 views'},
    {'name': '#       boykaafilm', 'status': '12233 views'},
    {'name': '#       boykaafilm', 'status': '12233 views'},
    {'name': '#       boykaafilm', 'status': '12233 views'},
    {'name': '#       boykaafilm', 'status': '12233 views'},
    {'name': '#       boykaafilm', 'status': '12233 views'},
    {'name': '#       boykaafilm', 'status': '12233 views'},
    {'name': '#       boykaafilm', 'status': '12233 views'},
    {'name': '#       boykaafilm', 'status': '12233 views'},
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

  Widget _UsersTabContent() {
    return ListView.separated(
      itemCount: message.length,
      separatorBuilder: (context, index) => const SizedBox(height: 10),
      itemBuilder: (context, index) {
        final user = message[index];
        return Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10),
          child: Row(
            children: [
              // User info (image + text)
              Expanded(
                child: ListTile(
                  contentPadding: EdgeInsets.zero,
                  leading: CircleAvatar(
                    radius: 25,
                    backgroundImage: AssetImage(user['image']),
                  ),
                  title: Text(
                    user['name'],
                    style: const TextStyle(
                      fontWeight: FontWeight.w500,
                      fontSize: 15,
                      color: Colors.white,
                    ),
                  ),
                  subtitle: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        user['title'],
                        style: const TextStyle(
                          fontWeight: FontWeight.w500,
                          fontSize: 10,
                          color: Colors.white,
                        ),
                      ),
                      Text(
                        user['status'],
                        style: const TextStyle(
                          fontWeight: FontWeight.w400,
                          fontSize: 10,
                          color: Colors.white70,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              // Follow button
              Container(
                height: 25,
                width: 80,
                alignment: Alignment.center,
                decoration: BoxDecoration(
                  color: const Color(0xffEF1F1F), // bright red
                  borderRadius: BorderRadius.circular(4),
                ),
                child: Text(
                  user['commenr'] ?? 'follow', // use your key or fallback
                  style: const TextStyle(
                    color: Colors.white,
                    fontSize: 12,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ),
            ],
          ),
        );
      },
    );
  }

  Widget _SoundsTabContent() {
    return ListView.separated(
      itemBuilder: (context, index) {
        return Padding(
          padding: const EdgeInsets.only(top: 10),
          child: Row(
            children: [
              Expanded(
                child: ListTile(
                  leading: Container(
                    height: 48,
                    width: 50,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Image.asset(videos[index]['image']),
                  ),
                  title: Text(
                    videos[index]['name'],
                    style: TextStyle(
                      fontWeight: FontWeight.w500,
                      fontSize: 15,
                      color: Colors.white,
                    ),
                  ),
                  subtitle: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        videos[index]['title'],
                        style: TextStyle(
                          fontWeight: FontWeight.w500,
                          fontSize: 10,
                          color: Colors.white,
                        ),
                      ),
                      Text(
                        videos[index]['status'],
                        style: TextStyle(
                          fontWeight: FontWeight.w500,
                          fontSize: 12,
                          color: Colors.white,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(right: 20),
                child: Container(
                  height: 25,
                  width: 66,
                  color: Colors.red,
                  child: Center(
                    child: Icon(
                      videos[index]['icon'],
                      color: Colors.white,
                      size: 20,
                    ),
                  ),
                ),
              ),
            ],
          ),
        );
      },
      separatorBuilder: (context, index) {
        return SizedBox(height: 10);
      },
      itemCount: videos.length,
    );
  }

  Widget _PlacesTabContent() {
    return ListView.separated(
      itemBuilder: (context, index) {
        return ListTile(
          leading: Icon(location[index]['icon'], color: Colors.white, size: 30),
          title: Text(
            location[index]['name'],
            style: TextStyle(
              fontWeight: FontWeight.w500,
              fontSize: 15,
              color: Colors.white,
            ),
          ),
          subtitle: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                location[index]['title'],
                style: TextStyle(
                  fontWeight: FontWeight.w500,
                  fontSize: 10,
                  color: Colors.white,
                ),
              ),
              Text(
                location[index]['status'],
                style: TextStyle(
                  fontWeight: FontWeight.w500,
                  fontSize: 12,
                  color: Colors.white,
                ),
              ),
            ],
          ),
        );
      },
      separatorBuilder: (context, index) {
        return SizedBox(height: 10);
      },
      itemCount: location.length,
    );
  }

  Widget _HashtagsTabContent() {
    return ListView.separated(
      itemBuilder: (context, index) {
        return Padding(
          padding: const EdgeInsets.only(top: 20, left: 20),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                hash[index]['name'],
                style: TextStyle(
                  fontWeight: FontWeight.w500,
                  fontSize: 15,
                  color: Colors.white,
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(right: 30),
                child: Text(
                  hash[index]['status'],
                  style: TextStyle(
                    fontWeight: FontWeight.w500,
                    fontSize: 12,
                    color: Color(0xffCEC8C8),
                  ),
                ),
              ),
            ],
          ),
        );
      },
      separatorBuilder: (context, index) {
        return SizedBox(height: 10);
      },
      itemCount: hash.length,
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
                      else if (tab == 'Users')
                        return _UsersTabContent();
                      else if (tab == 'Sounds')
                        return _SoundsTabContent();
                      else if (tab == 'Places')
                        return _PlacesTabContent();
                      else if (tab == 'Hashtags')
                        return _HashtagsTabContent();
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
    double imageHeight = index == 3 ? 200 : 300;
    return Padding(
      padding: EdgeInsets.only(top: index == 3 ? 0 : 0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          if (index == 3)
            Container(
              height: 100,
              child: Container(
                width: 120,
                height: 80,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(6),
                ),

                child: Stack(
                  children: [
                    Image.asset('assets/Rectangle 1172.png'),
                    Positioned(
                      top: 5,
                      left: 5,
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(top: 10),
                            child: CircleAvatar(
                              radius: 10,
                              child: Image.asset('assets/Ellipse 1213.png'),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 10),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "REply to id 3421",
                                  style: TextStyle(
                                    fontWeight: FontWeight.w500,
                                    fontSize: 6,
                                    color: Color(0xffA7A5A5),
                                  ),
                                ),
                                Text(
                                  "MY favrote boykaas",
                                  style: TextStyle(
                                    fontSize: 9,
                                    fontWeight: FontWeight.w700,
                                    color: Color(0xff000000),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          Stack(
            alignment: Alignment.center,
            children: [
              Container(
                height: imageHeight,
                width: double.infinity,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  image: DecorationImage(
                    image: AssetImage(chat[index]['image']),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              Center(
                child: Padding(
                  padding: const EdgeInsets.only(top: 50),
                  child: Icon(
                    chat[index]['icon'],
                    color: Colors.white,
                    size: 80,
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
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
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
                      Icon(
                        Icons.favorite_border,
                        color: Colors.black,
                        size: 18,
                      ),
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
      ),
    );
  }
}
