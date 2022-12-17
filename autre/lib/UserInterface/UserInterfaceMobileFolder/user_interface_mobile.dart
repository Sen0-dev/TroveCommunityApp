// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, sort_child_properties_last

import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:autre/UserInterface/bonus_days.dart';


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
          backgroundColor: Colors.transparent,
          animationDuration: Duration(milliseconds: 350),
          height: 60,
          items: [
            Icon(Icons.message_outlined, size: 30),
            Icon(Icons.square_outlined, size: 30),
            Icon(Icons.person_outline, size: 30),
            Icon(Icons.settings_outlined, size: 30),
          ]
        ),
        /*appBar: AppBar(
          elevation: 0,
          backgroundColor:Color.fromARGB(255, 249, 216, 6),
          title: 
          Row(children: [
            Icon(Icons.circle, color: Colors.green,),
            Text("Online", style: GoogleFonts.basic(textStyle: TextStyle(color: Colors.black)),),

            SizedBox(width: 5,),

            Icon(Icons.circle, color: Colors.grey,),
            Text("Members", style: GoogleFonts.basic(textStyle: TextStyle(color: Colors.black)),),
          ]),
        ),*/
        
        body:
        Container(
          width: 1950,
          //decoration: BoxDecoration(border: Border.all(color: Colors.black)),
          child: 
        Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          
          children: [
            Container(          
              //decoration: BoxDecoration(border: Border.all(color: Colors.yellow, width: 1)),
              height: 440,
              constraints: BoxConstraints(maxWidth: 780, minWidth: 180),
              child:
                SingleChildScrollView(             
                scrollDirection: Axis.vertical,
                child:  
                  Wrap(
                    spacing: 4,
                    runSpacing: 5,
                    direction: Axis.horizontal,
                    children: [
                      Container(height: 190, width: 384, child: Text("Global Chat"),color: Color.fromARGB(197, 93, 192, 238)),
                      Container(height: 190, width: 190, child: Text("Alert Dragons"),color: Colors.red),
                      Container(height: 190, width: 190, child: Text("Shadow Tower"),color: Colors.purpleAccent),
                      Container(height: 190, width: 190, child: Text("Pinata Party"),color: Colors.yellow,),
                      Container(height: 190, width: 190, child: Text("Dongeons"),color: Colors.blueGrey),
                      Container(height: 190, width: 190, child: Text("Delves"),color: Colors.orange),
                      Container(height: 190, width: 190, child: Text("Trade"),color: Colors.brown),
                    ],
                  )
                ),
            ),
            

            

            // Bonus Days
          Container(
            width: 870,
            constraints: BoxConstraints(maxHeight: 150),
            decoration:
            BoxDecoration(
              color: Color.fromARGB(241, 46, 46, 46),
              border: Border.all(
                width: 2,
                color: Color.fromARGB(241, 46, 46, 46), // 241, 46, 46, 46 
              )
            ),
                                      
            child:
              SingleChildScrollView(        
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: <Widget>[

                    BonusDays(bonus: 'assets/images/bonusDays/booty.png', today: true),
                    SizedBox(width: 2),
                    BonusDays(bonus: 'assets/images/bonusDays/gathering.png', today: false),
                    SizedBox(width: 2,),
                    BonusDays(bonus: 'assets/images/bonusDays/gems.png', today: false),
                    SizedBox(width: 2),
                    BonusDays(bonus: 'assets/images/bonusDays/adventure.png', today: false),
                    SizedBox(width: 2,),
                    BonusDays(bonus: 'assets/images/bonusDays/dragons.png', today: false),
                    SizedBox(width: 2),
                    BonusDays(bonus: 'assets/images/bonusDays/xp.png', today: false),
                    SizedBox(width: 2,),
                    BonusDays(bonus: 'assets/images/bonusDays/booty.png', today: false),
                  ],
                ),
              )           
          ),
                SizedBox(),
          ],
        ),),
      ),
    );
  }
}