// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, sort_child_properties_last

import 'package:flutter/material.dart';
import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:autre/UserInterface/PCVersion/pages/trove_network_pc.dart';
import 'package:autre/UserInterface/UserInterfaceMobileFolder/pages/profile.dart';


class UserInterfacePC extends StatefulWidget {

  _UserInterfacePCState createState() => _UserInterfacePCState();
}

class _UserInterfacePCState extends State<UserInterfacePC> {

  //var indexToPpass;
  late TextEditingController controllerr;
  final itemsBar = const [
    Icon(Icons.message_outlined, size: 30),
    Icon(Icons.square_outlined, size: 30),
    Icon(Icons.person_outline, size: 30),
    Icon(Icons.live_tv, size: 30),

  ];
  int indexBar = 1;
  

  @override
  Widget build(BuildContext context) {  
    
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: indexBar == 2 ? Color.fromARGB(224, 31, 74, 205) : Color.fromARGB(255, 85, 150, 248), // left: Color.fromARGB(255, 16, 50, 144)
        appBar: AppBar(
          toolbarHeight: 50,
          elevation: 7,
          backgroundColor:Color.fromARGB(255, 249, 216, 6),
          title: 
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
            
            // Text("Width:" + MediaQuery.of(context).size.width .toString()),
            // Text("Height:" + MediaQuery.of(context).size.height.toString()),
              Row(children: [

                Icon(Icons.circle, color: Colors.grey, size: 17,),
                Text("Members: 1089", style: GoogleFonts.basic(textStyle: TextStyle(color: Colors.black, fontSize: 15)),),

                SizedBox(width: 20,),
                
                Icon(Icons.circle, color: Colors.green, size: 17,),
                Text("Online: 125", style: GoogleFonts.basic(textStyle: TextStyle(color: Colors.black, fontSize: 15)),),
              ]),
            
              Icon(Icons.settings_outlined, color: Colors.black, size: 25,),
            
          ]),
        ),
        bottomNavigationBar: CurvedNavigationBar(
          index: indexBar,
          color:Color.fromARGB(255, 249, 216, 6), 
          backgroundColor: Colors.transparent,
          animationDuration: Duration(milliseconds: 350),
          height: 60,
          items: itemsBar,
          onTap: (selectedIndex) {
            setState(() {
              indexBar = selectedIndex;
              itemsBar[indexBar];
            });
          },
        ),

        body: getSelectedWidget(index: indexBar) 

      ),
    );
  }
}


Widget getSelectedWidget({required int index}) {
  Widget page;
  switch (index) {
    case 0:
      page = Text("messages");
      break;
    case 1:
      page = TroveNetworkPC() ;
      break;
    case 2:
      page = Profile();
      break;
    default:
      page = Text("Soon");
      break;
  }
  return page;
}