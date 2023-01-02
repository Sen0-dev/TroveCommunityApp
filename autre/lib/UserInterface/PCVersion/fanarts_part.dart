// ignore_for_file: prefer_const_constructors, use_key_in_widget_constructors, library_private_types_in_public_api, annotate_overrides

import 'package:flutter/material.dart';

class LeftFanArt extends StatefulWidget {

  _LeftFanArtState createState() => _LeftFanArtState();
}

class _LeftFanArtState extends State<LeftFanArt> {
     @override
  Widget build(BuildContext context) {

    return Row(children: [ 
      Column(
                children: [
                Expanded(
                  flex: 1,
                  child: Container(
                  width: 200,     
                  decoration: BoxDecoration(
                    image: DecorationImage(image: AssetImage('assets/images/fanArts/boneQueen.jpg'),
                    fit: BoxFit.cover
                    )
                  ),
                ),),
                Expanded(child: Container(
                  width: 200,
                  decoration: BoxDecoration(
                    image: DecorationImage(image: AssetImage('assets/images/fanArts/chocolateDragon.jpg'),
                    fit: BoxFit.cover
                    )
                  ),
                )),
              ],),
              SizedBox(width: 20,)
    ]);
              
  }
}

class RightFanArt extends StatefulWidget {

  _RightFanArtState createState() => _RightFanArtState();
}

class _RightFanArtState extends State<RightFanArt> {
     @override
  Widget build(BuildContext context) {

    return Row(children: [
      SizedBox(width: 20,),
      Column(children: [
              Expanded(child: Container(
                width: 200,
                decoration: BoxDecoration(
                  image: DecorationImage(image: AssetImage('assets/images/fanArts/AllDragons.jpg'),
                  fit: BoxFit.cover
                  )
                ),
              )),
            ],),
      ]);
  }
}