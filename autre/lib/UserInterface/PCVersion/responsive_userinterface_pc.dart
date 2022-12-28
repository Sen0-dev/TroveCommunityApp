// ignore_for_file: use_key_in_widget_constructors, annotate_overrides, library_private_types_in_public_api

import 'package:autre/UserInterface/PCVersion/userinterface_desktopsize_pc.dart';
import 'package:flutter/material.dart';
import 'package:autre/UserInterface/UserInterfaceMobileFolder/user_interface.dart';
import 'package:autre/UserInterface/UserInterfaceDesktopFolder/userinterface_desktop.dart';
import 'package:autre/responsive.dart';

class ResponsiveUserInterfacePC extends StatefulWidget {

  _ResponsiveLoginState createState() => _ResponsiveLoginState();
}

// MAIN
class _ResponsiveLoginState extends State<ResponsiveUserInterfacePC> {
  
  @override
  Widget build(BuildContext context) {

    return ResponsiveLayout(
        mobileBody: UserInterfaceMobile(),
        desktopBody: UserInterfacePC(),
      );
  }
}