// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class LoginInterface extends StatefulWidget {
  
  _LoginInterfaceState createState() => _LoginInterfaceState();
}



class _LoginInterfaceState extends State<LoginInterface> {

  var is_check = false;

  @override
  Widget build(BuildContext context) {
    return Container(
      //decoration: BoxDecoration(border: Border.all(color: Colors.red)) ,
      margin: EdgeInsets.only(left: 20, right: 20),
      // width: 250,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
    
      // Email Adress 
      TextFormField(
        decoration: InputDecoration(
          contentPadding: EdgeInsets.only(top: 10),
          prefixIcon: Icon(Icons.mail, color: Colors.black,),
          focusedBorder: OutlineInputBorder(
            borderSide: BorderSide(color: Colors.black, width: 2)),
          enabledBorder: OutlineInputBorder(
            borderSide: BorderSide(color: Colors.black, width: 2),
          ),
          fillColor: Colors.white,
          filled: true,
          labelText: 'E-mail',
          floatingLabelStyle: TextStyle(color: Colors.black),
        ),
        keyboardType: TextInputType.emailAddress,
      ),

      SizedBox(height: 30,),
      
      // Password
      TextFormField(
        obscureText: true,
        decoration: InputDecoration(
          contentPadding: EdgeInsets.only(top: 10, ),
          prefixIcon: Icon(Icons.lock, color: Colors.black,),
          focusedBorder: OutlineInputBorder(
            borderSide: BorderSide(color: Colors.black, width: 2)),
          enabledBorder: OutlineInputBorder(
            borderSide: BorderSide(color: Colors.black, width: 2)
          ),
          fillColor: Color.fromARGB(255, 255, 255, 255),
          filled: true,
          labelText: 'Password',
          floatingLabelStyle: TextStyle(color: Colors.black),
        ),
        keyboardType: TextInputType.visiblePassword,
      ),

      SizedBox(height: 20),

      // Stay connected
      Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
        Row(children: [
        Checkbox(
          value: is_check,
          checkColor: Colors.yellow,
          activeColor: Colors.black,
          side: BorderSide(color: Color.fromARGB(255, 177, 159, 41), width: 2),
          onChanged: (bool? value1){
            setState(() {
              //print(value1);
              is_check = value1!;
            });
        }),
        

        Text("Stay connected", style: GoogleFonts.basic(
          textStyle: TextStyle(
            fontSize: 14,
            fontWeight: FontWeight.bold,
            color: Color.fromARGB(255, 177, 159, 41), 
          )
        )),
        ]),

        MouseRegion(
          onEnter: (_) {
          },
          onExit: (_) {

          }, 
          child:
            Text("Forgot password ?", style: GoogleFonts.basic(
              textStyle: TextStyle(
                decoration: TextDecoration.underline,
                decorationColor: Colors.black,
                fontSize: 14,
                fontWeight: FontWeight.bold,
                color: Color.fromARGB(255, 177, 159, 41), 
              )
            ))
        )
      ]),

      SizedBox(height: 30),

      // Confirm
      ElevatedButton(
      style: ElevatedButton.styleFrom(
        side: BorderSide(
          color: Colors.black,
          width: 1.5,
          style: BorderStyle.solid
          ),
        backgroundColor: Color.fromARGB(255, 253, 222, 24), 
        elevation: 0,
        fixedSize: Size(120, 50),
      ),
      onPressed: activate,
      child: Text("Confirm", style: GoogleFonts.orbitron(
      textStyle: TextStyle(
        fontWeight: FontWeight.bold,
        color: Colors.black, 
        fontSize:17,
      )
      ))
    ) ]));
  } 
}