import 'package:flutter/material.dart';

class AboutScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('About Screen'),
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () => Navigator.popUntil(context, (route) => route.isFirst),
          child: const Text('Go back to Home screen'),
        ),
      ),
    );
  }
}
