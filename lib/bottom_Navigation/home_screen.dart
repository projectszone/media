import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:media/bottom_Navigation/live_streaming.dart';
import 'package:media/matches_screens/match_information.dart';
import 'package:media/profile_management/profile_management.dart';
import 'package:media/colors/app_theme.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> with TickerProviderStateMixin {
  // contoller
  PageController _pageController = PageController();

  @override
  Widget build(BuildContext context) {
    TabController _tabController = TabController(length: 4, vsync: this);
    return Scaffold(
      backgroundColor: AppTheme.colors.background,
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
// app bar
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
                      child: Column(crossAxisAlignment: CrossAxisAlignment.center,mainAxisAlignment: MainAxisAlignment.center,
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
                      child: Column(crossAxisAlignment: CrossAxisAlignment.center,mainAxisAlignment: MainAxisAlignment.center,
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
                      child: Column(crossAxisAlignment: CrossAxisAlignment.center,mainAxisAlignment: MainAxisAlignment.center,
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
                      child: Column(crossAxisAlignment: CrossAxisAlignment.center,mainAxisAlignment: MainAxisAlignment.center,
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
// Live matches Card
            Container(
              width: double.infinity,
              height: 180,
              child: Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Stack(children: [
                      InkWell(
                        onTap:(){
                          Navigator.push(context, MaterialPageRoute(builder: (_)=>LiveStreaming()));
                        },
                        child: Container(
                          width: 80,
                          height: 150,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(15),
                              image: DecorationImage(
                                  image: AssetImage('images/karim.jpg'),
                                  fit: BoxFit.cover)),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(4.0),
                        child: Container(
                          width: 40,
                          height: 20,
                          decoration: BoxDecoration(
                            color: Colors.red,
                            borderRadius: BorderRadius.circular(8),
                          ),
                          child: Center(
                            child: Text(
                              'LIVE',
                              style: GoogleFonts.lora(
                                  fontSize: 10,
                                  color: AppTheme.colors.background),
                            ),
                          ),
                        ),
                      ),
                    ]),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Stack(children: [
                      InkWell(onTap:(){
                        Navigator.push(context, MaterialPageRoute(builder: (_)=>LiveStreaming()));
                      },
                        child: Container(
                          width: 80,
                          height: 150,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(15),
                              image: DecorationImage(
                                  image: AssetImage('images/messi.jpg'),
                                  fit: BoxFit.cover)),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(4.0),
                        child: Container(
                          width: 40,
                          height: 20,
                          decoration: BoxDecoration(
                            color: Colors.red,
                            borderRadius: BorderRadius.circular(8),
                          ),
                          child: Center(
                            child: Text(
                              'LIVE',
                              style: GoogleFonts.lora(
                                  fontSize: 10,
                                  color: AppTheme.colors.background),
                            ),
                          ),
                        ),
                      ),
                    ]),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Stack(children: [
                      InkWell(onTap:(){
                        Navigator.push(context, MaterialPageRoute(builder: (_)=>LiveStreaming()));
                      },
                        child: Container(
                          width: 80,
                          height: 150,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(15),
                              image: DecorationImage(
                                  image: AssetImage('images/ronaldo.jpg'),
                                  fit: BoxFit.cover)),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(4.0),
                        child: Container(
                          width: 40,
                          height: 20,
                          decoration: BoxDecoration(
                            color: Colors.red,
                            borderRadius: BorderRadius.circular(8),
                          ),
                          child: Center(
                            child: Text(
                              'LIVE',
                              style: GoogleFonts.lora(
                                  fontSize: 10,
                                  color: AppTheme.colors.background),
                            ),
                          ),
                        ),
                      ),
                    ]),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Stack(children: [
                      InkWell(onTap:(){
                        Navigator.push(context, MaterialPageRoute(builder: (_)=>LiveStreaming()));
                      },
                        child: Container(
                          width: 80,
                          height: 150,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(15),
                              image: DecorationImage(
                                  image: AssetImage('images/mbappe.jpg'),
                                  fit: BoxFit.cover)),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(4.0),
                        child: Container(
                          width: 40,
                          height: 20,
                          decoration: BoxDecoration(
                            color: Colors.red,
                            borderRadius: BorderRadius.circular(8),
                          ),
                          child: Center(
                            child: Text(
                              'LIVE',
                              style: GoogleFonts.lora(
                                  fontSize: 10,
                                  color: AppTheme.colors.background),
                            ),
                          ),
                        ),
                      ),
                    ]),
                  ),
                ],
              ),
            ),
  //tab bar view
            Expanded(
                child: TabBarView(
              controller: _tabController,
              children: [
                ListView.builder(
                  itemCount:2,
                  itemBuilder: (context,index){
                  return InkWell(
                    onTap:(){
                      Navigator.push(context, MaterialPageRoute(builder: (_)=>MatchInformation()));
                    },
                    child: Card(
                    color: AppTheme.colors.background,
                      child: Column(mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Image(image: AssetImage('images/st2.jpg'),
                            fit: BoxFit.fill,


                          ),
                          Container(
                            decoration: BoxDecoration(
                              color: Colors.grey.withOpacity(0.3),
                            ),
                            child: Row(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Column(mainAxisAlignment: MainAxisAlignment.start,
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Text('Team A vs Team B',style: GoogleFonts.lora(fontWeight: FontWeight.bold),),
                                      Row(
                                        children: [
                                          Text('Tuesday 9:00',style: GoogleFonts.lora(fontWeight: FontWeight.bold),),
                                          const SizedBox(width: 200,),
                                          Text('Football',style: GoogleFonts.lora(fontWeight: FontWeight.bold),),
                                        ],
                                      )
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          )
                        ],
                      )
                    ),
                  );}
                ),
                ListView.builder(
                    itemCount:2,
                    itemBuilder: (context,index){
                      return InkWell(onTap:(){
                        Navigator.push(context, MaterialPageRoute(builder: (_)=>MatchInformation()));
                      },
                        child: Card(
                            color: AppTheme.colors.background,
                            child: Column(mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Image(image: AssetImage('images/st3.jpg'),
                                  fit: BoxFit.fill,


                                ),
                                Container(
                                  decoration: BoxDecoration(
                                    color: Colors.grey.withOpacity(0.3),
                                  ),
                                  child: Row(
                                    children: [
                                      Padding(
                                        padding: const EdgeInsets.all(8.0),
                                        child: Column(mainAxisAlignment: MainAxisAlignment.start,
                                          crossAxisAlignment: CrossAxisAlignment.start,
                                          children: [
                                            Text('Team A vs Team B',style: GoogleFonts.lora(fontWeight: FontWeight.bold),),
                                            Row(
                                              children: [
                                                Text('Tuesday 9:00',style: GoogleFonts.lora(fontWeight: FontWeight.bold),),
                                                const SizedBox(width: 200,),
                                                Text('BasketBall',style: GoogleFonts.lora(fontWeight: FontWeight.bold),),
                                              ],
                                            )
                                          ],
                                        ),
                                      ),
                                    ],
                                  ),
                                )
                              ],
                            )
                        ),
                      );}
                ),
                ListView.builder(
                    itemCount:2,
                    itemBuilder: (context,index){
                      return InkWell(
                        onTap:(){
                          Navigator.push(context, MaterialPageRoute(builder: (_)=>MatchInformation()));
                        },
                        child: Card(
                            color: AppTheme.colors.background,
                            child: Column(mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Image(image: AssetImage('images/st5.jpg'),
                                  fit: BoxFit.fill,


                                ),
                                Container(
                                  decoration: BoxDecoration(
                                    color: Colors.grey.withOpacity(0.3),
                                  ),
                                  child: Row(
                                    children: [
                                      Padding(
                                        padding: const EdgeInsets.all(8.0),
                                        child: Column(mainAxisAlignment: MainAxisAlignment.start,
                                          crossAxisAlignment: CrossAxisAlignment.start,
                                          children: [
                                            Text('Team A vs Team B',style: GoogleFonts.lora(fontWeight: FontWeight.bold),),
                                            Row(
                                              children: [
                                                Text('Tuesday 9:00',style: GoogleFonts.lora(fontWeight: FontWeight.bold),),
                                                const SizedBox(width: 200,),
                                                Text('Baseball',style: GoogleFonts.lora(fontWeight: FontWeight.bold),),
                                              ],
                                            )
                                          ],
                                        ),
                                      ),
                                    ],
                                  ),
                                )
                              ],
                            )
                        ),
                      );}
                ),
                ListView.builder(
                    itemCount:2,
                    itemBuilder: (context,index){
                      return InkWell(
                        onTap:(){
                          Navigator.push(context, MaterialPageRoute(builder: (_)=>MatchInformation()));
                        },
                        child: Card(
                            color: AppTheme.colors.background,
                            child: Column(mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Image(image: AssetImage('images/st4.jpg'),
                                  fit: BoxFit.fill,


                                ),
                                Container(
                                  decoration: BoxDecoration(
                                    color: Colors.grey.withOpacity(0.3),
                                  ),
                                  child: Row(
                                    children: [
                                      Padding(
                                        padding: const EdgeInsets.all(8.0),
                                        child: Column(mainAxisAlignment: MainAxisAlignment.start,
                                          crossAxisAlignment: CrossAxisAlignment.start,
                                          children: [
                                            Text('Team A vs Team B',style: GoogleFonts.lora(fontWeight: FontWeight.bold),),
                                            Row(
                                              children: [
                                                Text('Tuesday 9:00',style: GoogleFonts.lora(fontWeight: FontWeight.bold),),
                                                const SizedBox(width: 200,),
                                                Text('Hockey',style: GoogleFonts.lora(fontWeight: FontWeight.bold),),
                                              ],
                                            )
                                          ],
                                        ),
                                      ),
                                    ],
                                  ),
                                )
                              ],
                            )
                        ),
                      );}
                ),
                
              ],
            ))
          ],
        ),
      ),
    );
  }
}
