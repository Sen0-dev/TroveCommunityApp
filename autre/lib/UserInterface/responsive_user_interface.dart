// ignore_for_file: use_key_in_widget_constructors, annotate_overrides, library_private_types_in_public_api

import 'package:flutter/material.dart';
import 'package:autre/UserInterface/UserInterfaceMobileFolder/user_interface_mobile.dart';
import 'package:autre/UserInterface/UserInterfaceDesktopFolder/user_interface_desktop.dart';
import 'package:autre/responsive.dart';

class ResponsiveUserInterface extends StatefulWidget {

  _ResponsiveLoginState createState() => _ResponsiveLoginState();
}

// MAIN
class _ResponsiveLoginState extends State<ResponsiveUserInterface> {
  
  @override
  Widget build(BuildContext context) {

    return ResponsiveLayout(
        mobileBody: UserInterfaceMobile(),
        desktopBody: UserInterfaceDesktop(),
      );
  }
}