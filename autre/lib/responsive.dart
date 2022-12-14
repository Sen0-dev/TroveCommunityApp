import 'package:flutter/material.dart';


class ResponsiveLayout extends StatelessWidget {

  Widget mobileBody;
  Widget desktopBody;

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