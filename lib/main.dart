import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:project_6/screens/about_screen.dart';
import 'package:project_6/screens/detail_screen.dart';
import 'package:project_6/screens/help_screen.dart';
import 'package:project_6/screens/home_screen.dart';
import 'package:project_6/screens/settings_screen.dart';


void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  final GoRouter _router = GoRouter(
    routes: <RouteBase>[
      GoRoute(
        path: '/',
        builder: (BuildContext context, GoRouterState state) {
          return HomeScreen();
        },
        routes: <RouteBase>[
          GoRoute(
            path: 'details',
            builder: (BuildContext context, GoRouterState state) {
              return DetailsScreen();
            },
          ),
          GoRoute(
            path: 'settings',
            builder: (BuildContext context, GoRouterState state) {
              return SettingsScreen();
            },
          ),
          GoRoute(
            path: 'help',
            builder: (BuildContext context, GoRouterState state) {
              return HelpScreen();
            },
          ),
          GoRoute(
            path: 'about',
            builder: (BuildContext context, GoRouterState state) {
              return AboutScreen();
            },
          ),
        ],
      ),
    ],
  );

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      title: 'Navigation Demo',
      routerConfig: _router,
    );
  }
}
