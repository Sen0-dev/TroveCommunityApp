import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter/services.dart';
import 'MainPageFolder/LoginPageDesktopFolder/MainPageDesktop.dart';
import 'MainPageFolder/LoginPageMobileFolder/MainPageMobile.dart';

class ResponsiveLayout extends StatelessWidget {

  final Widget mobileBody;
  final Widget desktopBody;

  ResponsiveLayout({required this.mobileBody, required this.desktopBody});

  @override
  Widget build(BuildContext context) {

    return LayoutBuilder(
      builder: (context, constraints) {
        if (constraints.maxWidth < 944) {
          return mobileBody;
        } else {
          return desktopBody;
        }
      }
    );
  }
}