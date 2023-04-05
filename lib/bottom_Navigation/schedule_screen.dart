import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl/intl.dart';
import 'package:media/bottom_Navigation/Tabs_data/second_tab.dart';
import 'package:media/bottom_Navigation/bottom_navigation_screen.dart';
import 'package:media/bottom_Navigation/home_screen.dart';
import 'package:media/colors/app_theme.dart';

import '../matches_screens/match_information.dart';
import 'live_streaming.dart';

class ScheduleScreen extends StatefulWidget {
  const ScheduleScreen({Key? key}) : super(key: key);

  @override
  State<ScheduleScreen> createState() => _ScheduleScreenState();
}

class _ScheduleScreenState extends State<ScheduleScreen>
    with TickerProviderStateMixin {
  List<DateTime> _weekDates = [];

  @override
  void initState() {
    super.initState();

    // Get the current week's dates
    DateTime now = DateTime.now();
    int weekday = now.weekday;
    DateTime startOfWeek = now.subtract(Duration(days: weekday - 1));
    DateTime endOfWeek = now.add(Duration(days: 7 - weekday));
    for (int i = 0; i < 7; i++) {
      _weekDates.add(startOfWeek.add(Duration(days: i)));
    }
  }

  @override
  Widget build(BuildContext context) {
    TabController _tabController = TabController(length: 4, vsync: this);
    TabController _tabController2 = TabController(length: 3, vsync: this);
    return Scaffold(
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            //appbar
            Row(
              children: [
                SizedBox(
                  width: 120,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    CircleAvatar(
                      backgroundImage: AssetImage('images/logo.jpeg'),
                      radius: 12,
                      backgroundColor: Colors.transparent,
                    ),
                    const SizedBox(
                      width: 8,
                    ),
                    Text(
                      'MEDIA',
                      style: GoogleFonts.lora(
                          fontWeight: FontWeight.bold,
                          fontSize: 24,
                          color: AppTheme.colors.text),
                    ),
                  ],
                ),
                SizedBox(
                  width: 50,
                ),
                Row(
                  children: [
                    IconButton(
                        onPressed: () {},
                        icon: Icon(
                          CupertinoIcons.search_circle,
                          color: AppTheme.colors.text,
                          size: 24,
                        )),
                    IconButton(
                        onPressed: () {},
                        icon: Icon(
                          CupertinoIcons.bell_circle,
                          color: AppTheme.colors.text,
                          size: 24,
                        )),
                  ],
                )
              ],
            ),
            const SizedBox(
              height: 5,
            ),

//sports Tab bar
            Card(
              elevation: 5,
              color: AppTheme.colors.text,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(12),
              ),
              child: Container(
                child: TabBar(
                  indicator: BoxDecoration(
                      borderRadius: BorderRadius.circular(12),
                      color: AppTheme.colors.appbar),
                  controller: _tabController,
                  isScrollable: true,
                  labelPadding: EdgeInsets.symmetric(horizontal: 17),
                  tabs: [
                    Tab(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          CircleAvatar(
                            radius: 10,
                            backgroundImage: AssetImage('images/football.png'),
                            backgroundColor: Colors.transparent,
                          ),
                          Text(
                            'FOOTBALL',
                            style: GoogleFonts.lora(
                                color: AppTheme.colors.background,
                                fontSize: 12),
                          ),
                        ],
                      ),
                    ),
                    Tab(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          CircleAvatar(
                            radius: 10,
                            backgroundImage:
                                AssetImage('images/basketball.png'),
                            backgroundColor: Colors.transparent,
                          ),
                          Text(
                            'BASKETBALL',
                            style: GoogleFonts.lora(
                                color: AppTheme.colors.background,
                                fontSize: 12),
                          ),
                        ],
                      ),
                    ),
                    Tab(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          CircleAvatar(
                            radius: 10,
                            backgroundImage: AssetImage('images/baseball.png'),
                            backgroundColor: Colors.transparent,
                          ),
                          Text(
                            'BASEBALL',
                            style: GoogleFonts.lora(
                                color: AppTheme.colors.background,
                                fontSize: 12),
                          ),
                        ],
                      ),
                    ),
                    Tab(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          CircleAvatar(
                            radius: 10,
                            backgroundImage: AssetImage('images/hockey.png'),
                            backgroundColor: Colors.transparent,
                          ),
                          Text(
                            'HOCKEY',
                            style: GoogleFonts.lora(
                                color: AppTheme.colors.background,
                                fontSize: 12),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
      // tab bar view for football,hockey,basketball,and baseball
            Expanded(
              child: TabBarView(
                controller: _tabController,
                children: [
                  Column(
                    children: [
     //tab bar for leagues names
                      Expanded(
                        child: ListView(
                          scrollDirection: Axis.horizontal,
                          children: <Widget>[
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Container(
                                height: 20,
                                width: 150,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(30),
                                    color: AppTheme.colors.appbar),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    CircleAvatar(
                                      radius: 10,
                                      backgroundImage:
                                          AssetImage('images/football.png'),
                                      backgroundColor: Colors.transparent,
                                    ),
                                    const SizedBox(width: 5),
                                    Text(
                                      'Men Senior League',
                                      style: GoogleFonts.lora(
                                          color: AppTheme.colors.background,
                                          fontSize: 12),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Container(
                                height: 20,
                                width: 150,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(30),
                                    color: AppTheme.colors.appbar),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    CircleAvatar(
                                      radius: 10,
                                      backgroundImage:
                                          AssetImage('images/football.png'),
                                      backgroundColor: Colors.transparent,
                                    ),
                                    const SizedBox(width: 5),
                                    Text(
                                      'Men Senior League',
                                      style: GoogleFonts.lora(
                                          color: AppTheme.colors.background,
                                          fontSize: 12),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Container(
                                height: 20,
                                width: 150,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(30),
                                    color: AppTheme.colors.appbar),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    CircleAvatar(
                                      radius: 10,
                                      backgroundImage:
                                          AssetImage('images/football.png'),
                                      backgroundColor: Colors.transparent,
                                    ),
                                    const SizedBox(width: 5),
                                    Text(
                                      'Men Senior League',
                                      style: GoogleFonts.lora(
                                          color: AppTheme.colors.background,
                                          fontSize: 12),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Container(
                                height: 20,
                                width: 150,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(30),
                                    color: AppTheme.colors.appbar),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    CircleAvatar(
                                      radius: 10,
                                      backgroundImage:
                                          AssetImage('images/football.png'),
                                      backgroundColor: Colors.transparent,
                                    ),
                                    const SizedBox(width: 5),
                                    Text(
                                      'Men Senior League',
                                      style: GoogleFonts.lora(
                                          color: AppTheme.colors.background,
                                          fontSize: 12),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
    //tab bar for dates,games,& standings
                      Expanded(
                          child: TabBar(
                        controller: _tabController2,
                        isScrollable: true,
                        labelPadding: EdgeInsets.symmetric(horizontal: 40),
                        tabs: [
                          Tab(
                            child: Text(
                              'Dates',
                              style: GoogleFonts.lora(
                                  color: Colors.black, fontSize: 12),
                            ),
                          ),
                          Tab(
                            child: Text(
                              'Games',
                              style: GoogleFonts.lora(
                                  color: Colors.black, fontSize: 12),
                            ),
                          ),
                          Tab(
                            child: Text(
                              'Standings',
                              style: GoogleFonts.lora(
                                  color: Colors.black, fontSize: 12),
                            ),
                          ),
                        ],
                      )),
    // tab bar view of dates,games & standings
                      Expanded(
                        flex: 11,
                        child: TabBarView(
                          controller: _tabController2,
                          children: [
      //dates page of football
                            MyTabWidget(),
         //games page of football
                            MyTabWidget2(),

                            MyTabWidget2(),



                          ],
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            // Expanded(
            //     child: child),
          ],
        ),
      ),
    );
  }
}
