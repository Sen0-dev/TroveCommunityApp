import 'package:autre/UserInterface/PCVersion/userinterface_desktopsize_pc.dart';
import 'package:autre/UserInterface/UserInterfaceDesktopFolder/userinterface_desktop.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:autre/UserInterface/responsive_user_interface.dart';
import 'Login/reponsive_login.dart';
import 'package:autre/UserInterface/UserInterfaceMobileFolder/user_interface.dart';



    final GoRouter mobileRouter = GoRouter(
    routes: <GoRoute>[
      GoRoute(
    
        routes: <GoRoute>[
          GoRoute(
            path: 'userInterface',
            builder: (BuildContext context, GoRouterState state) =>
            ResponsiveUserInterface(),
          )
        ],
        
        path: '/',
        builder: (BuildContext context, GoRouterState state) =>
        ResponsiveLogin()
      )
    ],
  );

  final GoRouter desktopRouter = GoRouter(
    
    routes: <GoRoute>[
      GoRoute(
        
        routes: <GoRoute>[
          GoRoute(
            path: 'userInterface',
            builder: (BuildContext context, GoRouterState state) =>
            UserInterfacePC(),
          )
        ],
        
        path: '/',
        builder: (BuildContext context, GoRouterState state) =>
        ResponsiveLogin()
      )
    ],
  );
    
  
