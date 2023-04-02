import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:media/bottom_Navigation/bottom_navigation_screen.dart';
import 'package:media/bottom_Navigation/home_screen.dart';
import 'package:media/colors/app_theme.dart';

class ScheduleScreen extends StatefulWidget {
  const ScheduleScreen({Key? key}) : super(key: key);

  @override
  State<ScheduleScreen> createState() => _ScheduleScreenState();
}

class _ScheduleScreenState extends State<ScheduleScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
            children: [
 //appbar
              Row(
                children: [
                  IconButton(
                      onPressed: () {
                        Navigator.pushReplacement(context, MaterialPageRoute(builder: (_)=>BottomNavigationScreen()));
                      },
                      icon: Icon(
                        CupertinoIcons.arrow_left_square,
                        color: AppTheme.colors.text,
                        size: 24,
                      )),
                  const SizedBox(width: 10,),
                  Text(
                    'MEDIA',
                    style: GoogleFonts.lora(
                        fontWeight: FontWeight.bold,
                        fontSize: 24,
                        color: AppTheme.colors.text),
                  ),
                ],
              ),
              const SizedBox(
                height: 5,
              ),
//calender
            Container(
              width: double.infinity,
              height: 120,
              color: AppTheme.colors.container,
            )

            ],
          ),
        ),
      ),
    );
  }
}
