// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:autre/UserInterface/UserInterfaceMobileFolder/pages/trove_network.dart';
import 'package:autre/UserInterface/PCVersion/fanarts_part.dart';

class TroveNetworkPC extends StatefulWidget {

  _TroveNetworkPCState createState() => _TroveNetworkPCState();
}

class _TroveNetworkPCState extends State<TroveNetworkPC> {

     @override
  Widget build(BuildContext context) {

    return Row(
          children: [
            MediaQuery.of(context).size.width >= 992 ? LeftFanArt() :  SizedBox(width: 0,),

            Flexible(child:
            TroveNetwork(),
            ),
          
            MediaQuery.of(context).size.width >= 992 ? RightFanArt() :  SizedBox(width: 0,),
            
          ],);
  }
}