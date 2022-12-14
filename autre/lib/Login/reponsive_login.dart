// ignore_for_file: use_key_in_widget_constructors, annotate_overrides, library_private_types_in_public_api

import 'package:flutter/material.dart';
import 'package:autre/Login/LoginPageDesktopFolder/main_page_desktop.dart';
import 'package:autre/Login/LoginPageMobileFolder/main_page_mobile.dart';
import 'package:autre/responsive.dart';

class ResponsiveLogin extends StatefulWidget {

  _ResponsiveLoginState createState() => _ResponsiveLoginState();
}

// MAIN
class _ResponsiveLoginState extends State<ResponsiveLogin> {
  
  @override
  Widget build(BuildContext context) {

    return ResponsiveLayout(
        mobileBody: MainPageMobile(),
        desktopBody: MainPageDesktop(),
      );
  }
}