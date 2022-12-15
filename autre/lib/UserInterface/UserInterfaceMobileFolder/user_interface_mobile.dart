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
          backgroundColor: Color.fromARGB(255, 85, 150, 248),
          animationDuration: Duration(milliseconds: 350),
          height: 60,
          items: [
            Icon(Icons.message, size: 30),
            Icon(Icons.square, size: 30),
            Icon(Icons.person, size: 30),
            Icon(Icons.settings, size: 30),
          ]
        ),
        
        body:  
        Container(
          width: 1950,
          child: 
        Column(
          
          crossAxisAlignment: CrossAxisAlignment.center,
          
          children: [
            Container(
              //decoration: BoxDecoration(border: Border.all(color: Colors.black)),
              height: 435,
              width: 525,
              child:
                GridView.count(
                  crossAxisCount: 2,
                  crossAxisSpacing: 20,
                  mainAxisSpacing: 10,
                
                  children: [
                    Container(child: Text("Global Chat"),color: Colors.blue),
                    Container(child: Text("Alert Dragons"),color: Colors.red),
                    Container(child: Text("Shadow Tower"),color: Colors.purpleAccent),
                    Container(child: Text("Pinata Party"),color: Colors.yellow,),
                    Container(child: Text("Dongeons"),color: Colors.grey),
                    Container(child: Text("Delves"),color: Colors.orange),
                  ],
                )
            ),

            SizedBox(height: 30,),

            // Bonus Days
           Container(
            width: 850,
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
                          Image.asset('assets/images/bonusDays/fouilles.png'),
                          Image.asset('assets/images/bonusDays/gems.png'),
                          Image.asset('assets/images/bonusDays/adventure.png')   
                        ],
                    ),
                  )           
              )
          ],
        ),),
      ),
    );

  }
}