import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'main.dart';
import 'package:autre/UserInterface/responsive_user_interface.dart';
import 'Login/reponsive_login.dart';
import 'package:autre/UserInterface/UserInterfaceMobileFolder/user_interface_mobile.dart';


    final GoRouter router = GoRouter(
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
    
  
