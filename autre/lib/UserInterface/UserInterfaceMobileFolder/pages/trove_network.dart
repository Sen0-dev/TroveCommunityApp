// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:autre/UserInterface/bonus_days.dart';

class TroveNetwork extends StatefulWidget {

  _TroveNetworkState createState() => _TroveNetworkState();
}

class _TroveNetworkState extends State<TroveNetwork> {
     @override
  Widget build(BuildContext context) {

    return Center(child:
      Container(
      //decoration: BoxDecoration(border: Border.symmetric(vertical: BorderSide(color: Colors.black), horizontal: BorderSide.none), ),      
      child: 
        Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          
          children: [
            Container(
              //decoration: BoxDecoration( color: Color.fromARGB(207, 46, 46, 46)),
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
                      Container(height: 190, width: 384, child: Text("Global Chat"),color: Color.fromARGB(255, 79, 94, 211)),
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
              borderRadius: BorderRadius.all(Radius.circular(5.5)),
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

                    BonusDays(bonus: 'assets/images/bonusDays/booty.png', displayTime: true),
                    SizedBox(width: 2),
                    BonusDays(bonus: 'assets/images/bonusDays/gathering.png', displayTime: false),
                    SizedBox(width: 2,),
                    BonusDays(bonus: 'assets/images/bonusDays/gems.png', displayTime: false),
                    SizedBox(width: 2),
                    BonusDays(bonus: 'assets/images/bonusDays/adventure.png', displayTime: false),
                    SizedBox(width: 2,),
                    BonusDays(bonus: 'assets/images/bonusDays/dragons.png', displayTime: false),
                    SizedBox(width: 2),
                    BonusDays(bonus: 'assets/images/bonusDays/xp.png', displayTime: false),
                    SizedBox(width: 2,),
                    BonusDays(bonus: 'assets/images/bonusDays/delves.png', displayTime: false),
                  ],
                ),
              )           
          ),
                SizedBox(height: 1,),
          ],
        ),));
      }
}