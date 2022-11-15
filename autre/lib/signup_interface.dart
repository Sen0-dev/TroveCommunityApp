// ignore_for_file: prefer_const_constructors, avoid_unnecessary_containers, annotate_overrides, library_private_types_in_public_api, use_key_in_widget_constructors

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
//import 'package:google_fonts/google_fonts.dart';

class SignupInterface extends StatefulWidget {
  
  _SignupInterfaceState createState() => _SignupInterfaceState();
}

class _SignupInterfaceState extends State<SignupInterface> {

  TextEditingController datee = TextEditingController();
  // ignore: avoid_init_to_null
  int? aNullableInt = null;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(),
      margin: EdgeInsets.only(left: 20, right: 20),
      // width: 250,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
    
        Row(           
          children: [
          Expanded(     
            child:
            // Username 
            TextFormField(
              decoration: InputDecoration(
                contentPadding: EdgeInsets.only(top: 10),
                prefixIcon: Icon(Icons.person, color: Colors.black,),
                enabledBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.black, width: 2)
                ),
                fillColor: Colors.white,
                filled: true,
                labelText: 'Username'
              ),
            ),
          ),

          SizedBox(width: 10,),
          
          // Birth date
          Expanded(
            child:
            TextField(
              decoration: InputDecoration(
                contentPadding: EdgeInsets.only(top: 10),
                prefixIcon: Icon(Icons.calendar_month, color: Colors.black,),
                enabledBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.black, width: 2)
                ),
                fillColor: Colors.white,
                filled: true,
                labelText: 'Birth date'
              ),
              controller: datee,
              onTap: () async {
                DateTime? pickeddate = await showDatePicker(
                  context: context, 
                  initialDate: DateTime.now(), 
                  firstDate: DateTime(2000), 
                  lastDate: DateTime(2100)
                );

                /*if (pickeddate != null) {
                  setState(() {
                    datee.text = DateFormat.yyyyMMdd().format(pickeddate);
                  });
                }*/
              },
            ),
          )
          ]
        ),
      
      
      SizedBox(height: 30,),
      
      
      // Email Adress 
      TextFormField(
        decoration: InputDecoration(
          contentPadding: EdgeInsets.only(top: 10),
          prefixIcon: Icon(Icons.mail, color: Colors.black,),
          enabledBorder: OutlineInputBorder(
            borderSide: BorderSide(color: Colors.black, width: 2)
          ),
          fillColor: Colors.white,
          filled: true,
          labelText: 'E-mail'
        ),
        keyboardType: TextInputType.emailAddress,
      ),

      SizedBox(height: 15,),
      
      // Password
      TextFormField(
        obscureText: true,
        decoration: InputDecoration(
          contentPadding: EdgeInsets.only(top: 10, ),
          prefixIcon: Icon(Icons.lock, color: Colors.black,),
          enabledBorder: OutlineInputBorder(
            borderSide: BorderSide(color: Colors.black, width: 2)
          ),
          fillColor: Color.fromARGB(255, 255, 255, 255),
          filled: true,
          labelText: 'Password'
        ),
        keyboardType: TextInputType.visiblePassword,
      ),


      SizedBox(height: 30),

      // LETS GOOO!!
      ElevatedButton(
      style: ElevatedButton.styleFrom(
        side: BorderSide(
          color: Colors.black,
          width: 1.5,
          style: BorderStyle.solid
          ),
        primary: Color.fromARGB(255, 253, 222, 24), 
        elevation: 0,
        fixedSize: Size(175, 50), //120, 50
      ),
      onPressed: activate,
      child: Text("LETS GOOO!!", style: GoogleFonts.orbitron(
      textStyle: TextStyle(
        fontWeight: FontWeight.bold,
        color: Colors.black, 
        fontSize:17,
      )
      ))
    ) ])
    );
  }
}