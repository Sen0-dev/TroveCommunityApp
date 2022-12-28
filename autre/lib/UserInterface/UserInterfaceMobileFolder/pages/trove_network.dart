// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:autre/UserInterface/bonus_days.dart';

class TroveNetwork extends StatefulWidget {

  _TroveNetworkState createState() => _TroveNetworkState();
}

class _TroveNetworkState extends State<TroveNetwork> {
     @override
  Widget build(BuildContext context) {

    return Center(child:
      Container(
      //padding: EdgeInsets.symmetric(horizontal: 4),
      decoration: BoxDecoration(border: Border.symmetric(vertical: BorderSide(color: Colors.black), horizontal: BorderSide.none), ),
      
      child: 
        Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          
          children: [
            Container(
              //decoration: BoxDecoration( color: Color.fromARGB(241, 46, 46, 46)),
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
                      Container(height: 189, width: 382, child: Text("Global Chat"),color: Color.fromARGB(197, 93, 192, 238)),
                      Container(height: 189, width: 189, child: Text("Alert Dragons"),color: Colors.red),
                      Container(height: 189, width: 189, child: Text("Shadow Tower"),color: Colors.purpleAccent),
                      Container(height: 189, width: 189, child: Text("Pinata Party"),color: Colors.yellow,),
                      Container(height: 189, width: 189, child: Text("Dongeons"),color: Colors.blueGrey),
                      Container(height: 189, width: 189, child: Text("Delves"),color: Colors.orange),
                      Container(height: 189, width: 189, child: Text("Trade"),color: Colors.brown),
                      Container(height: 189, width: 189, child: Text("Recruitement Club"),color: Colors.teal
                      ),
                    ],
                  )
                ),
            ),
            

            // Bonus Days
          Container(
            width: 790,
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
                SizedBox(height: 1,),
          ],
        ),));
      }
}