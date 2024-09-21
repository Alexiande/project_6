import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class HelpScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Help Screen'),
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () => context.go('/about'),
          child: const Text('Go to the About screen'),
        ),
      ),
    );
  }
}
