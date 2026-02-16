import 'package:flutter/material.dart';
import 'gift.dart';

class Groupmessage extends StatefulWidget {
  const Groupmessage({super.key, required this.image, required this.name});
  final String image;
  final String name;

  @override
  State<Groupmessage> createState() => _GroupmessageState();
}

class _GroupmessageState extends State<Groupmessage> {
  void _showAttachmentBottomSheet() {
    showModalBottomSheet(
      context: context,
      backgroundColor: Colors.teal,
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.vertical(top: Radius.circular(50)),
      ),
      builder: (context) {
        return SizedBox(
          height: 500,
          child: Column(
            children: [
              const SizedBox(height: 10),
              // Container(
              //   height: 4,
              //   width: 40,
              //   decoration: BoxDecoration(
              //     color: Colors.grey.shade300,
              //     borderRadius: BorderRadius.circular(10),
              //   ),
              // ),
              AppBar(
                backgroundColor: Colors.teal,
                leading: IconButton(
                  onPressed: () => Navigator.pop(context),
                  icon: Icon(Icons.close_sharp, color: Colors.white),
                ),
                title: Center(
                  child: Text(
                    'Share Content',
                    style: TextStyle(
                      fontWeight: FontWeight.w500,
                      fontSize: 16,
                      color: Colors.white,
                    ),
                  ),
                ),
              ),

              const SizedBox(height: 5),

              GestureDetector(
                onTap: () {
                  Navigator.pop(context);
                },
                child: Padding(
                  padding: const EdgeInsets.only(left: 30),
                  child: SingleChildScrollView(scrollDirection: Axis.vertical,
                    child: Column(
                      children: [
                        Row(
                          children: [
                            CircleAvatar(
                              radius: 20,
                              backgroundColor: Colors.white,
                              child: Icon(Icons.photo_camera_outlined),
                              // child: ListTile(
                              //   leading: Center(child: const Icon(Icons.insert_drive_file)),
                              //   title: const Text("Document"),
                              //   onTap: () {
                              //     Navigator.pop(context);
                              //   },
                              // ),
                            ),
                            SizedBox(width: 20),
                            Text(
                              'Camera',
                              style: TextStyle(
                                fontWeight: FontWeight.w600,
                                fontSize: 14,
                                color: Colors.white,
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 80),
                child: Divider(color: Colors.black.withOpacity(0.2), height: 1),
              ),
              // ListTile(
              //   leading: const Icon(Icons.insert_drive_file_outlined,),
              //   title: const Text("Gallery"),
              //   onTap: () {
              //     Navigator.pop(context);
              //   },
              // ),
              Padding(
                padding: const EdgeInsets.only(left: 30, top: 30),
                child: GestureDetector(
                  onTap: () {
                    Navigator.pop(context);
                  },
                  child: Row(
                    children: [
                      CircleAvatar(
                        radius: 20,
                        backgroundColor: Colors.white,
                        child: IconButton(
                          onPressed: () {
                            Navigator.pop(context);
                          },
                          icon: Icon(Icons.insert_drive_file_outlined),
                        ),
                      ),
                      SizedBox(width: 20),
                      Column(
                        children: [
                          Text(
                            'Documents',
                            style: TextStyle(
                              fontWeight: FontWeight.w600,
                              fontSize: 14,
                              color: Colors.white,
                            ),
                          ),
                          Text(
                            'Share your files',
                            style: TextStyle(
                              fontWeight: FontWeight.w300,
                              fontSize: 10,
                              color: Colors.black,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 80),
                child: Divider(color: Colors.black.withOpacity(0.2), height: 1),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 30, top: 30),
                child: GestureDetector(
                  onTap: () {
                    Navigator.pop(context);
                  },
                  child: Row(
                    children: [
                      CircleAvatar(
                        radius: 20,
                        backgroundColor: Colors.white,
                        child: Icon(Icons.signal_cellular_alt_outlined),
                      ),
                      SizedBox(width: 5),
                      Column(
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(right: 30),
                            child: Text(
                              'Create a poll',
                              style: TextStyle(
                                fontWeight: FontWeight.w600,
                                fontSize: 14,
                                color: Colors.white,
                              ),
                            ),
                          ),
                          GestureDetector(
                            onTap: () {
                              Navigator.pop(context);
                            },
                            child: Row(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.only(left: 20),
                                  child: Text(
                                    'Create a poll for any querry',
                                    style: TextStyle(
                                      fontWeight: FontWeight.w300,
                                      fontSize: 10,
                                      color: Colors.black,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 80),
                child: Divider(color: Colors.black.withOpacity(0.2), height: 1),
              ),
              // ListTile(
              //   leading: const Icon(Icons.camera_alt),
              //   title: const Text("Camera"),
              //   onTap: () {
              //     Navigator.pop(context);
              //   },
              // ),
              Padding(
                padding: const EdgeInsets.only(left: 30, top: 30),
                child: GestureDetector(
                  onTap: () {
                    Gift;
                    Navigator.push(context, MaterialPageRoute(builder: (context) => Gift()));
                  },
                  child: Row(
                    children: [
                      CircleAvatar(
                        radius: 20,
                        backgroundColor: Colors.white,
                        child: Icon(Icons.perm_media_outlined),
                      ),
                      SizedBox(width: 5),
                      Column(
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(right: 52),
                            child: Text(
                              'Media',
                              style: TextStyle(
                                fontWeight: FontWeight.w600,
                                fontSize: 14,
                                color: Colors.white,
                              ),
                            ),
                          ),
                          Row(
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(left: 20),
                                child: Text(
                                  'Share photos and videos',
                                  style: TextStyle(
                                    fontWeight: FontWeight.w300,
                                    fontSize: 10,
                                    color: Colors.black,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 80),
                child: Divider(color: Colors.black.withOpacity(0.2), height: 1),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 30, top: 30),
                child: GestureDetector(
                  onTap: () {
                    Navigator.pop(context);
                  },
                  child: Row(
                    children: [
                      CircleAvatar(
                        radius: 20,
                        backgroundColor: Colors.white,
                        child: Icon(Icons.person),
                      ),
                      SizedBox(width: 2),
                      Column(
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(right: 20),
                            child: Text(
                              'Contact',
                              style: TextStyle(
                                fontWeight: FontWeight.w600,
                                fontSize: 14,
                                color: Colors.white,
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 30),
                            child: Text(
                              'Share your contacts',
                              style: TextStyle(
                                fontWeight: FontWeight.w300,
                                fontSize: 10,
                                color: Colors.black,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 80),
                child: Divider(color: Colors.black.withOpacity(0.2), height: 1),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 30, top: 30),
                child: GestureDetector(
                  onTap: () {
                    Navigator.pop(context);
                  },
                  child: Row(
                    children: [
                      CircleAvatar(
                        radius: 20,
                        backgroundColor: Colors.white,
                        child: Icon(Icons.location_on_outlined),
                      ),
                      SizedBox(width: 20),
                      Column(
                        children: [
                          Text(
                            'Location',
                            style: TextStyle(
                              fontWeight: FontWeight.w600,
                              fontSize: 14,
                              color: Colors.white,
                            ),
                          ),
                          Text(
                            'Share your location',
                            style: TextStyle(
                              fontWeight: FontWeight.w300,
                              fontSize: 10,
                              color: Colors.black,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: () => Navigator.pop(context),
          icon: Icon(Icons.arrow_back),
        ),
        title: Row(
          children: [
            CircleAvatar(backgroundImage: AssetImage(widget.image), radius: 16),
            SizedBox(width: 10),
            Column(
              children: [
                Text(
                  widget.name,
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 20),
                  child: Text(
                    '8 members, 5 online',
                    style: TextStyle(fontWeight: FontWeight.w400, fontSize: 12),
                  ),
                ),
              ],
            ),
          ],
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 90),
            child: Row(
              children: [
                Padding(
                  padding: const EdgeInsets.only(right: 20),
                  child: Icon(Icons.call_outlined),
                ),
                Icon(Icons.videocam_outlined),
              ],
            ),
          ),
        ],
      ),
      body: Column(
        children: [
          Row(
            children: [
              CircleAvatar(
                radius: 16,
                backgroundImage: AssetImage('assets/Rectangle 1092.png'),
              ),
              SizedBox(width: 20),
              Text(
                'Hafizur Rahman',
                style: TextStyle(
                  fontWeight: FontWeight.w500,
                  fontSize: 16,
                  color: Colors.black,
                ),
              ),
            ],
          ),
          Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(right: 170, top: 25),
                child: Text(
                  'Have a great working week!!',
                  style: TextStyle(fontWeight: FontWeight.w400, fontSize: 14),
                ),
              ),
            ],
          ),
          Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 10),
                child: Text(
                  '09:25 AM',
                  style: TextStyle(fontWeight: FontWeight.w400, fontSize: 10),
                ),
              ),
            ],
          ),
          Padding(
            padding: const EdgeInsets.only(top: 30),
            child: Row(
              children: [
                CircleAvatar(
                  radius: 16,
                  backgroundImage: AssetImage('assets/Ellipse 304.png'),
                ),
                SizedBox(width: 20),
                Text(
                  'Majharul Haque',
                  style: TextStyle(
                    fontWeight: FontWeight.w500,
                    fontSize: 16,
                    color: Colors.black,
                  ),
                ),
              ],
            ),
          ),
          Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(right: 100, top: 25),
                child: Text(
                  'This is my new 3d design',
                  style: TextStyle(fontWeight: FontWeight.w400, fontSize: 14),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 20, right: 100),
                child: Container(
                  height: 122,
                  width: 192,
                  child: Image.asset('assets/Rectangle 1131.png'),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 10, left: 50),
                child: Text(
                  '09:25 AM',
                  style: TextStyle(fontWeight: FontWeight.w400, fontSize: 10),
                ),
              ),
            ],
          ),
          Row(
            children: [
              CircleAvatar(
                backgroundImage: AssetImage('assets/Rectangle 1092 (1).png'),
                radius: 16,
              ),
              SizedBox(width: 20),
              Text(
                'Annei Ellison',
                style: TextStyle(
                  fontWeight: FontWeight.w500,
                  fontSize: 16,
                  color: Colors.black,
                ),
              ),
            ],
          ),
          Padding(
            padding: const EdgeInsets.only(top: 10, right: 170),
            child: Container(
              child: Image.asset('assets/Voice (1).png'),
              height: 38,
              width: 220,
            ),
          ),
          Text(
            '09:25 AM',
            style: TextStyle(fontWeight: FontWeight.w400, fontSize: 10),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 35),
            child: Row(
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 240),
                  child: SizedBox(
                    width: 50,
                    child: Text(
                      'You',
                      style: TextStyle(
                        fontWeight: FontWeight.w500,
                        fontSize: 16,
                        color: Colors.black,
                      ),
                    ),
                  ),
                ),
                CircleAvatar(
                  backgroundImage: AssetImage('assets/Ellipse 307 (1).png'),
                  radius: 16,
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(right: 70),
            child: Container(
              height: 37,
              width: 141,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(16),
                color: Colors.teal,
              ),
              child: Center(
                child: Text(
                  'You did your job well!',
                  style: TextStyle(
                    fontWeight: FontWeight.w400,
                    fontSize: 12,
                    color: Colors.white,
                  ),
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(right: 150, top: 15),
            child: Text(
              '09:25 AM',
              style: TextStyle(fontWeight: FontWeight.w400, fontSize: 10),
            ),
          ),
        ],
      ),
      bottomNavigationBar: Container(
        height: 100,
        width: 500,
        color: Colors.white,
        child: Row(
          children: [
            GestureDetector(
              onTap: _showAttachmentBottomSheet,
              child: Image.asset('assets/Group.png', height: 24, width: 24),
            ),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.only(left: 15),
                child: TextFormField(
                  decoration: const InputDecoration(
                    hintText: "Write your message",
                    hintStyle: TextStyle(
                      fontWeight: FontWeight.w400,
                      fontSize: 12,
                    ),
                    border: InputBorder.none,
                    isDense: true,
                  ),
                ),
              ),
            ),
            SizedBox(
              width: 50,
              child: Image.asset(
                'assets/files.png',
                height: 24,
                width: 24,
                color: Colors.black,
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(right: 30),
              child: Icon(Icons.camera_alt_outlined),
            ),
            Padding(
              padding: const EdgeInsets.only(right: 30),
              child: Icon(Icons.keyboard_voice_outlined),
            ),
          ],
        ),
      ),
    );
  }
}
