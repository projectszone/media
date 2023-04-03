import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:media/colors/app_theme.dart';

class MatchInformation extends StatefulWidget {
  const MatchInformation({Key? key}) : super(key: key);

  @override
  State<MatchInformation> createState() => _MatchInformationState();
}

class _MatchInformationState extends State<MatchInformation> with TickerProviderStateMixin {
  @override
  Widget build(BuildContext context) {
    TabController _tabController = TabController(length: 3, vsync: this);
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
    // backgroung
            Padding(
              padding: const EdgeInsets.all(4.0),
              child: Stack(
                children:[
                  Container(
                  width: double.infinity,
                  height: 200,
                  decoration: BoxDecoration(
                    color: AppTheme.colors.appbar,
                    borderRadius: BorderRadius.circular(15),
                  ),
                ),
                  Column(
                    children: [
                      const SizedBox(height: 20,),
                      Center(
                        child: Text('LEAGE DESCRIPTION\n week 10',
                        style: GoogleFonts.lora(fontWeight: FontWeight.bold,
                        fontSize: 18,color: AppTheme.colors.background),
                        ),
                      ),
                      const SizedBox(height: 20,),
   //match details
                      Container(
                        width: 270,
                        height: 170,
                        decoration: BoxDecoration(
                            color: AppTheme.colors.background,
                            borderRadius: BorderRadius.circular(35)
                        ),child: Column(

                        children: [
                          const SizedBox(height: 20,),
                          Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Column(
                                children: [
                                  CircleAvatar(
                                    radius: 25,
                                    backgroundColor: Colors.transparent,
                                    backgroundImage: AssetImage('images/logo.jpeg'),
                                  ),
                                  Text('Real Madrid',
                                  style:GoogleFonts.lora(
                                    color: AppTheme.colors.text,
                                    fontSize: 14,
                                    fontWeight: FontWeight.bold
                                  ),),
                                  Text('Home',
                                    style:GoogleFonts.lora(
                                        color: AppTheme.colors.text,
                                        fontSize: 10,
                                        fontWeight: FontWeight.bold
                                    ),),
                                ],
                              ),
                              Column(
                                children: [
                                  Text('0:3',
                                  style: GoogleFonts.lora(
                                    color: AppTheme.colors.text,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 18,
                                  ),),
                                  Text('84`',
                                    style: GoogleFonts.lora(
                                      color: AppTheme.colors.text,
                                      fontWeight: FontWeight.bold,
                                      fontSize: 18,
                                    ),),
                                ],
                              ),
                              Column(
                                children: [
                                  CircleAvatar(
                                    radius: 25,
                                    backgroundColor: Colors.transparent,
                                    backgroundImage: AssetImage('images/logo.jpeg'),
                                  ),
                                  Text('FB Barcelona',
                                    style:GoogleFonts.lora(
                                        color: AppTheme.colors.text,
                                        fontSize: 14,
                                        fontWeight: FontWeight.bold
                                    ),),
                                  Text('Away',
                                    style:GoogleFonts.lora(
                                        color: AppTheme.colors.text,
                                        fontSize: 10,
                                        fontWeight: FontWeight.bold
                                    ),),
                                ],
                              ),
                            ],
                          ),
                          const SizedBox(height: 20,),
                          Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Container(
                                width: 120,
                                height: 45,
                                decoration: BoxDecoration(
                                  color: AppTheme.colors.text,
                                  borderRadius: BorderRadius.circular(5),
                                ),child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Icon(CupertinoIcons.play_circle,color: AppTheme.colors.background,),
                                  Text('WATCH',style: GoogleFonts.lora(fontSize: 14,color: AppTheme.colors.background),)
                                ],
                              ),
                              )
                            ],
                          )
                        ],
                      ),
                      ),
                      const SizedBox(height: 10,),


                      Container(
                        width: double.infinity,
                        height: 470,
                        decoration: BoxDecoration(
                            color: AppTheme.colors.container,
                            borderRadius: BorderRadius.circular(35)
                        ),
                        child: Column(
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(4.0),
                              child: Card(
                                elevation: 5,
                                color: AppTheme.colors.text,
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(12),
                                ),
                                child: Container(
                                  child: Column(
                                    children: [
                                      TabBar(
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

                                    ],
                                  ),
                                  
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),


                    ],
                  ),
                  

                ]
              ),

            ),


          ],
        ),
      ),
    );
  }
}
