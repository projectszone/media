import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl/intl.dart';
import 'package:media/colors/app_theme.dart';
class MyTabWidget extends StatefulWidget {
  @override
  _MyTabWidgetState createState() => _MyTabWidgetState();
}

class _MyTabWidgetState extends State<MyTabWidget> {
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
    return Container(
      child:  Column(
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
                crossAxisAlignment:
                CrossAxisAlignment.start,
                children: [
                  Text(
                    'Live Match',
                    style: GoogleFonts.lora(
                        color: Colors.black,
                        fontSize: 14,
                        fontWeight: FontWeight.bold),
                  ),
                  SizedBox(
                    height: 10,
                  ),
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
                                Text(
                                  'Men Senior League',
                                  style: GoogleFonts.lora(
                                      color: Colors.white,
                                      fontSize: 14,
                                      fontWeight:
                                      FontWeight
                                          .bold),
                                ),
                                Text(
                                  'Week 10',
                                  style: GoogleFonts.lora(
                                    color: Colors.white,
                                    fontSize: 12,
                                  ),
                                ),
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
                                              'images/rm.png'),
                                        ),
                                        Text(
                                          'Real Madrid',
                                          style: GoogleFonts.lora(
                                              color: Colors
                                                  .white,
                                              fontSize:
                                              14,
                                              fontWeight:
                                              FontWeight
                                                  .bold),
                                        ),
                                        Text(
                                          'Home',
                                          style: GoogleFonts.lora(
                                              color: Colors
                                                  .white,
                                              fontSize:
                                              10,
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
                                          style:
                                          GoogleFonts
                                              .lora(
                                            color: Colors
                                                .white,
                                            fontWeight:
                                            FontWeight
                                                .bold,
                                            fontSize: 18,
                                          ),
                                        ),
                                        Container(
                                          child: Text(
                                            '84',
                                            style:
                                            GoogleFonts
                                                .lora(
                                              color: Colors
                                                  .white,
                                              fontWeight:
                                              FontWeight
                                                  .bold,
                                              fontSize:
                                              18,
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
                                              'images/fcb.png'),
                                        ),
                                        Text(
                                          'FB Barcelona',
                                          style: GoogleFonts.lora(
                                              color: Colors
                                                  .white,
                                              fontSize:
                                              14,
                                              fontWeight:
                                              FontWeight
                                                  .bold),
                                        ),
                                        Text(
                                          'Away',
                                          style: GoogleFonts.lora(
                                              color: Colors
                                                  .white,
                                              fontSize:
                                              10,
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
                          SizedBox(width: 10),
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
                                Text(
                                  'Men Senior League',
                                  style: GoogleFonts.lora(
                                      color: Colors.white,
                                      fontSize: 14,
                                      fontWeight:
                                      FontWeight
                                          .bold),
                                ),
                                Text(
                                  'Week 10',
                                  style: GoogleFonts.lora(
                                    color: Colors.white,
                                    fontSize: 12,
                                  ),
                                ),
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
                                              'images/psg.png'),
                                        ),
                                        Text(
                                          'PSG',
                                          style: GoogleFonts.lora(
                                              color: Colors
                                                  .white,
                                              fontSize:
                                              14,
                                              fontWeight:
                                              FontWeight
                                                  .bold),
                                        ),
                                        Text(
                                          'Home',
                                          style: GoogleFonts.lora(
                                              color: Colors
                                                  .white,
                                              fontSize:
                                              10,
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
                                          style:
                                          GoogleFonts
                                              .lora(
                                            color: Colors
                                                .white,
                                            fontWeight:
                                            FontWeight
                                                .bold,
                                            fontSize: 18,
                                          ),
                                        ),
                                        Container(
                                          child: Text(
                                            '84',
                                            style:
                                            GoogleFonts
                                                .lora(
                                              color: Colors
                                                  .white,
                                              fontWeight:
                                              FontWeight
                                                  .bold,
                                              fontSize:
                                              18,
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
                                              'images/lp.png'),
                                        ),
                                        Text(
                                          'LiverPool',
                                          style: GoogleFonts.lora(
                                              color: Colors
                                                  .white,
                                              fontSize:
                                              14,
                                              fontWeight:
                                              FontWeight
                                                  .bold),
                                        ),
                                        Text(
                                          'Away',
                                          style: GoogleFonts.lora(
                                              color: Colors
                                                  .white,
                                              fontSize:
                                              10,
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
                          SizedBox(width: 10),
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
                                Text(
                                  'Men Senior League',
                                  style: GoogleFonts.lora(
                                      color: Colors.white,
                                      fontSize: 14,
                                      fontWeight:
                                      FontWeight
                                          .bold),
                                ),
                                Text(
                                  'Week 10',
                                  style: GoogleFonts.lora(
                                    color: Colors.white,
                                    fontSize: 12,
                                  ),
                                ),
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
                                              'images/mu.png'),
                                        ),
                                        Text(
                                          'Manchester Utd',
                                          style: GoogleFonts.lora(
                                              color: Colors
                                                  .white,
                                              fontSize:
                                              14,
                                              fontWeight:
                                              FontWeight
                                                  .bold),
                                        ),
                                        Text(
                                          'Home',
                                          style: GoogleFonts.lora(
                                              color: Colors
                                                  .white,
                                              fontSize:
                                              10,
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
                                          style:
                                          GoogleFonts
                                              .lora(
                                            color: Colors
                                                .white,
                                            fontWeight:
                                            FontWeight
                                                .bold,
                                            fontSize: 18,
                                          ),
                                        ),
                                        Container(
                                          child: Text(
                                            '84',
                                            style:
                                            GoogleFonts
                                                .lora(
                                              color: Colors
                                                  .white,
                                              fontWeight:
                                              FontWeight
                                                  .bold,
                                              fontSize:
                                              18,
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
                                              'images/mc.png'),
                                        ),
                                        Text(
                                          'M City',
                                          style: GoogleFonts.lora(
                                              color: Colors
                                                  .white,
                                              fontSize:
                                              14,
                                              fontWeight:
                                              FontWeight
                                                  .bold),
                                        ),
                                        Text(
                                          'Away',
                                          style: GoogleFonts.lora(
                                              color: Colors
                                                  .white,
                                              fontSize:
                                              10,
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
                      flex: 5,
                      child: Padding(
                        padding:
                        const EdgeInsets.all(8.0),
                        child: Column(
                          children: [
                            Row(
                              mainAxisAlignment:
                              MainAxisAlignment
                                  .spaceBetween,
                              children: [
                                Text(
                                  'Matches',
                                  style: GoogleFonts.lora(
                                    fontSize: 18,
                                    fontWeight:
                                    FontWeight.bold,
                                  ),
                                ),
                                Text(
                                  'See All',
                                  style: GoogleFonts.lora(
                                    fontSize: 18,
                                    color: AppTheme
                                        .colors.appbar,
                                    fontWeight:
                                    FontWeight.bold,
                                  ),
                                ),
                              ],
                            ),
                            Card(
                                shape:
                                RoundedRectangleBorder(
                                  borderRadius:
                                  BorderRadius
                                      .circular(10),
                                ),
                                child: Padding(
                                  padding:
                                  const EdgeInsets
                                      .all(8.0),
                                  child: Row(
                                      mainAxisAlignment:
                                      MainAxisAlignment
                                          .spaceBetween,
                                      children: [
                                        Text(
                                            'Manchester Utd',
                                            style:
                                            GoogleFonts
                                                .lora(
                                              color: AppTheme
                                                  .colors
                                                  .text,
                                              fontSize:
                                              16,
                                              fontWeight:
                                              FontWeight
                                                  .bold,
                                            )),
                                        CircleAvatar(
                                            radius: 15,
                                            backgroundColor:
                                            Colors
                                                .transparent,
                                            backgroundImage:
                                            AssetImage(
                                                'images/mu.png')),
                                        Column(children: [
                                          Text('08:30',
                                              style:
                                              GoogleFonts
                                                  .lora(
                                                color: AppTheme
                                                    .colors
                                                    .appbar,
                                                fontSize:
                                                16,
                                                fontWeight:
                                                FontWeight
                                                    .bold,
                                              )),
                                          const SizedBox(
                                              height: 5),
                                          Text('6 Apr',
                                              style:
                                              GoogleFonts
                                                  .lora(
                                                color: AppTheme
                                                    .colors
                                                    .text,
                                                fontSize:
                                                14,
                                                fontWeight:
                                                FontWeight
                                                    .bold,
                                              )),
                                        ]),
                                        CircleAvatar(
                                            radius: 15,
                                            backgroundColor:
                                            Colors
                                                .transparent,
                                            backgroundImage:
                                            AssetImage(
                                                'images/lp.png')),
                                        Text('Liver Pool',
                                            style:
                                            GoogleFonts
                                                .lora(
                                              color: AppTheme
                                                  .colors
                                                  .text,
                                              fontSize:
                                              16,
                                              fontWeight:
                                              FontWeight
                                                  .bold,
                                            )),
                                      ]),
                                )),
                            Card(
                                shape:
                                RoundedRectangleBorder(
                                  borderRadius:
                                  BorderRadius
                                      .circular(10),
                                ),
                                child: Padding(
                                  padding:
                                  const EdgeInsets
                                      .all(8.0),
                                  child: Row(
                                      mainAxisAlignment:
                                      MainAxisAlignment
                                          .spaceBetween,
                                      children: [
                                        Text(
                                            'Manchester City',
                                            style:
                                            GoogleFonts
                                                .lora(
                                              color: AppTheme
                                                  .colors
                                                  .text,
                                              fontSize:
                                              16,
                                              fontWeight:
                                              FontWeight
                                                  .bold,
                                            )),
                                        CircleAvatar(
                                            radius: 15,
                                            backgroundColor:
                                            Colors
                                                .transparent,
                                            backgroundImage:
                                            AssetImage(
                                                'images/mc.png')),
                                        Column(children: [
                                          Text('08:30',
                                              style:
                                              GoogleFonts
                                                  .lora(
                                                color: AppTheme
                                                    .colors
                                                    .appbar,
                                                fontSize:
                                                16,
                                                fontWeight:
                                                FontWeight
                                                    .bold,
                                              )),
                                          const SizedBox(
                                              height: 5),
                                          Text('6 Apr',
                                              style:
                                              GoogleFonts
                                                  .lora(
                                                color: AppTheme
                                                    .colors
                                                    .text,
                                                fontSize:
                                                14,
                                                fontWeight:
                                                FontWeight
                                                    .bold,
                                              )),
                                        ]),
                                        CircleAvatar(
                                            radius: 15,
                                            backgroundColor:
                                            Colors
                                                .transparent,
                                            backgroundImage:
                                            AssetImage(
                                                'images/psg.png')),
                                        Text('Paris SG',
                                            style:
                                            GoogleFonts
                                                .lora(
                                              color: AppTheme
                                                  .colors
                                                  .text,
                                              fontSize:
                                              16,
                                              fontWeight:
                                              FontWeight
                                                  .bold,
                                            )),
                                      ]),
                                )),
                            Row(
                              mainAxisAlignment:
                              MainAxisAlignment
                                  .spaceBetween,
                              children: [
                                Text(
                                  'Videos',
                                  style: GoogleFonts.lora(
                                    fontSize: 18,
                                    fontWeight:
                                    FontWeight.bold,
                                  ),
                                ),
                                Text(
                                  'See All',
                                  style: GoogleFonts.lora(
                                    fontSize: 18,
                                    color: AppTheme
                                        .colors.appbar,
                                    fontWeight:
                                    FontWeight.bold,
                                  ),
                                ),
                              ],
                            ),
                            Card(
                                shape:
                                RoundedRectangleBorder(
                                  borderRadius:
                                  BorderRadius
                                      .circular(10),
                                ),
                                child: Padding(
                                  padding:
                                  const EdgeInsets
                                      .all(8.0),
                                  child: Row(
                                      mainAxisAlignment:
                                      MainAxisAlignment
                                          .spaceBetween,
                                      children: [
                                        Text(
                                            'FC Barcelona',
                                            style:
                                            GoogleFonts
                                                .lora(
                                              color: AppTheme
                                                  .colors
                                                  .text,
                                              fontSize:
                                              16,
                                              fontWeight:
                                              FontWeight
                                                  .bold,
                                            )),
                                        CircleAvatar(
                                            radius: 15,
                                            backgroundColor:
                                            Colors
                                                .transparent,
                                            backgroundImage:
                                            AssetImage(
                                                'images/fcb.png')),
                                        Column(children: [
                                          Text('08:30',
                                              style:
                                              GoogleFonts
                                                  .lora(
                                                color: AppTheme
                                                    .colors
                                                    .appbar,
                                                fontSize:
                                                16,
                                                fontWeight:
                                                FontWeight
                                                    .bold,
                                              )),
                                          const SizedBox(
                                              height: 5),
                                          Text('6 Apr',
                                              style:
                                              GoogleFonts
                                                  .lora(
                                                color: AppTheme
                                                    .colors
                                                    .text,
                                                fontSize:
                                                14,
                                                fontWeight:
                                                FontWeight
                                                    .bold,
                                              )),
                                        ]),
                                        CircleAvatar(
                                            radius: 15,
                                            backgroundColor:
                                            Colors
                                                .transparent,
                                            backgroundImage:
                                            AssetImage(
                                                'images/rm.png')),
                                        Text('Real Madrid',
                                            style:
                                            GoogleFonts
                                                .lora(
                                              color: AppTheme
                                                  .colors
                                                  .text,
                                              fontSize:
                                              16,
                                              fontWeight:
                                              FontWeight
                                                  .bold,
                                            )),
                                      ]),
                                )),
                          ],
                        ),
                      )),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}