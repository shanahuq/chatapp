import 'package:flutter/material.dart';
import 'package:flutter_application_6/chatscreen.dart';
import 'package:flutter_application_6/groupmessage.dart';
import 'package:flutter_swipe_action_cell/flutter_swipe_action_cell.dart';

class Home1 extends StatefulWidget {
  const Home1({super.key});

  @override
  State<Home1> createState() => _Home1State();
}

class _Home1State extends State<Home1> {
  final List<Map<String, dynamic>> chat = [
    {'name': 'Adil', 'image': 'assets/Rectangle 1092.png'},
    {'name': 'Marina', 'image': 'assets/Rectangle 1092 (1).png'},
    {'name': 'Dean', 'image': 'assets/Ellipse 304.png'},
    {'name': 'Max', 'image': 'assets/Ellipse 308.png'},
  ];
  final List<Map<String, dynamic>> message = [
    {
      'name': 'Alex Linderson',
      'image': 'assets/Rectangle 1092 (4).png',
      'comment': 'How are you today?',
      'time': '2 min ago',
      'notification': 3,
      'activestatus': 'online',
    },
    {
      'name': 'Team Align',
      'image': '',
      'comment': 'Don’t miss to attend the meeting.',
      'time': '2 min ago',
      'notification': 4,
      'activestatus': 'online',
    },
    {
      'name': 'John Ahraham',
      'image': 'assets/Rectangle 1092.png',
      'comment': 'Hey! Can you join the meeting?',
      'time': '2 min ago',
      'notification': 0,
      'activestatus': 'offline',
    },
    {
      'name': 'Sabila Sayma',
      'image': 'assets/Rectangle 1092 (1).png',
      'comment': 'How are you today?',
      'time': '2 min ago',
      'notification': 0,
      'activestatus': 'offline',
    },
    {
      'name': 'John Borino',
      'image': 'assets/Ellipse 308.png',
      'comment': 'Have a good day 🌸',
      'time': '2 min ago',
      'notification': 0,
      'activestatus': 'online',
    },
    {
      'name': 'Angel Dayna',
      'image': 'assets/yellow.png',
      'comment': '',
      'time': '2 min ago',
      'notification': 0,
      'activestatus': 'online',
    },
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.teal,
      appBar: AppBar(
        leading: Padding(
          padding: const EdgeInsets.only(top: 17, left: 24),
          child: Container(
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              border: Border.all(color: Colors.white),
            ),
            child: Icon(
              Icons.search,
              size: 22,
              weight: 22,
              color: Colors.white,
            ),
            height: 44,
            width: 44,
          ),
        ),
        backgroundColor: Colors.teal,
        title: Center(
          child: Padding(
            padding: const EdgeInsets.only(top: 30),
            child: Text(
              'Home',
              style: TextStyle(
                fontWeight: FontWeight.w500,
                fontSize: 20,
                color: Colors.white,
              ),
            ),
          ),
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.only(top: 17, right: 50),
            child: Container(
              child: Image.asset('assets/Ellipse 307.png'),
              height: 44,
              width: 44,
            ),
          ),
        ],
      ),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          children: [
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(top: 12, right: 17),
                    child: Column(
                      children: [
                        Stack(
                          children: [
                            SizedBox(
                              width: 100,
                              child: Container(
                                child: Image.asset('assets/Ellipse 307.png'),
                                height: 58,
                                width: 58,
                              ),
                            ),
                            Positioned(
                              right: 15,
                              top: 38,
                              child: Container(
                                height: 20,
                                width: 20,
                                decoration: BoxDecoration(
                                  color: Colors.white,
                                  shape: BoxShape.circle,
                                  border: Border.all(
                                    color: Colors.black,
                                    width: 2,
                                  ),
                                ),
                                child: Center(child: Icon(Icons.add, size: 15)),
                              ),
                            ),
                          ],
                        ),
                        SizedBox(height: 6),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Text(
                              'My status',
                              style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.w400,
                                fontSize: 14,
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 40),
                    child: SizedBox(
                      width: 400,
                      height: 100,
                      child: ListView.builder(
                        scrollDirection: Axis.horizontal,
                        itemCount: chat.length,
                        itemBuilder: (context, index) {
                          return Padding(
                            padding: const EdgeInsets.only(right: 50),
                            child: SizedBox(
                              height: 82,
                              width: 52,
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Container(
                                    child: Image.asset(chat[index]['image']),
                                    height: 58,
                                    width: 58,
                                  ),
                                  Text(
                                    chat[index]['name'],
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontWeight: FontWeight.w400,
                                      fontSize: 14,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          );
                        },
                      ),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 20),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Column(
                children: [
                  Container(
                    child: ListView.builder(
                      scrollDirection: Axis.vertical,
                      itemCount: message.length,
                      itemBuilder: (context, index) {
                        return _item(index, message);
                      },
                    ),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(50),
                      color: Colors.white,
                    ),
                    height: 680,
                    width: 600,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _item(int index, dynamic List) {
    return SwipeActionCell(
      key: ValueKey(List[index]),
      trailingActions: [
        SwipeAction(
          nestedAction: SwipeNestedAction(
            /// customize your nested action content
            content: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(30),
                color: Colors.red,
              ),
              width: 130,
              height: 60,
              child: OverflowBox(
                maxWidth: double.infinity,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(Icons.delete, color: Colors.white),
                    SizedBox(
                      width: 500,
                      child: Text(
                        'delete',
                        style: TextStyle(color: Colors.white, fontSize: 20),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),

          /// you should set the default  bg color to transparent
          color: Colors.transparent,
          content: _getIconButton(Colors.red, Icons.delete),
          onTap: (handler) async {
            List.removeAt(index);
            setState(() {});
          },
        ),
        SwipeAction(
          content: _getIconButton(
            Colors.black,
            Icons.notifications_none_rounded,
          ),
          color: Colors.transparent,
          onTap: (handler) {},
        ),
      ],
      child: GestureDetector(
        onTap: () {
          if (message[index]['name'] == 'Team Align') {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder:
                    (context) => Groupmessage(
                      image: message[index]['image'],
                      name: message[index]['name'],
                    ),
              ),
            );
          } else {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder:
                    (context) => Chatscreen(
                      image: message[index]['image'],
                      name: message[index]['name'],
                    ),
              ),
            );
          }
        },
        child: Padding(
          padding: const EdgeInsets.only(top: 41, left: 21),
          child: SizedBox(
            width: 100,
            child: Row(
              children: [
                if (index == 1)
                  Stack(
                    children: [
                      Container(
                        width: 52,
                        height: 52,
                        // color: Colors.amber,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Container(
                              height: 52,
                              width: 26,
                              clipBehavior: Clip.hardEdge, // 👈 important
                              decoration: BoxDecoration(
                                color: Colors.blue,
                                borderRadius: const BorderRadius.only(
                                  bottomLeft: Radius.circular(40),
                                  topLeft: Radius.circular(40),
                                ),
                                image: const DecorationImage(
                                  image: AssetImage(
                                    'assets/istockphoto-1785548065-612x612.jpg',
                                  ),
                                  fit: BoxFit.cover, // 👈 important
                                ),
                              ),
                            ),

                            Column(
                              children: [
                                Container(
                                  height: 26,
                                  width: 26,
                                  clipBehavior: Clip.hardEdge,
                                  decoration: BoxDecoration(
                                    color: Colors.blue,
                                    borderRadius: const BorderRadius.only(
                                      topRight: Radius.circular(40),
                                      // topLeft:
                                      //     Radius.circular(40),
                                    ),
                                    image: const DecorationImage(
                                      image: AssetImage(
                                        'assets/a-business-man-stands-against-white-background-with-his-arms-crossed-ai-generative-photo.jpg',
                                      ),
                                      fit: BoxFit.cover,
                                    ),
                                  ),
                                ),

                                Container(
                                  height: 26,
                                  width: 26,
                                  clipBehavior: Clip.hardEdge,
                                  decoration: BoxDecoration(
                                    color: Colors.blue,
                                    borderRadius: BorderRadius.only(
                                      bottomRight: Radius.circular(40),
                                      //  topLeft: Radius.circular(40),
                                    ),
                                    image: DecorationImage(
                                      image: AssetImage(
                                        'assets/Ellipse 308.png',
                                      ),
                                      fit: BoxFit.cover,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                      Positioned(
                        right: 0,
                        bottom: 5,
                        child: CircleAvatar(
                          backgroundColor: Colors.green,
                          radius: 5,
                        ),
                      ),
                    ],
                  ),
                if (index != 1)
                  Stack(
                    children: [
                      Container(
                        child: Image.asset(message[index]['image']),
                        height: 52,
                        width: 52,
                      ),
                      Positioned(
                        right: 0,
                        bottom: 5,
                        child: CircleAvatar(
                          backgroundColor:
                              message[index]['activestatus'] == 'online'
                                  ? Colors.green
                                  : Colors.grey,
                          radius: 5,
                        ),
                      ),
                    ],
                  ),
                Padding(
                  padding: const EdgeInsets.only(left: 20),
                  child: SizedBox(
                    width: 300,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          message[index]['name'],
                          style: TextStyle(
                            fontWeight: FontWeight.w500,
                            fontSize: 16,
                          ),
                        ),
                        Text(message[index]['comment']),
                      ],
                    ),
                  ),
                ),
                Column(
                  children: [
                    Text(message[index]['time']),
                    if (message[index]['notification'].toString() != '0')
                      // Text(message[index]['notification']),
                      // if(index<2)
                      Container(
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          color: Colors.red,
                        ),
                        child: Center(
                          child: Text(
                            style: TextStyle(color: Colors.white),
                            (message[index]['notification'].toString()),
                          ),
                        ),
                        height: 22,
                        width: 22,
                      ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget _getIconButton(color, iconcolor) {
    return Container(
      width: 50,
      height: 50,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(25),

        /// set you real bg color in your content
        color: color,
      ),
      child: Icon(iconcolor, color: Colors.white),
    );
  }
}
