import 'package:flutter/material.dart';
import 'package:flutter_application_6/calls.dart';
import 'package:flutter_application_6/home1.dart';
import 'package:flutter_application_6/profile.dart';
import 'package:flutter_application_6/videochat.dart';
import 'package:flutter_svg/flutter_svg.dart';

class Bottomnavibar extends StatefulWidget {
  const Bottomnavibar({super.key});

  @override
  State<Bottomnavibar> createState() => _BottomnavibarState();
}

class _BottomnavibarState extends State<Bottomnavibar> {
  int selected_intex=0;
  final List <Widget>pages=[
    Videochat(),
    Home1(),
    Calls(),
    Profile()
  ];
  // void _onitemtapped(int index)    ghgfg
  // {
  //   setState(() {
  //   selected_intex =index;  
  //   });
  // }
  // BottomNavigationBarItem _buildnavitem({
  //   required String Assetpath,
  //   required String label,
  //   required bool isSelected,
  //   IconData? fallbackicon,
  // }){
  // return BottomNavigationBarItem(
  //   icon: SvgPicture.asset(Assetpath),
  //   label: label);}
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
  backgroundColor:Colors.white,
  body:pages[selected_intex] ,
  bottomNavigationBar: Container(
    child: Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20,vertical: 10),
      child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          // IconButton(onPressed: (){setState(() {
          //  selected_intex =0; 
          // });}, icon:Icon( Icons.video_chat_outlined)),
        GestureDetector(onTap: () {
         setState(() {
           selected_intex =0;
         }); 
        },
          child: SvgPicture.asset('assets/Vector.svg',height:selected_intex ==0? 30 :22,)),

          GestureDetector(onTap:() {
            setState(() {
              selected_intex =1;
            });
          },
            child: SvgPicture.asset('assets/Vector (1).svg',height:selected_intex ==1? 30 :22,)),
         GestureDetector(onTap: (){
          setState(() {
            selected_intex =2;
          });
         },
          child: SvgPicture.asset('assets/Vector (3).svg',height:selected_intex ==2? 30 :22,)),
         GestureDetector(onTap: (){
          setState(() {
            selected_intex =3;
          });
         },
          child: SvgPicture.asset('assets/Vector (4).svg',height:selected_intex ==3? 30 :22,))
        ],
      ),
    ),
  ),
    );
  }
}