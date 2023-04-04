import 'package:flutter/material.dart';
import 'package:media/bottom_Navigation/home_screen.dart';
import 'package:media/bottom_Navigation/schedule_screen.dart';
import 'package:media/intro_screens/splash_screen.dart';

import 'bottom_Navigation/bottom_navigation_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: BottomNavigationScreen(),
    );
  }
}
