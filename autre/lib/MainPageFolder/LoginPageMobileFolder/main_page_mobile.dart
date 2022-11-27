// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, prefer_interpolation_to_compose_strings

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'signup_mobile.dart';
import 'signin_mobile.dart';


class MainPageMobile extends StatefulWidget {

  _MainPageMobileState createState() => _MainPageMobileState();
}

// MAIN
class _MainPageMobileState extends State<MainPageMobile> {
  
  @override
  Widget build(BuildContext context) {


    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Home()
    );
  }
}


// HOME Class
class Home extends StatefulWidget {

  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {

Widget displayInterface = SigninMobile();
  
  bool boolInterface = false;

  void loginInterface() {
    setState(() {
    displayInterface = SigninMobile();
    boolInterface = false; 
    });

  }
  void signupInterface() {
    setState(() {
    displayInterface = SignupMobile();      
    boolInterface = true; 
    });

  }

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      backgroundColor: Color.fromARGB(255, 85, 150, 248), // 255, 85, 150, 248 test: 255, 83, 152, 255
      body: Center(
          child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
           // Text("MOBILE"),
            
            // Text("Width:" + MediaQuery.of(context).size.width .toString()),
            // Text("Height:" + MediaQuery.of(context).size.height.toString()),
            
            Container(
              //decoration: BoxDecoration(color: Colors.pink),
              child: Column(              
              children: [
              
              // Trove              
              Text("Trove", textAlign: TextAlign.start,style: GoogleFonts.pressStart2p(
                textStyle: TextStyle(
                  color:Color.fromARGB(255, 253, 222, 24), 
                  fontSize:60, 
                  shadows: [Shadow(offset: Offset(1,5))]))),
              
              // Comunnity Container
              Container(
                margin: EdgeInsets.only(left: 55) ,
                child:
                Text("Community", style: GoogleFonts.orbitron(
                  textStyle: TextStyle(
                    //fontWeight: FontWeight.bold,
                    color: Color.fromARGB(255, 255, 0, 0), 
                    fontSize:44,
                  ),
                )),
              )
          ])),

          // Space between title Container and Input Container
           SizedBox(height: 50,),
          
           // Login Container 
           Container(
            width: 500,
              padding: EdgeInsets.only(bottom: 25),
              margin: EdgeInsets.all(28),
              decoration: BoxDecoration(
                boxShadow: [
                  BoxShadow(
                    color: Color.fromARGB(57, 4, 2, 2), 
                    blurRadius: 25.0, 
                    offset: Offset(0, 0)
                  )
                ],
                color: Color.fromARGB(255, 253, 222, 24),
                borderRadius: BorderRadius.circular(12),
              ),
              child: Form(child:
              Column(children: <Widget>[

                // Row Login/Sign up Button
                Row(children: [
                  
                  
                  // Login Button
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    primary: (boolInterface == false) ? Color.fromARGB(255, 226, 201, 12) : Color.fromARGB(255, 253, 222, 24) ,//Color.fromARGB(255, 226, 201, 12),
                    elevation: 0,
                    fixedSize: Size(110, 50),
                  ),
                  onPressed: loginInterface,
                  child: Text("Login", style: GoogleFonts.orbitron(
                  textStyle: TextStyle(
                    fontWeight: FontWeight.bold,
                    color:  Color.fromARGB(255, 177, 159, 41),
                    fontSize:25,
                  )
                  ))
                ),

                // Sign up button
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    primary: (boolInterface == true) ? Color.fromARGB(255, 226, 201, 12) : Color.fromARGB(255, 253, 222, 24),
                    elevation: 0,
                    fixedSize: Size(130, 50),
                  ),
                  onPressed: signupInterface,
                  child: Text("Signup", style: GoogleFonts.orbitron(
                  textStyle: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Color.fromARGB(255, 177, 159, 41), 
                    fontSize:25,
                  )
                  ))
                )

                ],),

                const SizedBox(height: 40,),

                // Login/Signup Interface

                displayInterface      
                // interface

              ],)
              )
            ), 
          ],
        )          
      )
    );
  }
}