import 'package:flutter/material.dart';
import 'package:school_planning/SplashScreen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: SplashScreen(),
      ),
    );
  }
}
