// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Profile extends StatefulWidget {

  _ProfileState createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
     @override
  Widget build(BuildContext context) {

    return Center(child:  Column(
      mainAxisAlignment: MainAxisAlignment.center,
      
            children: [
              
              // Photo, username, the one in game
              Container(
                padding: EdgeInsets.all(15),
                width: 340,
                height: 350,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(10)),
                  border: Border.all(color: Colors.white, width: 2, ),
                ),
                child: Column(
                children: [
                  Row(children: [

                    // Photo
                    Container(
                      width: 65,
                      height: 65,
                      decoration: BoxDecoration(
                        border: Border.all(color: Colors.white, width: 1),
                        borderRadius: BorderRadius.all(Radius.circular(30)),
                        image: DecorationImage(
                          image: AssetImage('assets/images/Vanguardian_Class.webp'),
                          fit: BoxFit.cover
                        )
                      ),
                    ),

                    SizedBox(width: 45),

                    // Username
                    Expanded(child:
                    TextFormField(
                      decoration: InputDecoration(
                        contentPadding: EdgeInsets.symmetric(horizontal: 5),
                        focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.white, width: 2)),
                          enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Color.fromARGB(142, 0, 0, 0), width: 2),
                        ),
                        fillColor: Color.fromARGB(35, 0, 0, 0),
                        filled: true,
                        
                        labelText: 'Username',
                        floatingLabelStyle: TextStyle(color: Colors.white),
                      ),
                    )),

                    SizedBox(width: 15,),

                    InkWell(
                      onTap: () {
                        // Do something when the button is tapped
                      },
                      child: Icon(Icons.help_outline, color: Color.fromARGB(142, 0, 0, 0)),
                    ),
                  ]),

                  SizedBox(height: 11),

                  // Row game username
                  Row(
                    children: [                     
                      Expanded(child: 
                        TextFormField(
                          initialValue: "Xx_Killer_xX",
                          textDirection: TextDirection.rtl,
                          decoration: InputDecoration(
                            contentPadding: EdgeInsets.symmetric(horizontal: 5),
                            focusedBorder: OutlineInputBorder(
                              borderSide: BorderSide.none),
                              enabledBorder: OutlineInputBorder(
                              borderSide: BorderSide.none,
                            ),
                            suffixIcon: Icon(Icons.create, size: 17,),
                            floatingLabelStyle: TextStyle(color: Colors.white),
                          ),
                      ),
                    ),                      

                    SizedBox(width: 15,),

                    InkWell(
                      onTap: () {
                        // Do something when the button is tapped
                      },
                      child: Icon(Icons.help_outline, color: Color.fromARGB(142, 0, 0, 0)),
                    ),
                          
                  ]),

                  SizedBox(height: 35),

                  Row(children: [

                    Expanded(child:
                      Divider(color: Colors.black,)
                    ),

                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 5),
                      child: Text("Platform", textAlign: TextAlign.start,style: GoogleFonts.basic(
                      textStyle: TextStyle(
                        fontSize: 18,
                      ))),
                    ),

                    Expanded(child:
                      Divider(color: Colors.black,)
                    ),
                  ],),

                  SizedBox(height: 25,),

                  Wrap(
                    spacing: 10,
                    runSpacing: 8,
                    children: [
                      ElevatedButton(onPressed: null, child: Text("PC"), style: ElevatedButton.styleFrom(fixedSize: Size(75, 35)),),
                      ElevatedButton(onPressed: null, child: Text("Switch"), style: ElevatedButton.styleFrom(fixedSize: Size(85, 35)),),
                      ElevatedButton(onPressed: null, child: Text("PS4"), style: ElevatedButton.styleFrom(fixedSize: Size(80, 35)),),
                      ElevatedButton(onPressed: null, child: Text("Xbox"), style: ElevatedButton.styleFrom(fixedSize: Size(85, 35)),),

                    ]
                  ),




                ])
              )
            ]
          )
    );
  }
}