import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl/intl.dart';
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
            Expanded(
              child: TabBarView(
                controller: _tabController,
                children: [
                  Column(
                    children: [
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
                                  children: [
                                    CircleAvatar(
                                      radius: 10,
                                      backgroundImage:
                                          AssetImage('images/football.png'),
                                      backgroundColor: Colors.transparent,
                                    ),
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
                                  children: [
                                    CircleAvatar(
                                      radius: 10,
                                      backgroundImage:
                                          AssetImage('images/football.png'),
                                      backgroundColor: Colors.transparent,
                                    ),
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
                                  children: [
                                    CircleAvatar(
                                      radius: 10,
                                      backgroundImage:
                                          AssetImage('images/football.png'),
                                      backgroundColor: Colors.transparent,
                                    ),
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
                                  children: [
                                    CircleAvatar(
                                      radius: 10,
                                      backgroundImage:
                                          AssetImage('images/football.png'),
                                      backgroundColor: Colors.transparent,
                                    ),
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
                      Expanded(
                        flex: 11,
                        child: TabBarView(
                          controller: _tabController2,
                          children: [
                            Column(
                              children: [
                                Expanded(
                                  child: Padding(
                                    padding: const EdgeInsets.only(
                                        left: 20, top: 20),
                                    child: ListView.builder(
                                      scrollDirection: Axis.horizontal,
                                      itemCount: _weekDates.length,
                                      itemBuilder:
                                          (BuildContext context, int index) {
                                        DateTime date = _weekDates[index];
                                        String dayName =
                                            DateFormat('EEE').format(date);
                                        String dateNumber =
                                            DateFormat('d MMM').format(date);
                                        return Container(
                                          width: 50,
                                          child: Column(
                                            children: [
                                              Text(
                                                dayName,
                                                style: TextStyle(
                                                  fontSize: 12,
                                                  fontWeight: FontWeight.bold,
                                                ),
                                              ),
                                              Text(
                                                dateNumber,
                                                style: TextStyle(
                                                  fontSize: 16,
                                                  fontWeight: FontWeight.bold,
                                                ),
                                              ),
                                            ],
                                          ),
                                        );
                                      },
                                    ),
                                  ),
                                ),
                                Expanded(
                                  flex: 7,
                                  child: Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: Column(
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          'Live Match',
                                          style: GoogleFonts.lora(
                                              color: Colors.black,
                                              fontSize: 14,
                                              fontWeight: FontWeight.bold),
                                        ),
                                        SizedBox(height: 10,),
                                        Expanded(
                                          flex: 3,
                                          child: ListView(
                                              scrollDirection: Axis.horizontal,
                                              children: [

                                                Container(
                                                  width: 240,
                                                  height: 170,
                                                  decoration: BoxDecoration(
                                                      color: Colors.black,
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              20)),
                                                  child: Column(
                                                    children: [
                                                      const SizedBox(
                                                        height: 20,
                                                      ),
                                                      Text('Men Senior League',
                                                        style: GoogleFonts.lora(
                                                            color: Colors
                                                                .white,
                                                            fontSize: 14,
                                                            fontWeight:
                                                            FontWeight
                                                                .bold),),
                                                      Text('Week 10',
                                                        style: GoogleFonts.lora(
                                                          color: Colors
                                                              .white,
                                                          fontSize: 12,
                                                        ),),
                                                      Row(
                                                        mainAxisAlignment:
                                                            MainAxisAlignment
                                                                .spaceEvenly,
                                                        crossAxisAlignment:
                                                            CrossAxisAlignment
                                                                .center,
                                                        children: [
                                                          Column(
                                                            children: [
                                                              CircleAvatar(
                                                                radius: 25,
                                                                backgroundColor:
                                                                    Colors
                                                                        .transparent,
                                                                backgroundImage:
                                                                    AssetImage(
                                                                        'images/logo.jpeg'),
                                                              ),
                                                              Text(
                                                                'Real Madrid',
                                                                style: GoogleFonts.lora(
                                                                    color: Colors
                                                                        .white,
                                                                    fontSize: 14,
                                                                    fontWeight:
                                                                        FontWeight
                                                                            .bold),
                                                              ),
                                                              Text(
                                                                'Home',
                                                                style: GoogleFonts.lora(
                                                                    color: Colors
                                                                        .white,
                                                                    fontSize: 10,
                                                                    fontWeight:
                                                                        FontWeight
                                                                            .bold),
                                                              ),
                                                            ],
                                                          ),
                                                          Column(
                                                            children: [
                                                              Text(
                                                                '0:3',
                                                                style: GoogleFonts
                                                                    .lora(
                                                                  color: Colors.white,
                                                                  fontWeight:
                                                                      FontWeight
                                                                          .bold,
                                                                  fontSize: 18,
                                                                ),
                                                              ),
                                                              Container(
                                                                child: Text(
                                                                  '84',
                                                                  style: GoogleFonts
                                                                      .lora(
                                                                    color: Colors
                                                                        .white,
                                                                    fontWeight:
                                                                        FontWeight
                                                                            .bold,
                                                                    fontSize: 18,
                                                                  ),
                                                                ),
                                                              ),
                                                            ],
                                                          ),
                                                          Column(
                                                            children: [
                                                              CircleAvatar(
                                                                radius: 25,
                                                                backgroundColor:
                                                                    Colors
                                                                        .transparent,
                                                                backgroundImage:
                                                                    AssetImage(
                                                                        'images/logo.jpeg'),
                                                              ),
                                                              Text(
                                                                'FB Barcelona',
                                                                style: GoogleFonts.lora(
                                                                    color: Colors
                                                                        .white,
                                                                    fontSize: 14,
                                                                    fontWeight:
                                                                        FontWeight
                                                                            .bold),
                                                              ),
                                                              Text(
                                                                'Away',
                                                                style: GoogleFonts.lora(
                                                                    color: Colors
                                                                        .white,
                                                                    fontSize: 10,
                                                                    fontWeight:
                                                                        FontWeight
                                                                            .bold),
                                                              ),
                                                            ],
                                                          ),
                                                        ],
                                                      ),
                                                      const SizedBox(
                                                        height: 20,
                                                      ),
                                                    ],
                                                  ),
                                                ),
                                                SizedBox(width:10),
                                                Container(
                                                  width: 240,
                                                  height: 170,
                                                  decoration: BoxDecoration(
                                                      color: Colors.black,
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              20)),
                                                  child: Column(
                                                    children: [
                                                      const SizedBox(
                                                        height: 20,
                                                      ),
                                                      Text('Men Senior League',
                                                        style: GoogleFonts.lora(
                                                            color: Colors
                                                                .white,
                                                            fontSize: 14,
                                                            fontWeight:
                                                            FontWeight
                                                                .bold),),
                                                      Text('Week 10',
                                                        style: GoogleFonts.lora(
                                                          color: Colors
                                                              .white,
                                                          fontSize: 12,
                                                        ),),
                                                      Row(
                                                        mainAxisAlignment:
                                                            MainAxisAlignment
                                                                .spaceEvenly,
                                                        crossAxisAlignment:
                                                            CrossAxisAlignment
                                                                .center,
                                                        children: [
                                                          Column(
                                                            children: [
                                                              CircleAvatar(
                                                                radius: 25,
                                                                backgroundColor:
                                                                    Colors
                                                                        .transparent,
                                                                backgroundImage:
                                                                    AssetImage(
                                                                        'images/logo.jpeg'),
                                                              ),
                                                              Text(
                                                                'Real Madrid',
                                                                style: GoogleFonts.lora(
                                                                    color: Colors
                                                                        .white,
                                                                    fontSize: 14,
                                                                    fontWeight:
                                                                        FontWeight
                                                                            .bold),
                                                              ),
                                                              Text(
                                                                'Home',
                                                                style: GoogleFonts.lora(
                                                                    color: Colors
                                                                        .white,
                                                                    fontSize: 10,
                                                                    fontWeight:
                                                                        FontWeight
                                                                            .bold),
                                                              ),
                                                            ],
                                                          ),
                                                          Column(
                                                            children: [
                                                              Text(
                                                                '0:3',
                                                                style: GoogleFonts
                                                                    .lora(
                                                                  color: Colors.white,
                                                                  fontWeight:
                                                                      FontWeight
                                                                          .bold,
                                                                  fontSize: 18,
                                                                ),
                                                              ),
                                                              Container(
                                                               
                                                                child: Text(
                                                                  '84',
                                                                  style: GoogleFonts
                                                                      .lora(
                                                                    color: Colors
                                                                        .white,
                                                                    fontWeight:
                                                                        FontWeight
                                                                            .bold,
                                                                    fontSize: 18,
                                                                  ),
                                                                ),
                                                              ),
                                                            ],
                                                          ),
                                                          Column(
                                                            children: [
                                                              CircleAvatar(
                                                                radius: 25,
                                                                backgroundColor:
                                                                    Colors
                                                                        .transparent,
                                                                backgroundImage:
                                                                    AssetImage(
                                                                        'images/logo.jpeg'),
                                                              ),
                                                              Text(
                                                                'FB Barcelona',
                                                                style: GoogleFonts.lora(
                                                                    color: Colors
                                                                        .white,
                                                                    fontSize: 14,
                                                                    fontWeight:
                                                                        FontWeight
                                                                            .bold),
                                                              ),
                                                              Text(
                                                                'Away',
                                                                style: GoogleFonts.lora(
                                                                    color: Colors
                                                                        .white,
                                                                    fontSize: 10,
                                                                    fontWeight:
                                                                        FontWeight
                                                                            .bold),
                                                              ),
                                                            ],
                                                          ),
                                                        ],
                                                      ),
                                                      const SizedBox(
                                                        height: 20,
                                                      ),
                                                    ],
                                                  ),
                                                ),
                                                SizedBox(width:10),
                                                Container(
                                                  width: 240,
                                                  height: 170,
                                                  decoration: BoxDecoration(
                                                      color: Colors.black,
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              20)),
                                                  child: Column(
                                                    children: [
                                                      const SizedBox(
                                                        height: 20,
                                                      ),
                                                      Text('Men Senior League',
                                                        style: GoogleFonts.lora(
                                                            color: Colors
                                                                .white,
                                                            fontSize: 14,
                                                            fontWeight:
                                                            FontWeight
                                                                .bold),),
                                                      Text('Week 10',
                                                        style: GoogleFonts.lora(
                                                          color: Colors
                                                              .white,
                                                          fontSize: 12,
                                                        ),),
                                                      Row(
                                                        mainAxisAlignment:
                                                            MainAxisAlignment
                                                                .spaceEvenly,
                                                        crossAxisAlignment:
                                                            CrossAxisAlignment
                                                                .center,
                                                        children: [
                                                          Column(
                                                            children: [
                                                              CircleAvatar(
                                                                radius: 25,
                                                                backgroundColor:
                                                                    Colors
                                                                        .transparent,
                                                                backgroundImage:
                                                                    AssetImage(
                                                                        'images/logo.jpeg'),
                                                              ),
                                                              Text(
                                                                'Real Madrid',
                                                                style: GoogleFonts.lora(
                                                                    color: Colors
                                                                        .white,
                                                                    fontSize: 14,
                                                                    fontWeight:
                                                                        FontWeight
                                                                            .bold),
                                                              ),
                                                              Text(
                                                                'Home',
                                                                style: GoogleFonts.lora(
                                                                    color: Colors
                                                                        .white,
                                                                    fontSize: 10,
                                                                    fontWeight:
                                                                        FontWeight
                                                                            .bold),
                                                              ),
                                                            ],
                                                          ),
                                                          Column(
                                                            children: [
                                                              Text(
                                                                '0:3',
                                                                style: GoogleFonts
                                                                    .lora(
                                                                  color: Colors.white,
                                                                  fontWeight:
                                                                      FontWeight
                                                                          .bold,
                                                                  fontSize: 18,
                                                                ),
                                                              ),
                                                              Container(
                                                               
                                                                child: Text(
                                                                  '84',
                                                                  style: GoogleFonts
                                                                      .lora(
                                                                    color: Colors
                                                                        .white,
                                                                    fontWeight:
                                                                        FontWeight
                                                                            .bold,
                                                                    fontSize: 18,
                                                                  ),
                                                                ),
                                                              ),
                                                            ],
                                                          ),
                                                          Column(
                                                            children: [
                                                              CircleAvatar(
                                                                radius: 25,
                                                                backgroundColor:
                                                                    Colors
                                                                        .transparent,
                                                                backgroundImage:
                                                                    AssetImage(
                                                                        'images/logo.jpeg'),
                                                              ),
                                                              Text(
                                                                'FB Barcelona',
                                                                style: GoogleFonts.lora(
                                                                    color: Colors
                                                                        .white,
                                                                    fontSize: 14,
                                                                    fontWeight:
                                                                        FontWeight
                                                                            .bold),
                                                              ),
                                                              Text(
                                                                'Away',
                                                                style: GoogleFonts.lora(
                                                                    color: Colors
                                                                        .white,
                                                                    fontSize: 10,
                                                                    fontWeight:
                                                                        FontWeight
                                                                            .bold),
                                                              ),
                                                            ],
                                                          ),
                                                        ],
                                                      ),
                                                      const SizedBox(
                                                        height: 20,
                                                      ),
                                                    ],
                                                  ),
                                                ),
                                              ]),
                                        ),
                                        Expanded(
                                            flex: 4,
                                            child: Text('date')),
                                      ],
                                    ),
                                  ),
                                ),
                              ],
                            ),
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
