import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:media/bottom_Navigation/home_screen.dart';
import 'package:media/bottom_Navigation/schedule_screen.dart';
import 'package:media/bottom_Navigation/search_screen.dart';
import 'package:media/colors/app_theme.dart';

class BottomNavigationScreen extends StatefulWidget {
  const BottomNavigationScreen({Key? key}) : super(key: key);

  @override
  State<BottomNavigationScreen> createState() => _BottomNavigationScreenState();
}

class _BottomNavigationScreenState extends State<BottomNavigationScreen> {
  int myIndex = 0;
  List<Widget> screensList = [
    HomeScreen(),
    ScheduleScreen(),
    SearchScreen(),

  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: IndexedStack(
          children: screensList,
          index: myIndex,
        ),
        backgroundColor: AppTheme.colors.background,
        bottomNavigationBar: BottomNavigationBar(
          backgroundColor: AppTheme.colors.container,

          onTap: (index){
            setState(() {
              myIndex = index;
            });

          },
          currentIndex: myIndex,
          selectedFontSize: 16,
          unselectedFontSize: 12,
          selectedItemColor: AppTheme.colors.appbar,
          unselectedItemColor: AppTheme.colors.text,
          selectedLabelStyle: GoogleFonts.lora(fontSize: 12),
          items: const[
            BottomNavigationBarItem(icon: Icon(CupertinoIcons.home), label: 'HOME', ),
            BottomNavigationBarItem(icon: Icon(CupertinoIcons.calendar), label: 'SCHEDULE', ),
            BottomNavigationBarItem(icon: Icon(CupertinoIcons.search), label: 'SEARCH', ),
            BottomNavigationBarItem(icon: Icon(CupertinoIcons.news), label: 'NEWS', ),
          //   BottomNavigationBarItem(icon: Icon(CupertinoIcons.search), label: '', ),
          //   BottomNavigationBarItem(icon: Icon(CupertinoIcons.bars), label: '', ),
          ],
        )
    );
  }
}
