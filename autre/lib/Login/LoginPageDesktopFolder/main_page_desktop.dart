// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, prefer_interpolation_to_compose_strings

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'signin_desktop.dart';
import 'signup_desktop.dart';


class MainPageDesktop extends StatefulWidget {

  _MainPageDesktopState createState() => _MainPageDesktopState();
}

// MAIN
class _MainPageDesktopState extends State<MainPageDesktop> {
  
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

Widget displayInterface = SigninDesktop();
  
  bool boolInterface = false;

  void loginInterface() {
    setState(() {
    displayInterface = SigninDesktop();
    boolInterface = false; 
    });

  }
  void signupInterface() {
    setState(() {
    displayInterface = SignupDesktop();      
    boolInterface = true; 
    });

  }

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      backgroundColor: Color.fromARGB(255, 85, 150, 248), // 255, 85, 150, 248
      body: Center(
          child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            //Text("DESKTOP"),

            //Text("Width:" + MediaQuery.of(context).size.width .toString()),
            //Text("Height:" + MediaQuery.of(context).size.height.toString()),
            
            Container(  
          //decoration: 
          //BoxDecoration(color: Colors.pink),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                
                // Trove              
                Text("Trove", textAlign: TextAlign.start,style: GoogleFonts.pressStart2p(
                  textStyle: TextStyle(
                    color:Color.fromARGB(255, 253, 222, 24), 
                    fontSize: 77, 
                    shadows: [Shadow(offset: Offset(1,5))]))),
                
                // Comunnity Container
                Container(
                  margin: EdgeInsets.only(left: 55) ,
                  child:
                  Text("Community", style: GoogleFonts.orbitron(
                    textStyle: TextStyle(
                      color: Color.fromARGB(255, 255, 0, 0), 
                      fontSize:54,
                      letterSpacing: 1,
                      shadows: [
                      Shadow( // bottomLeft
                        offset: Offset(-1.5, -1.5),
                        color: Colors.black
                      ),
                      Shadow( // bottomRight
                        offset: Offset(1.5, -1.5),
                        color: Colors.red
                      ),
                      Shadow( // topRight
                        offset: Offset(1.5, 1.5),
                        color: Colors.black
                      ),
                      Shadow( // topLeft
                        offset: Offset(-1.5, 1.5),
                        color: Colors.black
                      ),
                    ]
                    ),
                  )),
                )                
            ]
          )
        ),
          
        // Space between title Container and Input Container
            
          // Login Container
          Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
        Center(child: 
          Container(
          height: 390,
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
              color: Color.fromARGB(255, 249, 216, 6),
              borderRadius: BorderRadius.circular(12),
            ),
            child: Form(child:
            Column(children: <Widget>[

              // Row Login/Sign up Button
              Row(children: [        
                
                // Login Button
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: (boolInterface == false) ? Color.fromARGB(255, 226, 201, 12) : Color.fromARGB(255, 249, 216, 6) ,//Color.fromARGB(255, 226, 201, 12),
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
                  backgroundColor: (boolInterface == true) ? Color.fromARGB(255, 226, 201, 12) : Color.fromARGB(255, 249, 216, 6),
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
        )],
        )         
      ]),)
    );
  }
}