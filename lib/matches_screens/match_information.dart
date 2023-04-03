import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:media/bottom_Navigation/live_streaming.dart';
import 'package:media/colors/app_theme.dart';
import 'package:percent_indicator/linear_percent_indicator.dart';

class MatchInformation extends StatefulWidget {
  const MatchInformation({Key? key}) : super(key: key);

  @override
  State<MatchInformation> createState() => _MatchInformationState();
}

class _MatchInformationState extends State<MatchInformation>
    with TickerProviderStateMixin {
  @override
  Widget build(BuildContext context) {
    TabController _tabController = TabController(length: 3, vsync: this);
    return Scaffold(
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // backgroung
            Expanded(
              flex: 1,
              child: Stack(children: [
                Padding(
                  padding: const EdgeInsets.all(4.0),
                  child: Container(
                    width: double.infinity,
                    height: 200,
                    decoration: BoxDecoration(
                      color: AppTheme.colors.appbar,
                      borderRadius: BorderRadius.circular(15),
                    ),
                  ),
                ),
                Column(
                  children: [
                    const SizedBox(
                      height: 10,
                    ),
                    Center(
                      child: Text(
                        'LEAGE DESCRIPTION\n week 10',
                        style: GoogleFonts.lora(
                            fontWeight: FontWeight.bold,
                            fontSize: 18,
                            color: AppTheme.colors.background),
                      ),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    //match details
                    Container(
                      width: 270,
                      height: 170,
                      decoration: BoxDecoration(
                          color: AppTheme.colors.background,
                          borderRadius: BorderRadius.circular(35)),
                      child: Column(
                        children: [
                          const SizedBox(
                            height: 20,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Column(
                                children: [
                                  CircleAvatar(
                                    radius: 25,
                                    backgroundColor: Colors.transparent,
                                    backgroundImage:
                                        AssetImage('images/logo.jpeg'),
                                  ),
                                  Text(
                                    'Real Madrid',
                                    style: GoogleFonts.lora(
                                        color: AppTheme.colors.text,
                                        fontSize: 14,
                                        fontWeight: FontWeight.bold),
                                  ),
                                  Text(
                                    'Home',
                                    style: GoogleFonts.lora(
                                        color: AppTheme.colors.text,
                                        fontSize: 10,
                                        fontWeight: FontWeight.bold),
                                  ),
                                ],
                              ),
                              Column(
                                children: [
                                  Text(
                                    '0:3',
                                    style: GoogleFonts.lora(
                                      color: AppTheme.colors.text,
                                      fontWeight: FontWeight.bold,
                                      fontSize: 18,
                                    ),
                                  ),
                                  Text(
                                    '84`',
                                    style: GoogleFonts.lora(
                                      color: AppTheme.colors.text,
                                      fontWeight: FontWeight.bold,
                                      fontSize: 18,
                                    ),
                                  ),
                                ],
                              ),
                              Column(
                                children: [
                                  CircleAvatar(
                                    radius: 25,
                                    backgroundColor: Colors.transparent,
                                    backgroundImage:
                                        AssetImage('images/logo.jpeg'),
                                  ),
                                  Text(
                                    'FB Barcelona',
                                    style: GoogleFonts.lora(
                                        color: AppTheme.colors.text,
                                        fontSize: 14,
                                        fontWeight: FontWeight.bold),
                                  ),
                                  Text(
                                    'Away',
                                    style: GoogleFonts.lora(
                                        color: AppTheme.colors.text,
                                        fontSize: 10,
                                        fontWeight: FontWeight.bold),
                                  ),
                                ],
                              ),
                            ],
                          ),
                          const SizedBox(
                            height: 20,
                          ),
                          Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              InkWell(
                                onTap: () {
                                  Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (_) => LiveStreaming()));
                                },
                                child: Container(
                                  width: 120,
                                  height: 45,
                                  decoration: BoxDecoration(
                                    color: AppTheme.colors.text,
                                    borderRadius: BorderRadius.circular(5),
                                  ),
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    children: [
                                      Icon(
                                        CupertinoIcons.play_circle,
                                        color: AppTheme.colors.background,
                                      ),
                                      Text(
                                        'WATCH',
                                        style: GoogleFonts.lora(
                                            fontSize: 14,
                                            color: AppTheme.colors.background),
                                      )
                                    ],
                                  ),
                                ),
                              )
                            ],
                          )
                        ],
                      ),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                  ],
                ),
              ]),
            ),
            Expanded(
              flex: 2,
              child:  Padding(
                padding: const EdgeInsets.all(4.0),
                child: Card(

                  color: AppTheme.colors.container,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(12),
                  ),
                  child: Container(

                    child: Column(
                      children: [
                        Card(color: AppTheme.colors.text,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(12),
                          ),
                          child: TabBar(
                            indicator: BoxDecoration(
                                borderRadius: BorderRadius.circular(12),
                                color: AppTheme.colors.appbar),
                            controller: _tabController,
                            isScrollable: true,

                            labelPadding: EdgeInsets.symmetric(horizontal: 40),
                            tabs: [
                              Tab(
                                child: Text(
                                  'STATS',
                                  style: GoogleFonts.lora(
                                      color: AppTheme.colors.background,
                                      fontSize: 12),
                                ),
                              ),
                              Tab(
                                child: Text(
                                  'Line-Up',
                                  style: GoogleFonts.lora(
                                      color: AppTheme.colors.background,
                                      fontSize: 12),
                                ),
                              ),
                              Tab(
                                child: Text(
                                  'Summary',
                                  style: GoogleFonts.lora(
                                      color: AppTheme.colors.background,
                                      fontSize: 12),
                                ),
                              ),
                            ],
                          ),
                        ),

                        Expanded(
                          child: TabBarView(
                            controller: _tabController,
                            children: [
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Column(
                                  children: [
                                    Column(
                                      children: [
                                        Row(mainAxisAlignment: MainAxisAlignment.center,
                                          children: [
                                            Text('2',
                                              style:GoogleFonts.lora(
                                                  fontSize: 14,
                                                  color: AppTheme.colors.text
                                              ), ),
                                            const SizedBox(width: 100,),
                                            Text('Shots on Goal',
                                              style:GoogleFonts.lora(
                                                  fontSize: 14,
                                                  color: AppTheme.colors.text
                                              ), ),
                                            const SizedBox(width: 100,),
                                            Text('6',
                                              style:GoogleFonts.lora(
                                                  fontSize: 14,
                                                  color: AppTheme.colors.appbar
                                              ), ),
                                          ],
                                        ),
                                       const SizedBox(height: 5,),
                                       Row(
                                         children: [
                                           Expanded(
                                             flex:1,
                                             child: LinearPercentIndicator(
                                             lineHeight: 6,
                                               animation: true,
                                               animationDuration: 1000,
                                               percent: 0.7,
                                               progressColor: AppTheme.colors.appbar,
                                               backgroundColor: AppTheme.colors.text,
                                               barRadius: Radius.circular(8),

                                           ),),
                                           Expanded(
                                             flex:1,
                                             child: LinearPercentIndicator(
                                               lineHeight: 6,
                                               barRadius: Radius.circular(8),
                                               animation: true,
                                               animationDuration: 1000,
                                               progressColor: AppTheme.colors.appbar,
                                               percent: 0.7,
                                               backgroundColor: AppTheme.colors.background,
                                             ),),
                                         ],
                                       )
                                      ],
                                    ),
                                    const SizedBox(height: 15,),
                                    Column(
                                      children: [
                                        Row(mainAxisAlignment: MainAxisAlignment.center,
                                          children: [
                                            Text('2',
                                              style:GoogleFonts.lora(
                                                  fontSize: 14,
                                                  color: AppTheme.colors.text
                                              ), ),
                                            const SizedBox(width: 128,),
                                            Text('Shots',
                                              style:GoogleFonts.lora(
                                                  fontSize: 14,
                                                  color: AppTheme.colors.text
                                              ), ),
                                            const SizedBox(width: 128,),
                                            Text('6',
                                              style:GoogleFonts.lora(
                                                  fontSize: 14,
                                                  color: AppTheme.colors.appbar
                                              ), ),
                                          ],
                                        ),
                                        const SizedBox(height: 5,),
                                        Row(
                                          children: [
                                            Expanded(
                                              flex:1,
                                              child: LinearPercentIndicator(
                                                lineHeight: 6,
                                                animation: true,
                                                animationDuration: 1000,
                                                percent: 0.7,
                                                progressColor: AppTheme.colors.appbar,
                                                backgroundColor: AppTheme.colors.text,
                                                barRadius: Radius.circular(8),

                                              ),),
                                            Expanded(
                                              flex:1,
                                              child: LinearPercentIndicator(
                                                lineHeight: 6,
                                                barRadius: Radius.circular(8),
                                                animation: true,
                                                animationDuration: 1000,
                                                progressColor: AppTheme.colors.appbar,
                                                percent: 0.7,
                                                backgroundColor: AppTheme.colors.background,
                                              ),),
                                          ],
                                        )
                                      ],
                                    ),
                                    const SizedBox(height: 15,),
                                    Column(
                                      children: [
                                        Row(mainAxisAlignment: MainAxisAlignment.center,
                                          children: [
                                            Text('30%',
                                              style:GoogleFonts.lora(
                                                  fontSize: 14,
                                                  color: AppTheme.colors.text
                                              ), ),
                                            const SizedBox(width: 100,),
                                            Text('Possession',
                                              style:GoogleFonts.lora(
                                                  fontSize: 14,
                                                  color: AppTheme.colors.text
                                              ), ),
                                            const SizedBox(width: 100,),
                                            Text('70%',
                                              style:GoogleFonts.lora(
                                                  fontSize: 14,
                                                  color: AppTheme.colors.appbar
                                              ), ),
                                          ],
                                        ),
                                        const SizedBox(height: 5,),
                                        Row(
                                          children: [
                                            Expanded(
                                              flex:1,
                                              child: LinearPercentIndicator(
                                                lineHeight: 6,
                                                animation: true,
                                                animationDuration: 1000,
                                                percent: 0.7,
                                                progressColor: AppTheme.colors.appbar,
                                                backgroundColor: AppTheme.colors.text,
                                                barRadius: Radius.circular(8),

                                              ),),
                                            Expanded(
                                              flex:1,
                                              child: LinearPercentIndicator(
                                                lineHeight: 6,
                                                barRadius: Radius.circular(8),
                                                animation: true,
                                                animationDuration: 1000,
                                                progressColor: AppTheme.colors.appbar,
                                                percent: 0.7,
                                                backgroundColor: AppTheme.colors.background,
                                              ),),
                                          ],
                                        )
                                      ],
                                    ),
                                    const SizedBox(height: 15,),
                                    Column(
                                      children: [
                                        Row(mainAxisAlignment: MainAxisAlignment.center,
                                          children: [
                                            Text('2',
                                              style:GoogleFonts.lora(
                                                  fontSize: 14,
                                                  color: AppTheme.colors.text
                                              ), ),
                                            const SizedBox(width: 110,),
                                            Text('Yellow Card',
                                              style:GoogleFonts.lora(
                                                  fontSize: 14,
                                                  color: AppTheme.colors.text
                                              ), ),
                                            const SizedBox(width: 110,),
                                            Text('2',
                                              style:GoogleFonts.lora(
                                                  fontSize: 14,
                                                  color: AppTheme.colors.appbar
                                              ), ),
                                          ],
                                        ),
                                        const SizedBox(height: 5,),
                                        Row(
                                          children: [
                                            Expanded(
                                              flex:1,
                                              child: LinearPercentIndicator(
                                                lineHeight: 6,
                                                animation: true,
                                                animationDuration: 1000,
                                                percent: 0.7,
                                                progressColor: AppTheme.colors.appbar,
                                                backgroundColor: AppTheme.colors.text,
                                                barRadius: Radius.circular(8),

                                              ),),
                                            Expanded(
                                              flex:1,
                                              child: LinearPercentIndicator(
                                                lineHeight: 6,
                                                barRadius: Radius.circular(8),
                                                animation: true,
                                                animationDuration: 1000,
                                                progressColor: AppTheme.colors.appbar,
                                                percent: 0.7,
                                                backgroundColor: AppTheme.colors.background,
                                              ),),
                                          ],
                                        )
                                      ],
                                    ),
                                    const SizedBox(height: 15,),
                                    Column(
                                      children: [
                                        Row(mainAxisAlignment: MainAxisAlignment.center,
                                          children: [
                                            Text('0',
                                              style:GoogleFonts.lora(
                                                  fontSize: 14,
                                                  color: AppTheme.colors.text
                                              ), ),
                                            const SizedBox(width: 105,),
                                            Text('Corner Kicks',
                                              style:GoogleFonts.lora(
                                                  fontSize: 14,
                                                  color: AppTheme.colors.text
                                              ), ),
                                            const SizedBox(width: 105,),
                                            Text('2',
                                              style:GoogleFonts.lora(
                                                  fontSize: 14,
                                                  color: AppTheme.colors.appbar
                                              ), ),
                                          ],
                                        ),
                                        const SizedBox(height: 5,),
                                        Row(
                                          children: [
                                            Expanded(
                                              flex:1,
                                              child: LinearPercentIndicator(
                                                lineHeight: 6,
                                                animation: true,
                                                animationDuration: 1000,
                                                percent: 0.7,
                                                progressColor: AppTheme.colors.appbar,
                                                backgroundColor: AppTheme.colors.text,
                                                barRadius: Radius.circular(8),

                                              ),),
                                            Expanded(
                                              flex:1,
                                              child: LinearPercentIndicator(
                                                lineHeight: 6,
                                                barRadius: Radius.circular(8),
                                                animation: true,
                                                animationDuration: 1000,
                                                progressColor: AppTheme.colors.appbar,
                                                percent: 0.7,
                                                backgroundColor: AppTheme.colors.background,
                                              ),),
                                          ],
                                        )
                                      ],
                                    ),
                                    const SizedBox(height: 15,),
                                    Column(
                                      children: [
                                        Row(mainAxisAlignment: MainAxisAlignment.center,
                                          children: [
                                            Text('2',
                                              style:GoogleFonts.lora(
                                                  fontSize: 14,
                                                  color: AppTheme.colors.text
                                              ), ),
                                            const SizedBox(width: 130,),
                                            Text('Fouls',
                                              style:GoogleFonts.lora(
                                                  fontSize: 14,
                                                  color: AppTheme.colors.text
                                              ), ),
                                            const SizedBox(width: 130,),
                                            Text('6',
                                              style:GoogleFonts.lora(
                                                  fontSize: 14,
                                                  color: AppTheme.colors.appbar
                                              ), ),
                                          ],
                                        ),
                                        const SizedBox(height: 5,),
                                        Row(
                                          children: [
                                            Expanded(
                                              flex:1,
                                              child: LinearPercentIndicator(
                                                lineHeight: 6,
                                                animation: true,
                                                animationDuration: 1000,
                                                percent: 0.7,
                                                progressColor: AppTheme.colors.appbar,
                                                backgroundColor: AppTheme.colors.text,
                                                barRadius: Radius.circular(8),

                                              ),),
                                            Expanded(
                                              flex:1,
                                              child: LinearPercentIndicator(
                                                lineHeight: 6,
                                                barRadius: Radius.circular(8),
                                                animation: true,
                                                animationDuration: 1000,
                                                progressColor: AppTheme.colors.appbar,
                                                percent: 0.7,
                                                backgroundColor: AppTheme.colors.background,
                                              ),),
                                          ],
                                        )
                                      ],
                                    ),
                                    const SizedBox(height: 15,),
                                    Column(
                                      children: [
                                        Row(mainAxisAlignment: MainAxisAlignment.center,
                                          children: [
                                            Text('10',
                                              style:GoogleFonts.lora(
                                                  fontSize: 14,
                                                  color: AppTheme.colors.text
                                              ), ),
                                            const SizedBox(width: 120,),
                                            Text('Crosses',
                                              style:GoogleFonts.lora(
                                                  fontSize: 14,
                                                  color: AppTheme.colors.text
                                              ), ),
                                            const SizedBox(width: 120,),
                                            Text('23',
                                              style:GoogleFonts.lora(
                                                  fontSize: 14,
                                                  color: AppTheme.colors.appbar
                                              ), ),
                                          ],
                                        ),
                                        const SizedBox(height: 5,),
                                        Row(
                                          children: [
                                            Expanded(
                                              flex:1,
                                              child: LinearPercentIndicator(
                                                lineHeight: 6,
                                                animation: true,
                                                animationDuration: 1000,
                                                percent: 0.7,
                                                progressColor: AppTheme.colors.appbar,
                                                backgroundColor: AppTheme.colors.text,
                                                barRadius: Radius.circular(8),

                                              ),),
                                            Expanded(
                                              flex:1,
                                              child: LinearPercentIndicator(
                                                lineHeight: 6,
                                                barRadius: Radius.circular(8),
                                                animation: true,
                                                animationDuration: 1000,
                                                progressColor: AppTheme.colors.appbar,
                                                percent: 0.7,
                                                backgroundColor: AppTheme.colors.background,
                                              ),),
                                          ],
                                        )
                                      ],
                                    ),
                                    const SizedBox(height: 15,),
                                    Column(
                                      children: [
                                        Row(mainAxisAlignment: MainAxisAlignment.center,
                                          children: [
                                            Text('3',
                                              style:GoogleFonts.lora(
                                                  fontSize: 14,
                                                  color: AppTheme.colors.text
                                              ), ),
                                            const SizedBox(width: 90,),
                                            Text('Goal Keeper Saved',
                                              style:GoogleFonts.lora(
                                                  fontSize: 14,
                                                  color: AppTheme.colors.text
                                              ), ),
                                            const SizedBox(width: 90,),
                                            Text('2',
                                              style:GoogleFonts.lora(
                                                  fontSize: 14,
                                                  color: AppTheme.colors.appbar
                                              ), ),
                                          ],
                                        ),
                                        const SizedBox(height: 5,),
                                        Row(
                                          children: [
                                            Expanded(
                                              flex:1,
                                              child: LinearPercentIndicator(
                                                lineHeight: 6,
                                                animation: true,
                                                animationDuration: 1000,
                                                percent: 0.7,
                                                progressColor: AppTheme.colors.appbar,
                                                backgroundColor: AppTheme.colors.text,
                                                barRadius: Radius.circular(8),

                                              ),),
                                            Expanded(
                                              flex:1,
                                              child: LinearPercentIndicator(
                                                lineHeight: 6,
                                                barRadius: Radius.circular(8),
                                                animation: true,
                                                animationDuration: 1000,
                                                progressColor: AppTheme.colors.appbar,
                                                percent: 0.7,
                                                backgroundColor: AppTheme.colors.background,
                                              ),),
                                          ],
                                        )
                                      ],
                                    ),
                                    const SizedBox(height: 15,),
                                    Column(
                                      children: [
                                        Row(mainAxisAlignment: MainAxisAlignment.center,
                                          children: [
                                            Text('10',
                                              style:GoogleFonts.lora(
                                                  fontSize: 14,
                                                  color: AppTheme.colors.text
                                              ), ),
                                            const SizedBox(width: 120,),
                                            Text('Goal Kicks',
                                              style:GoogleFonts.lora(
                                                  fontSize: 14,
                                                  color: AppTheme.colors.text
                                              ), ),
                                            const SizedBox(width: 120,),
                                            Text('2',
                                              style:GoogleFonts.lora(
                                                  fontSize: 14,
                                                  color: AppTheme.colors.appbar
                                              ), ),
                                          ],
                                        ),
                                        const SizedBox(height: 5,),
                                        Row(
                                          children: [
                                            Expanded(
                                              flex:1,
                                              child: LinearPercentIndicator(
                                                lineHeight: 6,
                                                animation: true,
                                                animationDuration: 1000,
                                                percent: 0.7,
                                                progressColor: AppTheme.colors.appbar,
                                                backgroundColor: AppTheme.colors.text,
                                                barRadius: Radius.circular(8),

                                              ),),
                                            Expanded(
                                              flex:1,
                                              child: LinearPercentIndicator(
                                                lineHeight: 6,
                                                barRadius: Radius.circular(8),
                                                animation: true,
                                                animationDuration: 1000,
                                                progressColor: AppTheme.colors.appbar,
                                                percent: 0.7,
                                                backgroundColor: AppTheme.colors.background,
                                              ),),
                                          ],
                                        )
                                      ],
                                    ),




                                  ],
                                ),
                              )
                            ],
                          ),
                        )


                      ],
                    ),

                  ),
                ),
              ),
            ),

          ],
        ),
      ),
    );
  }
}