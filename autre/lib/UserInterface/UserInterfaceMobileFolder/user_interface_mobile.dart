// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, sort_child_properties_last

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
        
        body:
        Container(
          width: 1950,
          child: 
        Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          
          children: [
            Container(          
              //decoration: BoxDecoration(border: Border.all(color: Colors.yellow, width: 3)),
              height: 435,
              //width: 210,
              constraints: BoxConstraints(maxWidth: 610),
              child:
                SingleChildScrollView(               
                scrollDirection: Axis.vertical,
                child:  
                  Wrap(
                    spacing: 6,
                    runSpacing: 5,
                    direction: Axis.horizontal,
                    children: [
                      Container(height: 190, width: 190,child: Text("Global Chat"),color: Color.fromARGB(197, 93, 192, 238)),
                      Container(height: 190, width: 190,child: Text("Alert Dragons"),color: Colors.red),
                      Container(height: 190, width: 190,child: Text("Shadow Tower"),color: Colors.purpleAccent),
                      Container(height: 190, width: 190,child: Text("Pinata Party"),color: Colors.yellow,),
                      Container(height: 190, width: 190,child: Text("Dongeons"),color: Colors.blueGrey),
                      Container(height: 190, width: 190,child: Text("Delves"),color: Colors.orange),
                    ],
                  )
                ),
            ),
            

            SizedBox(height: 5,),

            // Bonus Days
          Container(
            width: 800,
            constraints: BoxConstraints(maxHeight: 150),
            decoration:
            BoxDecoration(
              color: Color.fromARGB(241, 46, 46, 46),
              border: Border.all(
                color: Color.fromARGB(241, 46, 46, 46), // 255, 46, 46, 46 
                width: 3
              ),
            ),                          
            child:
              SingleChildScrollView(               
                scrollDirection: Axis.horizontal,
                child:  Row(

                  children: <Widget>[
                    Image.asset('assets/images/bonusDays/xp.png',),
                    SizedBox(width: 2,),
                    Image.asset('assets/images/bonusDays/booty.png'),
                    SizedBox(width: 2,),
                    Image.asset('assets/images/bonusDays/dragons.png'),
                    SizedBox(width: 2,),
                    Image.asset('assets/images/bonusDays/fouilles.png'),
                    SizedBox(width: 2,),
                    Image.asset('assets/images/bonusDays/gems.png'),
                    SizedBox(width: 2,),
                    Image.asset('assets/images/bonusDays/adventure.png')   
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