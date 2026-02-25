import 'package:flutter/material.dart';

class Createpoll extends StatelessWidget {
  const Createpoll({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 20, left: 20),
                child: Row(
                  children: [
                    Text(
                      'Create Poll',
                      style: TextStyle(
                        fontWeight: FontWeight.w600,
                        fontSize: 22,
                      ),
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
                padding: const EdgeInsets.only(top: 20, left: 20),
                child: Row(
                  children: [
                    Text(
                      'How much you \nlike to using \nourApp',
                      style: TextStyle(
                        fontWeight: FontWeight.w500,
                        fontSize: 40,
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 40),

              const PollOption(
                title: "Audio call",
                percentage: 0.3,
                isSelected: false,
              ),

              const PollOption(
                title: "video call",
                percentage: 0.9,
                isSelected: true,
              ),

              const PollOption(
                title: "message",
                percentage: 0.2,
                isSelected: false,
              ),
              Padding(
                padding: const EdgeInsets.only(top: 30,left: 25),
                child: Row(
                  children: [
                    Text(
                      'Voted member',
                      style: TextStyle(fontWeight: FontWeight.w500, fontSize: 16),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 30,left: 10),
                child: Container(
                  height: 82,
                  width: 450,
                  child: Image.asset('assets/Group 279.png',fit: BoxFit.cover,),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

class PollOption extends StatelessWidget {
  final String title;
  final double percentage;
  final bool isSelected;

  const PollOption({
    super.key,
    required this.title,
    required this.percentage,
    required this.isSelected,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 70,
      margin: const EdgeInsets.only(bottom: 20),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(20),
      ),
      child: Stack(
        children: [
          /// Filled Percentage
          FractionallySizedBox(
            widthFactor: percentage,
            child: Container(
              decoration: BoxDecoration(
                color:
                    isSelected
                        ? const Color(0xff2F9E8F)
                        : const Color(0xffC9D6D5),
                borderRadius: BorderRadius.circular(20),
              ),
            ),
          ),

          /// Content
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 18),
            child: Row(
              children: [
                Container(
                  height: 22,
                  width: 22,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: isSelected ? Colors.white : Colors.transparent,
                    border: Border.all(color: const Color(0xff8A9393)),
                  ),
                ),
                const SizedBox(width: 15),
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      title,
                      style: TextStyle(
                        fontSize: 16,
                        color:
                            isSelected ? Colors.white : const Color(0xff6C757D),
                      ),
                    ),
                    Text(
                      "${(percentage * 100).toInt()}%",
                      style: TextStyle(
                        fontSize: 14,
                        color: isSelected ? Colors.white : Colors.black,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
