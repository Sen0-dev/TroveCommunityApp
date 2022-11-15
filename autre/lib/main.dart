// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'login_interface.dart';
import 'signup_interface.dart';

void main() {
  runApp(TestApp());
}

class TestApp extends StatefulWidget {

  _TestAppState createState() => _TestAppState();
}


class _TestAppState extends State<TestApp> {
  
  Widget displayInterface = LoginInterface();

  void toogleInterface1() {
    setState(() {
    displayInterface = LoginInterface(); 
    });

  }
  void toogleInterface2() {
    setState(() {
    displayInterface = SignupInterface();      
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      
      home: Scaffold(
      backgroundColor: Color.fromARGB(255, 85, 150, 248), // 255, 85, 150, 248 test: 255, 83, 152, 255
      body: Center(
          child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
          
            Column(children: [

              // Trove
              Text("Trove", textAlign: TextAlign.start,style: GoogleFonts.pressStart2p(
                textStyle: TextStyle(
                  color:Color.fromARGB(255, 253, 222, 24), 
                  fontSize:64, 
                  shadows: [Shadow(offset: Offset(1,5))]))),

              // Comunnity Container
              Container(margin: EdgeInsets.only(left: 55) ,child:
                Text("Community", style: GoogleFonts.orbitron(
                  textStyle: TextStyle(
                    // fontWeight: FontWeight.bold,
                    color: Color.fromARGB(255, 255, 0, 0), 
                    fontSize:44,
                  ),
                )),
              )
            ]),

          // Space between title Container and Input Container
           SizedBox(height: 70,),

           // Login Container 
           Container(
              padding: EdgeInsets.only(bottom: 25),
              margin: EdgeInsets.all(28),
              decoration: BoxDecoration(
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
                    primary: Color.fromARGB(255, 226, 201, 12),
                    elevation: 0,
                    fixedSize: Size(110, 50),
                  ),
                  onPressed: toogleInterface1,
                  child: Text("Login", style: GoogleFonts.orbitron(
                  textStyle: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Color.fromARGB(255, 177, 159, 41), 
                    fontSize:25,
                  )
                  ))
                ),

                // Sign up button
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    primary: Color.fromARGB(255, 253, 222, 24),
                    elevation: 0,
                    fixedSize: Size(130, 50),
                  ),
                  onPressed: toogleInterface2,
                  child: Text("Signup", style: GoogleFonts.orbitron(
                  textStyle: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Color.fromARGB(255, 177, 159, 41), 
                    fontSize:25,
                  )
                  ))
                )

                ],),

                SizedBox(height: 40,),

                // Login/Signup Interface
                displayInterface
                
                // interface


              ],)
              )
            ), 
          ],
        )
            
      )
      )
    );
  }
}
