import 'package:flutter/material.dart';

import 'screens/splash_screen.dart';

void main() {
  runApp(const Week4App());
}

class Week4App extends StatelessWidget {
  const Week4App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Week 4 API Integration',
      theme: ThemeData(
        primarySwatch: Colors.teal,
        scaffoldBackgroundColor: Colors.grey.shade100,
      ),
      home: const SplashScreen(),
    );
  }
}