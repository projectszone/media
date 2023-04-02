import 'dart:async';

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:media/colors/app_theme.dart';
import 'package:media/intro_screens/onboard_screens.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState(){
    super.initState();

    Timer(const Duration(milliseconds: 3500), () {

      Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => OnBoardScreens()));
    });
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
// image code
            const CircleAvatar(
              radius: 80,
              backgroundColor: Colors.transparent,
              backgroundImage: AssetImage('images/logo.jpeg'),
            ),


// text 'media' code
            Text('MEDIA', style: GoogleFonts.lora(color: AppTheme.colors.text,fontSize: 40,fontWeight: FontWeight.bold)),
          ],
        ),
      ),
    );
  }
}
