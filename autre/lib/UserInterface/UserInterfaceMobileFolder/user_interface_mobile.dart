// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:curved_navigation_bar/curved_navigation_bar.dart';
//import 'package:google_fonts/google_fonts.dart';


class UserInterfaceMobile extends StatefulWidget {

  _UserInterfaceMobileState createState() => _UserInterfaceMobileState();
}

class _UserInterfaceMobileState extends State<UserInterfaceMobile> {

  @override
  Widget build(BuildContext context) {  
    
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Color.fromARGB(255, 85, 150, 248),
        bottomNavigationBar: CurvedNavigationBar(
          color:Color.fromARGB(255, 249, 216, 6), 
          backgroundColor: Color.fromARGB(255, 85, 150, 248),
          animationDuration: Duration(milliseconds: 350),
          height: 60,
          //index: 1,
          items: [
            Icon(Icons.message, size: 30, semanticLabel: "Test",),
            Icon(Icons.square, size: 30),
            Icon(Icons.person, size: 30),
          ]
        ),
        
        body: Column(
          
          children: [
  
            // Bonus Days
            Container(
                constraints: BoxConstraints(maxHeight: 150),
                decoration: BoxDecoration(border: Border.all(color: Colors.white, width: 2)),
                child:
                  SingleChildScrollView(
                    
                    scrollDirection: Axis.horizontal,
                    child:  Row(
                        children: <Widget>[
                          Image.asset('assets/images/bonusDays/xp.png',),
                          Image.asset('assets/images/bonusDays/booty.png'),
                          Image.asset('assets/images/bonusDays/dragons.png'),
                          Image.asset('assets/images/bonusDays/fouilles.png')   
                        ],
                    ),
                  )           
              )
          ],
        ),
      ),
    );

  }
}