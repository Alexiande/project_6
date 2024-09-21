import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import 'about_screen.dart';

class DetailsScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Details Screen'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            ElevatedButton(
              onPressed: () => context.go('/help'),
              child: const Text('Go to the Help screen'),
            ),
            ElevatedButton(
              onPressed: () => Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => AboutScreen()),
              ),
              child: const Text('Go to the About screen (Page Route)'),
            ),
          ],
        ),
      ),
    );
  }
}
