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
                padding: EdgeInsets.all(7),
                width: 310,
                height: 350,
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.white, width: 2),
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
                        image: DecorationImage(
                          image: AssetImage('assets/images/Vanguardian_Class.webp'),
                          fit: BoxFit.cover
                        )
                      ),
                    ),

                    SizedBox(width: 40),

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

                  SizedBox(height: 8),

                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [ 
                    
                      Container(
                        height: 50,
                        width: 142,
                        child:
                          Expanded(child:
                              TextFormField(
                                initialValue: "Xx_Killer_xX",
                                decoration: InputDecoration(                      
                                  focusedBorder: OutlineInputBorder(
                                    borderSide: BorderSide.none),                               
                                  enabledBorder: InputBorder.none ,
                                  suffixIcon: Icon(Icons.create, size: 16,),
                                ),
                                style: TextStyle(fontSize: 13.5,),
                              )
                          ),),

                          SizedBox(width: 20 ),

                          InkWell(
                                onTap: () {
                                  // Do something when the button is tapped
                                },
                                child: Icon(Icons.help_outline, color: Color.fromARGB(142, 0, 0, 0),),
                          )
                  ]),

                  SizedBox(height: 20),

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
                    runAlignment: WrapAlignment.center,
                    spacing: 10,
                    runSpacing: 5,
                    children: [
                      
                      ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Color.fromARGB(255, 226, 201, 12),
                          elevation: 0,
                        ),
                        onPressed: null,
                        child: Text("PCC", style: GoogleFonts.basic())
                      ),
                      ElevatedButton(onPressed: null, child: Text("Switch")),
                      ElevatedButton(onPressed: null, child: Text("PS4")),
                      ElevatedButton(onPressed: null, child: Text("Xbox")),
                    ]
                  ),
                  


                ])
              )
            ]
          )
    );
  }
}