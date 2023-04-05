import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl/intl.dart';



class MyTabWidget2 extends StatefulWidget {
  MyTabWidget2({Key? key}) : super(key: key);

  @override
  State<MyTabWidget2> createState() => _MyTabWidget2State();
}

class _MyTabWidget2State extends State<MyTabWidget2> {
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
    return Column(
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
        Expanded(flex:8,
          child: Column(mainAxisAlignment:MainAxisAlignment.start,
            crossAxisAlignment:CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text('Today`s Matches',
                    style:GoogleFonts.lora(fontSize:12)),
              ),
              Card(
                  child: Column(
                      children:[
                        Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(4.0),
                              child: Row(mainAxisAlignment:MainAxisAlignment.start,
                                children: [
                                  Text('FC Barcelona',
                                    style: GoogleFonts.lora(
                                      fontSize: 10,
                                    ),),
                                  const SizedBox(width:5),
                                  CircleAvatar(radius:8,backgroundImage:AssetImage('images/fcb.png')),
                                  const SizedBox(width:15),
                                  Text('3',
                                    style: GoogleFonts.lora(
                                      fontSize: 10,
                                    ),),
                                  Icon(CupertinoIcons.back,size:12)],

                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(4.0),
                              child: Row(mainAxisAlignment:MainAxisAlignment.center,
                                  children: [
                                    Text('FT',
                                      style: GoogleFonts.lora(
                                        fontSize: 10,
                                      ),),

                                  ]),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(4.0),
                              child: Row(mainAxisAlignment:MainAxisAlignment.end,
                                children: [
                                  Text('2',
                                    style: GoogleFonts.lora(
                                      fontSize: 10,
                                    ),),
                                  const SizedBox(width:15),
                                  CircleAvatar(radius:8,backgroundImage:AssetImage('images/rm.png')),
                                  const SizedBox(width:5),
                                  Text('Real Madrid',
                                    style: GoogleFonts.lora(
                                      fontSize: 10,
                                    ),),
                                ],

                              ),
                            )

                          ],
                        ),
                        Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(4.0),
                              child: Row(mainAxisAlignment:MainAxisAlignment.start,
                                children: [
                                  Text('Messi(17,87),   Neymar(34) ',
                                    style: GoogleFonts.lora(
                                      fontSize: 8,
                                    ),),
                                  const SizedBox(width:5),
                                  CircleAvatar(radius:6,backgroundImage:AssetImage('images/football.png')),
                                ],

                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(4.0),
                              child: Row(mainAxisAlignment:MainAxisAlignment.start,
                                children: [
                                  CircleAvatar(radius:6,backgroundImage:AssetImage('images/football.png')),

                                  const SizedBox(width:5),
                                  Text('Ronaldo(13),   Di Maria(77) ',
                                    style: GoogleFonts.lora(
                                      fontSize: 8,
                                    ),),
                                ],

                              ),
                            ),

                          ],
                        ),
                      ]
                  )

              ),
              Card(
                  child: Column(
                      children:[
                        Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(4.0),
                              child: Row(mainAxisAlignment:MainAxisAlignment.start,
                                children: [
                                  Text('FC Barcelona',
                                    style: GoogleFonts.lora(
                                      fontSize: 10,
                                    ),),
                                  const SizedBox(width:5),
                                  CircleAvatar(radius:8,backgroundImage:AssetImage('images/fcb.png')),
                                  const SizedBox(width:15),
                                  Text('3',
                                    style: GoogleFonts.lora(
                                      fontSize: 10,
                                    ),),
                                  Icon(CupertinoIcons.back,size:12)],

                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(4.0),
                              child: Row(mainAxisAlignment:MainAxisAlignment.center,
                                  children: [
                                    Text('FT',
                                      style: GoogleFonts.lora(
                                        fontSize: 10,
                                      ),),

                                  ]),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(4.0),
                              child: Row(mainAxisAlignment:MainAxisAlignment.end,
                                children: [
                                  Text('2',
                                    style: GoogleFonts.lora(
                                      fontSize: 10,
                                    ),),
                                  const SizedBox(width:15),
                                  CircleAvatar(radius:8,backgroundImage:AssetImage('images/rm.png')),
                                  const SizedBox(width:5),
                                  Text('Real Madrid',
                                    style: GoogleFonts.lora(
                                      fontSize: 10,
                                    ),),
                                ],

                              ),
                            )

                          ],
                        ),
                        Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(4.0),
                              child: Row(mainAxisAlignment:MainAxisAlignment.start,
                                children: [
                                  Text('Messi(17,87),   Neymar(34) ',
                                    style: GoogleFonts.lora(
                                      fontSize: 8,
                                    ),),
                                  const SizedBox(width:5),
                                  CircleAvatar(radius:6,backgroundImage:AssetImage('images/football.png')),
                                ],

                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(4.0),
                              child: Row(mainAxisAlignment:MainAxisAlignment.start,
                                children: [
                                  CircleAvatar(radius:6,backgroundImage:AssetImage('images/football.png')),

                                  const SizedBox(width:5),
                                  Text('Ronaldo(13),   Di Maria(77) ',
                                    style: GoogleFonts.lora(
                                      fontSize: 8,
                                    ),),
                                ],

                              ),
                            ),

                          ],
                        ),
                      ]
                  )

              ),
              Card(
                  child: Column(
                      children:[
                        Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(4.0),
                              child: Row(mainAxisAlignment:MainAxisAlignment.start,
                                children: [
                                  Text('FC Barcelona',
                                    style: GoogleFonts.lora(
                                      fontSize: 10,
                                    ),),
                                  const SizedBox(width:5),
                                  CircleAvatar(radius:8,backgroundImage:AssetImage('images/fcb.png')),
                                  const SizedBox(width:15),
                                  Text('3',
                                    style: GoogleFonts.lora(
                                      fontSize: 10,
                                    ),),
                                  Icon(CupertinoIcons.back,size:12)],

                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(4.0),
                              child: Row(mainAxisAlignment:MainAxisAlignment.center,
                                  children: [
                                    Text('FT',
                                      style: GoogleFonts.lora(
                                        fontSize: 10,
                                      ),),

                                  ]),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(4.0),
                              child: Row(mainAxisAlignment:MainAxisAlignment.end,
                                children: [
                                  Text('2',
                                    style: GoogleFonts.lora(
                                      fontSize: 10,
                                    ),),
                                  const SizedBox(width:15),
                                  CircleAvatar(radius:8,backgroundImage:AssetImage('images/rm.png')),
                                  const SizedBox(width:5),
                                  Text('Real Madrid',
                                    style: GoogleFonts.lora(
                                      fontSize: 10,
                                    ),),
                                ],

                              ),
                            )

                          ],
                        ),
                        Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(4.0),
                              child: Row(mainAxisAlignment:MainAxisAlignment.start,
                                children: [
                                  Text('Messi(17,87),   Neymar(34) ',
                                    style: GoogleFonts.lora(
                                      fontSize: 8,
                                    ),),
                                  const SizedBox(width:5),
                                  CircleAvatar(radius:6,backgroundImage:AssetImage('images/football.png')),
                                ],

                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(4.0),
                              child: Row(mainAxisAlignment:MainAxisAlignment.start,
                                children: [
                                  CircleAvatar(radius:6,backgroundImage:AssetImage('images/football.png')),

                                  const SizedBox(width:5),
                                  Text('Ronaldo(13),   Di Maria(77) ',
                                    style: GoogleFonts.lora(
                                      fontSize: 8,
                                    ),),
                                ],

                              ),
                            ),

                          ],
                        ),
                      ]
                  )

              ),
              Card(
                  child: Column(
                      children:[
                        Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(4.0),
                              child: Row(mainAxisAlignment:MainAxisAlignment.start,
                                children: [
                                  Text('FC Barcelona',
                                    style: GoogleFonts.lora(
                                      fontSize: 10,
                                    ),),
                                  const SizedBox(width:5),
                                  CircleAvatar(radius:8,backgroundImage:AssetImage('images/fcb.png')),
                                  const SizedBox(width:15),
                                  Text('3',
                                    style: GoogleFonts.lora(
                                      fontSize: 10,
                                    ),),
                                  Icon(CupertinoIcons.back,size:12)],

                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(4.0),
                              child: Row(mainAxisAlignment:MainAxisAlignment.center,
                                  children: [
                                    Text('FT',
                                      style: GoogleFonts.lora(
                                        fontSize: 10,
                                      ),),

                                  ]),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(4.0),
                              child: Row(mainAxisAlignment:MainAxisAlignment.end,
                                children: [
                                  Text('2',
                                    style: GoogleFonts.lora(
                                      fontSize: 10,
                                    ),),
                                  const SizedBox(width:15),
                                  CircleAvatar(radius:8,backgroundImage:AssetImage('images/rm.png')),
                                  const SizedBox(width:5),
                                  Text('Real Madrid',
                                    style: GoogleFonts.lora(
                                      fontSize: 10,
                                    ),),
                                ],

                              ),
                            )

                          ],
                        ),
                        Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(4.0),
                              child: Row(mainAxisAlignment:MainAxisAlignment.start,
                                children: [
                                  Text('Messi(17,87),   Neymar(34) ',
                                    style: GoogleFonts.lora(
                                      fontSize: 8,
                                    ),),
                                  const SizedBox(width:5),
                                  CircleAvatar(radius:6,backgroundImage:AssetImage('images/football.png')),
                                ],

                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(4.0),
                              child: Row(mainAxisAlignment:MainAxisAlignment.start,
                                children: [
                                  CircleAvatar(radius:6,backgroundImage:AssetImage('images/football.png')),

                                  const SizedBox(width:5),
                                  Text('Ronaldo(13),   Di Maria(77) ',
                                    style: GoogleFonts.lora(
                                      fontSize: 8,
                                    ),),
                                ],

                              ),
                            ),

                          ],
                        ),
                      ]
                  )

              ),
              Card(
                  child: Column(
                      children:[
                        Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(4.0),
                              child: Row(mainAxisAlignment:MainAxisAlignment.start,
                                children: [
                                  Text('FC Barcelona',
                                    style: GoogleFonts.lora(
                                      fontSize: 10,
                                    ),),
                                  const SizedBox(width:5),
                                  CircleAvatar(radius:8,backgroundImage:AssetImage('images/fcb.png')),
                                  const SizedBox(width:15),
                                  Text('3',
                                    style: GoogleFonts.lora(
                                      fontSize: 10,
                                    ),),
                                  Icon(CupertinoIcons.back,size:12)],

                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(4.0),
                              child: Row(mainAxisAlignment:MainAxisAlignment.center,
                                  children: [
                                    Text('FT',
                                      style: GoogleFonts.lora(
                                        fontSize: 10,
                                      ),),

                                  ]),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(4.0),
                              child: Row(mainAxisAlignment:MainAxisAlignment.end,
                                children: [
                                  Text('2',
                                    style: GoogleFonts.lora(
                                      fontSize: 10,
                                    ),),
                                  const SizedBox(width:15),
                                  CircleAvatar(radius:8,backgroundImage:AssetImage('images/rm.png')),
                                  const SizedBox(width:5),
                                  Text('Real Madrid',
                                    style: GoogleFonts.lora(
                                      fontSize: 10,
                                    ),),
                                ],

                              ),
                            )

                          ],
                        ),
                        Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(4.0),
                              child: Row(mainAxisAlignment:MainAxisAlignment.start,
                                children: [
                                  Text('Messi(17,87),   Neymar(34) ',
                                    style: GoogleFonts.lora(
                                      fontSize: 8,
                                    ),),
                                  const SizedBox(width:5),
                                  CircleAvatar(radius:6,backgroundImage:AssetImage('images/football.png')),
                                ],

                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(4.0),
                              child: Row(mainAxisAlignment:MainAxisAlignment.start,
                                children: [
                                  CircleAvatar(radius:6,backgroundImage:AssetImage('images/football.png')),

                                  const SizedBox(width:5),
                                  Text('Ronaldo(13),   Di Maria(77) ',
                                    style: GoogleFonts.lora(
                                      fontSize: 8,
                                    ),),
                                ],

                              ),
                            ),

                          ],
                        ),
                      ]
                  )

              ),
              Card(
                  child: Column(
                      children:[
                        Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(4.0),
                              child: Row(mainAxisAlignment:MainAxisAlignment.start,
                                children: [
                                  Text('FC Barcelona',
                                    style: GoogleFonts.lora(
                                      fontSize: 10,
                                    ),),
                                  const SizedBox(width:5),
                                  CircleAvatar(radius:8,backgroundImage:AssetImage('images/fcb.png')),
                                  const SizedBox(width:15),
                                  Text('3',
                                    style: GoogleFonts.lora(
                                      fontSize: 10,
                                    ),),
                                  Icon(CupertinoIcons.back,size:12)],

                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(4.0),
                              child: Row(mainAxisAlignment:MainAxisAlignment.center,
                                  children: [
                                    Text('FT',
                                      style: GoogleFonts.lora(
                                        fontSize: 10,
                                      ),),

                                  ]),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(4.0),
                              child: Row(mainAxisAlignment:MainAxisAlignment.end,
                                children: [
                                  Text('2',
                                    style: GoogleFonts.lora(
                                      fontSize: 10,
                                    ),),
                                  const SizedBox(width:15),
                                  CircleAvatar(radius:8,backgroundImage:AssetImage('images/rm.png')),
                                  const SizedBox(width:5),
                                  Text('Real Madrid',
                                    style: GoogleFonts.lora(
                                      fontSize: 10,
                                    ),),
                                ],

                              ),
                            )

                          ],
                        ),
                        Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(4.0),
                              child: Row(mainAxisAlignment:MainAxisAlignment.start,
                                children: [
                                  Text('Messi(17,87),   Neymar(34) ',
                                    style: GoogleFonts.lora(
                                      fontSize: 8,
                                    ),),
                                  const SizedBox(width:5),
                                  CircleAvatar(radius:6,backgroundImage:AssetImage('images/football.png')),
                                ],

                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(4.0),
                              child: Row(mainAxisAlignment:MainAxisAlignment.start,
                                children: [
                                  CircleAvatar(radius:6,backgroundImage:AssetImage('images/football.png')),

                                  const SizedBox(width:5),
                                  Text('Ronaldo(13),   Di Maria(77) ',
                                    style: GoogleFonts.lora(
                                      fontSize: 8,
                                    ),),
                                ],

                              ),
                            ),

                          ],
                        ),
                      ]
                  )

              ),

              Card(
                  child: Column(
                      children:[
                        Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(4.0),
                              child: Row(mainAxisAlignment:MainAxisAlignment.start,
                                children: [
                                  Text('FC Barcelona',
                                    style: GoogleFonts.lora(
                                      fontSize: 10,
                                    ),),
                                  const SizedBox(width:5),
                                  CircleAvatar(radius:8,backgroundImage:AssetImage('images/fcb.png')),
                                  const SizedBox(width:15),
                                  Text('3',
                                    style: GoogleFonts.lora(
                                      fontSize: 10,
                                    ),),
                                  Icon(CupertinoIcons.back,size:12)],

                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(4.0),
                              child: Row(mainAxisAlignment:MainAxisAlignment.center,
                                  children: [
                                    Text('FT',
                                      style: GoogleFonts.lora(
                                        fontSize: 10,
                                      ),),

                                  ]),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(4.0),
                              child: Row(mainAxisAlignment:MainAxisAlignment.end,
                                children: [
                                  Text('2',
                                    style: GoogleFonts.lora(
                                      fontSize: 10,
                                    ),),
                                  const SizedBox(width:15),
                                  CircleAvatar(radius:8,backgroundImage:AssetImage('images/rm.png')),
                                  const SizedBox(width:5),
                                  Text('Real Madrid',
                                    style: GoogleFonts.lora(
                                      fontSize: 10,
                                    ),),
                                ],

                              ),
                            )

                          ],
                        ),
                        Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(4.0),
                              child: Row(mainAxisAlignment:MainAxisAlignment.start,
                                children: [
                                  Text('Messi(17,87),   Neymar(34) ',
                                    style: GoogleFonts.lora(
                                      fontSize: 8,
                                    ),),
                                  const SizedBox(width:5),
                                  CircleAvatar(radius:6,backgroundImage:AssetImage('images/football.png')),
                                ],

                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(4.0),
                              child: Row(mainAxisAlignment:MainAxisAlignment.start,
                                children: [
                                  CircleAvatar(radius:6,backgroundImage:AssetImage('images/football.png')),

                                  const SizedBox(width:5),
                                  Text('Ronaldo(13),   Di Maria(77) ',
                                    style: GoogleFonts.lora(
                                      fontSize: 8,
                                    ),),
                                ],

                              ),
                            ),

                          ],
                        ),
                      ]
                  )

              ),
              Card(
                  child: Column(
                      children:[
                        Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(4.0),
                              child: Row(mainAxisAlignment:MainAxisAlignment.start,
                                children: [
                                  Text('FC Barcelona',
                                    style: GoogleFonts.lora(
                                      fontSize: 10,
                                    ),),
                                  const SizedBox(width:5),
                                  CircleAvatar(radius:8,backgroundImage:AssetImage('images/fcb.png')),
                                  const SizedBox(width:15),
                                  Text('3',
                                    style: GoogleFonts.lora(
                                      fontSize: 10,
                                    ),),
                                  Icon(CupertinoIcons.back,size:12)],

                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(4.0),
                              child: Row(mainAxisAlignment:MainAxisAlignment.center,
                                  children: [
                                    Text('FT',
                                      style: GoogleFonts.lora(
                                        fontSize: 10,
                                      ),),

                                  ]),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(4.0),
                              child: Row(mainAxisAlignment:MainAxisAlignment.end,
                                children: [
                                  Text('2',
                                    style: GoogleFonts.lora(
                                      fontSize: 10,
                                    ),),
                                  const SizedBox(width:15),
                                  CircleAvatar(radius:8,backgroundImage:AssetImage('images/rm.png')),
                                  const SizedBox(width:5),
                                  Text('Real Madrid',
                                    style: GoogleFonts.lora(
                                      fontSize: 10,
                                    ),),
                                ],

                              ),
                            )

                          ],
                        ),
                        Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(4.0),
                              child: Row(mainAxisAlignment:MainAxisAlignment.start,
                                children: [
                                  Text('Messi(17,87),   Neymar(34) ',
                                    style: GoogleFonts.lora(
                                      fontSize: 8,
                                    ),),
                                  const SizedBox(width:5),
                                  CircleAvatar(radius:6,backgroundImage:AssetImage('images/football.png')),
                                ],

                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(4.0),
                              child: Row(mainAxisAlignment:MainAxisAlignment.start,
                                children: [
                                  CircleAvatar(radius:6,backgroundImage:AssetImage('images/football.png')),

                                  const SizedBox(width:5),
                                  Text('Ronaldo(13),   Di Maria(77) ',
                                    style: GoogleFonts.lora(
                                      fontSize: 8,
                                    ),),
                                ],

                              ),
                            ),

                          ],
                        ),
                      ]
                  )

              ),

            ],
          ),
        )
      ],
    );
  }
}


