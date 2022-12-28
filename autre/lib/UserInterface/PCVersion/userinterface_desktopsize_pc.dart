// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, sort_child_properties_last

import 'package:flutter/material.dart';
import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:autre/UserInterface/UserInterfaceMobileFolder/pages/trove_network.dart';


class UserInterfacePC extends StatefulWidget {

  _UserInterfacePCState createState() => _UserInterfacePCState();
}

class _UserInterfacePCState extends State<UserInterfacePC> {
  

  @override
  Widget build(BuildContext context) {  
    
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Color.fromARGB(255, 85, 150, 248),
        

        appBar: AppBar(
          toolbarHeight: 50,
          elevation: 1,
          backgroundColor:Color.fromARGB(255, 249, 216, 6),
          title: 
          Row(children: [

            // Text("Width:" + MediaQuery.of(context).size.width .toString()),
            // Text("Height:" + MediaQuery.of(context).size.height.toString()),
           
            Icon(Icons.circle, color: Colors.grey, size: 17,),
            Text("Members: 1089", style: GoogleFonts.basic(textStyle: TextStyle(color: Colors.black, fontSize: 15)),),

            SizedBox(width: 20,),
            
            Icon(Icons.circle, color: Colors.green, size: 17,),
            Text("Online: 125", style: GoogleFonts.basic(textStyle: TextStyle(color: Colors.black, fontSize: 15)),),
            
            Expanded(child:
            Row(mainAxisAlignment: MainAxisAlignment.end, children: [Icon(Icons.settings_outlined, color: Colors.black, size: 25,),],)
            )
          ]),
        ),       
        body:

        Row(
        children: [
       
        Column(
          children: [
          Expanded(
            flex: 1,
            child: Container(
            width: 200,     
            decoration: BoxDecoration(
              image: DecorationImage(image: AssetImage('assets/images/fanArts/boneQueen.jpg'),
              fit: BoxFit.cover
              )
            ),
          ),),
          Expanded(child: Container(
            width: 200,
            decoration: BoxDecoration(
              image: DecorationImage(image: AssetImage('assets/images/fanArts/chocolateDragon.jpg'),
              fit: BoxFit.cover
              )
            ),
          )),
        ],),

       Flexible(child:
        TroveNetwork(),
       ),
                
        Column(children: [
          Expanded(child: Container(
            width: 200,
            decoration: BoxDecoration(
              image: DecorationImage(image: AssetImage('assets/images/fanArts/AllDragons.jpg'),
              fit: BoxFit.cover
              )
            ),
          )),
        ],),
        ],)

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
      page = TroveNetwork();
      break;
    case 2:
      page = Text("profile");
      break;
    default:
      page = Text("TV");
      break;
  }
  return page;
}