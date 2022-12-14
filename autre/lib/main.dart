// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, prefer_interpolation_to_compose_strings, library_private_types_in_public_api

import 'router.dart';
import 'package:go_router/go_router.dart';
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
  //const TestApp({super.key});

  //@override
 // State<Page1> createState() => _Page1State();
  _TestAppState createState() => _TestAppState();
}

class _TestAppState extends State<TestApp> {
  
  @override
  Widget build(BuildContext context) {

    return MaterialApp.router(
      debugShowCheckedModeBanner: false,
     routerConfig: router,
     );
  }
}