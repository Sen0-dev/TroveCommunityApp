// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, prefer_interpolation_to_compose_strings, library_private_types_in_public_api

import 'package:autre/MainPageFolder/LoginPageDesktopFolder/main_page_desktop.dart';
import 'package:autre/MainPageFolder/LoginPageMobileFolder/main_page_mobile.dart';
import 'package:autre/responsive.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';



void main() {
  // set orientation device
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setPreferredOrientations(
    [DeviceOrientation.portraitUp, DeviceOrientation.portraitDown]);
  
  runApp(TestApp());
}

class TestApp extends StatefulWidget {

  _TestAppState createState() => _TestAppState();
}

// MAIN
class _TestAppState extends State<TestApp> {
  
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
  @override
  Widget build(BuildContext context) {
    
    return ResponsiveLayout(
        mobileBody: MainPageMobile(),
        desktopBody: MainPageDesktop(),
      );
  }
}