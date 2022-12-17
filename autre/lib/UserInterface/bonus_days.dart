// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';


class BonusDays extends StatelessWidget {

  String bonus;
  bool today;

  BonusDays({required this.bonus,  required this.today});

  @override
  Widget build(BuildContext context) {
    return Container(
                      width: 190,
                      height: 190,
                      decoration: BoxDecoration(    
                        image: DecorationImage(
                          image: AssetImage(bonus),
                          fit: BoxFit.cover
                        )
                      ),
                      child:  today?
                      Row(                
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [                      
                          Container(
                            padding: EdgeInsets.symmetric(horizontal: 28),
                            width: 190,
                          color: Color.fromARGB(213, 46, 46, 46), // 213, 46, 46, 46                        
                          child: Text( 
                            style: GoogleFonts.basic(textStyle: TextStyle(color: Colors.white, wordSpacing: 4)),
                            "Left: 15h 09m 56s",
                          ),
                          )
                        ]
                      ): 
                      Text("")
    );
                    
  }
}