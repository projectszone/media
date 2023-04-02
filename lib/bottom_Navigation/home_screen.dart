import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:media/profile_management/profile_management.dart';
import 'package:media/colors/app_theme.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  // contoller
  PageController _pageController = PageController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppTheme.colors.background,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
// app bar
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Text(
                    'MEDIA',
                    style: GoogleFonts.lora(
                        fontWeight: FontWeight.bold,
                        fontSize: 24,
                        color: AppTheme.colors.text),
                  ),
                  const SizedBox(
                    width: 150,
                  ),
                  IconButton(
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (_) => ProfileManagement()));
                      },
                      icon: Icon(
                        CupertinoIcons.profile_circled,
                        color: AppTheme.colors.text,
                        size: 24,
                      ))
                ],
              ),
//page view
              Container(
                width: double.infinity,
                height: 550,
                child: Stack(
                  children:[
                    PageView(
                    controller: _pageController,
                    children: [
                    Container(
                      decoration: BoxDecoration(
                          image: DecorationImage(
                              image: AssetImage('images/karim.jpg'),
                              fit: BoxFit.cover)),
                      child: Column(
                        children: [
                          const SizedBox(
                            height: 200,
                          ),
                          Text('LEAGUE NAME',
                            style: GoogleFonts.lora(
                              fontSize: 28,
                              color: AppTheme.colors.background,
                              fontWeight: FontWeight.bold
                            ),
                          ),
                          const SizedBox(
                            height: 5,
                          ),
                          Text('LEAGUE DESCRIPTION',
                            style: GoogleFonts.lora(
                                fontSize: 18,
                                color: Colors.tealAccent,
                                fontWeight: FontWeight.bold
                            ),
                          ),
                          const SizedBox(
                            height: 150,
                          ),
                          Container(
                            height: 40,
                            width: 120,
                            decoration: BoxDecoration(
                                color: AppTheme.colors.background,
                                borderRadius: BorderRadius.circular(45),
                                boxShadow: [
                                  BoxShadow(
                                      spreadRadius: 2,
                                      color: AppTheme.colors.text
                                  )
                                ]
                            ),
                            child: Center(
                              child: Text('Watch Now',
                                style: GoogleFonts.lora(
                                    color: AppTheme.colors.appbar,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 18
                                ),),
                            ),
                          )
                        ],
                      ),
                    ),
                    Container(
                      decoration: BoxDecoration(
                          image: DecorationImage(
                              image: AssetImage('images/messi.jpg'),
                              fit: BoxFit.fill)),
                      child: Column(
                        children: [
                          const SizedBox(
                            height: 200,
                          ),
                          Text('LEAGUE NAME',
                            style: GoogleFonts.lora(
                                fontSize: 28,
                                color: AppTheme.colors.background,
                                fontWeight: FontWeight.bold
                            ),
                          ),
                          const SizedBox(
                            height: 5,
                          ),
                          Text('LEAGUE DESCRIPTION',
                            style: GoogleFonts.lora(
                                fontSize: 18,
                                color: Colors.tealAccent,
                                fontWeight: FontWeight.bold
                            ),
                          ),
                          const SizedBox(
                            height: 150,
                          ),
                          Container(
                            height: 40,
                            width: 120,
                            decoration: BoxDecoration(
                                color: AppTheme.colors.background,
                                borderRadius: BorderRadius.circular(45),
                                boxShadow: [
                                  BoxShadow(
                                      spreadRadius: 2,
                                      color: AppTheme.colors.text
                                  )
                                ]
                            ),
                            child: Center(
                              child: Text('Watch Now',
                                style: GoogleFonts.lora(
                                    color: AppTheme.colors.appbar,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 18
                                ),),
                            ),
                          )
                        ],
                      ),
                    ),
                    Container(
                      decoration: BoxDecoration(
                          image: DecorationImage(
                              image: AssetImage('images/mbappe.jpg'),
                              fit: BoxFit.cover)),
                      child: Column(
                        children: [
                          const SizedBox(
                            height: 200,
                          ),
                          Text('LEAGUE NAME',
                            style: GoogleFonts.lora(
                                fontSize: 28,
                                color: AppTheme.colors.background,
                                fontWeight: FontWeight.bold
                            ),
                          ),
                          const SizedBox(
                            height: 5,
                          ),
                          Text('LEAGUE DESCRIPTION',
                            style: GoogleFonts.lora(
                                fontSize: 18,
                                color: Colors.tealAccent,
                                fontWeight: FontWeight.bold
                            ),
                          ),
                          const SizedBox(
                            height: 150,
                          ),
                          Container(
                            height: 40,
                            width: 120,
                            decoration: BoxDecoration(
                                color: AppTheme.colors.background,
                                borderRadius: BorderRadius.circular(45),
                                boxShadow: [
                                  BoxShadow(
                                      spreadRadius: 2,
                                      color: AppTheme.colors.text
                                  )
                                ]
                            ),
                            child: Center(
                              child: Text('Watch Now',
                                style: GoogleFonts.lora(
                                    color: AppTheme.colors.appbar,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 18
                                ),),
                            ),
                          )
                        ],
                      ),
                    ),
                    Container(
                      decoration: BoxDecoration(
                          image: DecorationImage(
                              image: AssetImage('images/ronaldo.jpg'),
                              fit: BoxFit.fill)),
                      child: Column(
                        children: [
                          const SizedBox(
                            height: 200,
                          ),
                          Text('LEAGUE NAME',
                            style: GoogleFonts.lora(
                                fontSize: 28,
                                color: AppTheme.colors.background,
                                fontWeight: FontWeight.bold
                            ),
                          ),
                          const SizedBox(
                            height: 5,
                          ),
                          Text('LEAGUE DESCRIPTION',
                            style: GoogleFonts.lora(
                                fontSize: 18,
                                color: Colors.tealAccent,
                                fontWeight: FontWeight.bold
                            ),
                          ),
                          const SizedBox(
                            height: 150,
                          ),
                          Container(
                            height: 40,
                            width: 120,
                            decoration: BoxDecoration(
                                color: AppTheme.colors.background,
                                borderRadius: BorderRadius.circular(45),
                                boxShadow: [
                                  BoxShadow(
                                      spreadRadius: 2,
                                      color: AppTheme.colors.text
                                  )
                                ]
                            ),
                            child: Center(
                              child: Text('Watch Now',
                                style: GoogleFonts.lora(
                                    color: AppTheme.colors.appbar,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 18
                                ),),
                            ),
                          )
                        ],
                      ),
                    ),
                    Container(
                      decoration: BoxDecoration(
                          image: DecorationImage(
                              image: AssetImage('images/jordan.jpg'),
                              fit: BoxFit.cover)),
                      child: Column(
                        children: [
                          const SizedBox(
                            height: 200,
                          ),
                          Text('LEAGUE NAME',
                            style: GoogleFonts.lora(
                                fontSize: 28,
                                color: AppTheme.colors.background,
                                fontWeight: FontWeight.bold
                            ),
                          ),
                          const SizedBox(
                            height: 5,
                          ),
                          Text('LEAGUE DESCRIPTION',
                            style: GoogleFonts.lora(
                                fontSize: 18,
                                color: Colors.tealAccent,
                                fontWeight: FontWeight.bold
                            ),
                          ),
                          const SizedBox(
                            height: 150,
                          ),
                          Container(
                            height: 40,
                            width: 120,
                            decoration: BoxDecoration(
                                color: AppTheme.colors.background,
                                borderRadius: BorderRadius.circular(45),
                                boxShadow: [
                                  BoxShadow(
                                      spreadRadius: 2,
                                      color: AppTheme.colors.text
                                  )
                                ]
                            ),
                            child: Center(
                              child: Text('Watch Now',
                                style: GoogleFonts.lora(
                                    color: AppTheme.colors.appbar,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 18
                                ),),
                            ),
                          )
                        ],
                      ),
                    ),
                  ]),
// indicator now
                  Container(
                    alignment: Alignment(0,0.9),
                    child: SmoothPageIndicator(
                      controller: _pageController,
                      count: 5,
                      effect: WormEffect(
                        dotHeight: 10,
                        dotWidth: 10,
                        activeDotColor: AppTheme.colors.appbar,
                        dotColor: AppTheme.colors.background,
                      ),
                    ),
                  )

                ]),
              ),
//Live & upcoming matches
            const SizedBox(height: 20),
              Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children:[
                    Row(mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(left: 5.0),
                          child: Text('LIVE & UPCOMING MATCHES',style: GoogleFonts.lora(
                              fontSize: 18,
                              color: AppTheme.colors.text,
                              fontWeight: FontWeight.bold
                          )),
                        ),
                      ],
                    ),

                    Row(mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(right: 5.0),
                          child: TextButton(onPressed: (){},
                            child: Text('SEE ALL',style: GoogleFonts.lora(
                                fontSize: 14,
                                color: AppTheme.colors.appbar,
                                fontWeight: FontWeight.bold
                            )),
                          ),
                        ),
                      ],
                    ),

                  ]
              ),
              const SizedBox(height: 10),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Container(
                      height: 170,
                      width: 300,
                      decoration:const BoxDecoration(
                        image: DecorationImage(
                          image: AssetImage('images/st1.jpg'),
                          fit: BoxFit.fill
                        )
                      ),
                      child: Stack(
                        children:[
                          Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
//Live Container
                          Container(
                            width: 50,
                            height: 20,
                            color: AppTheme.colors.appbar,
                            child: Center(child: Text('LIVE',style: GoogleFonts.lora(color: AppTheme.colors.background,
                            fontSize: 10,
                              fontWeight: FontWeight.bold
                            ),),),
                          ),
                          const SizedBox(height: 60,),
//team logos
                          Container(width: 60,
                            child: Row(mainAxisAlignment: MainAxisAlignment.end,
                              children: const[
                                CircleAvatar(backgroundColor: Colors.transparent,
                                    backgroundImage: AssetImage('images/logo.jpeg'),
                                radius: 12,
                                ),
                                SizedBox(width: 5,),
                                CircleAvatar(backgroundColor: Colors.transparent,
                                  backgroundImage: AssetImage('images/logo.jpeg'),
                                  radius: 12,
                                ),
                              ],
                            ),
                          ),
 // date & time
                          const SizedBox(height: 10,),
                          Container(width: 110,
                            child: Row(mainAxisAlignment: MainAxisAlignment.end,
                              children: [
                                Text('1 April 2023',style:GoogleFonts.lora(
                                  fontSize: 12,
                                  fontWeight: FontWeight.bold,
                                  color: AppTheme.colors.background.withOpacity(0.8),
                                ) ,),
                                const SizedBox(width: 5,),
                                Text('07:00',style:GoogleFonts.lora(
                                  fontSize: 12,
                                  fontWeight: FontWeight.bold,
                                  color: AppTheme.colors.background.withOpacity(0.8),
                                ) ,),
                              ],
                            ),
                          ),
//teams name
                          const SizedBox(height: 10,),
                           Padding(
                             padding: const EdgeInsets.only(left: 5.0),
                             child: Text('LA Force vs Club de Lyon FC',style:GoogleFonts.lora(
                                fontSize: 16,
                                fontWeight: FontWeight.bold,
                                color: AppTheme.colors.background,
                              ) ,),
                           ),

// more menu

                        ],
                    ),
                          Container(
                            alignment: Alignment(1,1),
                            child: Container(
                              width: 40,
                              height: 40,

                              child: IconButton(onPressed: (){

                            }, icon: Icon(CupertinoIcons.ellipsis,color: AppTheme.colors.background)),
                            ),
                          ),
                     ] ),
                    ),
                    const SizedBox(
                      width: 20,
                    ),
                    Container(
                      height: 170,
                      width: 300,
                      decoration:const BoxDecoration(
                          image: DecorationImage(
                              image: AssetImage('images/st2.jpg'),
                              fit: BoxFit.fill
                          )
                      ),child: Stack(
                        children:[
                          Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
//Live Container
                              Container(
                                width: 50,
                                height: 20,
                                color: AppTheme.colors.appbar,
                                child: Center(child: Text('LIVE',style: GoogleFonts.lora(color: AppTheme.colors.background,
                                    fontSize: 10,
                                    fontWeight: FontWeight.bold
                                ),),),
                              ),
                              const SizedBox(height: 60,),
//team logos
                              Container(width: 60,
                                child: Row(mainAxisAlignment: MainAxisAlignment.end,
                                  children: const[
                                    CircleAvatar(backgroundColor: Colors.transparent,
                                      backgroundImage: AssetImage('images/logo.jpeg'),
                                      radius: 12,
                                    ),
                                    SizedBox(width: 5,),
                                    CircleAvatar(backgroundColor: Colors.transparent,
                                      backgroundImage: AssetImage('images/logo.jpeg'),
                                      radius: 12,
                                    ),
                                  ],
                                ),
                              ),
                              // date & time
                              const SizedBox(height: 10,),
                              Container(width: 110,
                                child: Row(mainAxisAlignment: MainAxisAlignment.end,
                                  children: [
                                    Text('1 April 2023',style:GoogleFonts.lora(
                                      fontSize: 12,
                                      fontWeight: FontWeight.bold,
                                      color: AppTheme.colors.background.withOpacity(0.8),
                                    ) ,),
                                    const SizedBox(width: 5,),
                                    Text('07:00',style:GoogleFonts.lora(
                                      fontSize: 12,
                                      fontWeight: FontWeight.bold,
                                      color: AppTheme.colors.background.withOpacity(0.8),
                                    ) ,),
                                  ],
                                ),
                              ),
//teams name
                              const SizedBox(height: 10,),
                              Padding(
                                padding: const EdgeInsets.only(left: 5.0),
                                child: Text('LA Force vs Club de Lyon FC',style:GoogleFonts.lora(
                                  fontSize: 16,
                                  fontWeight: FontWeight.bold,
                                  color: AppTheme.colors.background,
                                ) ,),
                              ),

// more menu

                            ],
                          ),
                          Container(
                            alignment: Alignment(1,1),
                            child: Container(
                              width: 40,
                              height: 40,

                              child: IconButton(onPressed: (){

                              }, icon: Icon(CupertinoIcons.ellipsis,color: AppTheme.colors.background)),
                            ),
                          ),
                        ] ),
                    ),
                  ],
                ),
              ),

//Recent WorldWide Matches
              const SizedBox(height: 20),
              Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children:[
                    Row(mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(left: 5.0),
                          child: Text('RECENT WORLD WIDE MATCHES',style: GoogleFonts.lora(
                              fontSize: 18,
                              color: AppTheme.colors.text,
                              fontWeight: FontWeight.bold
                          )),
                        ),
                      ],
                    ),

                    Row(mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(right: 5.0),
                          child: TextButton(onPressed: (){},
                            child: Text('SEE ALL',style: GoogleFonts.lora(
                                fontSize: 14,
                                color: AppTheme.colors.appbar,
                                fontWeight: FontWeight.bold
                            )),
                          ),
                        ),
                      ],
                    ),

                  ]
              ),
              const SizedBox(height: 10),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Container(
                      height: 170,
                      width: 300,
                      decoration:const BoxDecoration(
                          image: DecorationImage(
                              image: AssetImage('images/st1.jpg'),
                              fit: BoxFit.fill
                          )
                      ),
                      child: Stack(
                          children:[
                            Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
//Live Container
                                Container(
                                  width: 50,
                                  height: 20,
                                  color: AppTheme.colors.appbar,
                                  child: Center(child: Text('LIVE',style: GoogleFonts.lora(color: AppTheme.colors.background,
                                      fontSize: 10,
                                      fontWeight: FontWeight.bold
                                  ),),),
                                ),
                                const SizedBox(height: 60,),
//team logos
                                Container(width: 60,
                                  child: Row(mainAxisAlignment: MainAxisAlignment.end,
                                    children: const[
                                      CircleAvatar(backgroundColor: Colors.transparent,
                                        backgroundImage: AssetImage('images/logo.jpeg'),
                                        radius: 12,
                                      ),
                                      SizedBox(width: 5,),
                                      CircleAvatar(backgroundColor: Colors.transparent,
                                        backgroundImage: AssetImage('images/logo.jpeg'),
                                        radius: 12,
                                      ),
                                    ],
                                  ),
                                ),
                                // date & time
                                const SizedBox(height: 10,),
                                Container(width: 110,
                                  child: Row(mainAxisAlignment: MainAxisAlignment.end,
                                    children: [
                                      Text('1 April 2023',style:GoogleFonts.lora(
                                        fontSize: 12,
                                        fontWeight: FontWeight.bold,
                                        color: AppTheme.colors.background.withOpacity(0.8),
                                      ) ,),
                                      const SizedBox(width: 5,),
                                      Text('07:00',style:GoogleFonts.lora(
                                        fontSize: 12,
                                        fontWeight: FontWeight.bold,
                                        color: AppTheme.colors.background.withOpacity(0.8),
                                      ) ,),
                                    ],
                                  ),
                                ),
//teams name
                                const SizedBox(height: 10,),
                                Padding(
                                  padding: const EdgeInsets.only(left: 5.0),
                                  child: Text('LA Force vs Club de Lyon FC',style:GoogleFonts.lora(
                                    fontSize: 16,
                                    fontWeight: FontWeight.bold,
                                    color: AppTheme.colors.background,
                                  ) ,),
                                ),

// more menu

                              ],
                            ),
                            Container(
                              alignment: Alignment(1,1),
                              child: Container(
                                width: 40,
                                height: 40,

                                child: IconButton(onPressed: (){

                                }, icon: Icon(CupertinoIcons.ellipsis,color: AppTheme.colors.background)),
                              ),
                            ),
                          ] ),
                    ),
                    const SizedBox(
                      width: 20,
                    ),
                    Container(
                      height: 170,
                      width: 300,
                      decoration:const BoxDecoration(
                          image: DecorationImage(
                              image: AssetImage('images/st2.jpg'),
                              fit: BoxFit.fill
                          )
                      ),child: Stack(
                        children:[
                          Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
//Live Container
                              Container(
                                width: 50,
                                height: 20,
                                color: AppTheme.colors.appbar,
                                child: Center(child: Text('LIVE',style: GoogleFonts.lora(color: AppTheme.colors.background,
                                    fontSize: 10,
                                    fontWeight: FontWeight.bold
                                ),),),
                              ),
                              const SizedBox(height: 60,),
//team logos
                              Container(width: 60,
                                child: Row(mainAxisAlignment: MainAxisAlignment.end,
                                  children: const[
                                    CircleAvatar(backgroundColor: Colors.transparent,
                                      backgroundImage: AssetImage('images/logo.jpeg'),
                                      radius: 12,
                                    ),
                                    SizedBox(width: 5,),
                                    CircleAvatar(backgroundColor: Colors.transparent,
                                      backgroundImage: AssetImage('images/logo.jpeg'),
                                      radius: 12,
                                    ),
                                  ],
                                ),
                              ),
                              // date & time
                              const SizedBox(height: 10,),
                              Container(width: 110,
                                child: Row(mainAxisAlignment: MainAxisAlignment.end,
                                  children: [
                                    Text('1 April 2023',style:GoogleFonts.lora(
                                      fontSize: 12,
                                      fontWeight: FontWeight.bold,
                                      color: AppTheme.colors.background.withOpacity(0.8),
                                    ) ,),
                                    const SizedBox(width: 5,),
                                    Text('07:00',style:GoogleFonts.lora(
                                      fontSize: 12,
                                      fontWeight: FontWeight.bold,
                                      color: AppTheme.colors.background.withOpacity(0.8),
                                    ) ,),
                                  ],
                                ),
                              ),
//teams name
                              const SizedBox(height: 10,),
                              Padding(
                                padding: const EdgeInsets.only(left: 5.0),
                                child: Text('LA Force vs Club de Lyon FC',style:GoogleFonts.lora(
                                  fontSize: 16,
                                  fontWeight: FontWeight.bold,
                                  color: AppTheme.colors.background,
                                ) ,),
                              ),

// more menu

                            ],
                          ),
                          Container(
                            alignment: Alignment(1,1),
                            child: Container(
                              width: 40,
                              height: 40,

                              child: IconButton(onPressed: (){

                              }, icon: Icon(CupertinoIcons.ellipsis,color: AppTheme.colors.background)),
                            ),
                          ),
                        ] ),
                    ),
                  ],
                ),
              ),

//Womens Football Matches
              const SizedBox(height: 20),
              Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children:[
                    Row(mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(left: 5.0),
                          child: Text('WOMEN FOOTBALL',style: GoogleFonts.lora(
                              fontSize: 18,
                              color: AppTheme.colors.text,
                              fontWeight: FontWeight.bold
                          )),
                        ),
                      ],
                    ),

                    Row(mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(right: 5.0),
                          child: TextButton(onPressed: (){},
                            child: Text('SEE ALL',style: GoogleFonts.lora(
                                fontSize: 14,
                                color: AppTheme.colors.appbar,
                                fontWeight: FontWeight.bold
                            )),
                          ),
                        ),
                      ],
                    ),

                  ]
              ),
              const SizedBox(height: 10),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Container(
                      height: 170,
                      width: 300,
                      decoration:const BoxDecoration(
                          image: DecorationImage(
                              image: AssetImage('images/st1.jpg'),
                              fit: BoxFit.fill
                          )
                      ),
                      child: Stack(
                          children:[
                            Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
//Live Container
                                Container(
                                  width: 50,
                                  height: 20,
                                  color: AppTheme.colors.appbar,
                                  child: Center(child: Text('LIVE',style: GoogleFonts.lora(color: AppTheme.colors.background,
                                      fontSize: 10,
                                      fontWeight: FontWeight.bold
                                  ),),),
                                ),
                                const SizedBox(height: 60,),
//team logos
                                Container(width: 60,
                                  child: Row(mainAxisAlignment: MainAxisAlignment.end,
                                    children: const[
                                      CircleAvatar(backgroundColor: Colors.transparent,
                                        backgroundImage: AssetImage('images/logo.jpeg'),
                                        radius: 12,
                                      ),
                                      SizedBox(width: 5,),
                                      CircleAvatar(backgroundColor: Colors.transparent,
                                        backgroundImage: AssetImage('images/logo.jpeg'),
                                        radius: 12,
                                      ),
                                    ],
                                  ),
                                ),
                                // date & time
                                const SizedBox(height: 10,),
                                Container(width: 110,
                                  child: Row(mainAxisAlignment: MainAxisAlignment.end,
                                    children: [
                                      Text('1 April 2023',style:GoogleFonts.lora(
                                        fontSize: 12,
                                        fontWeight: FontWeight.bold,
                                        color: AppTheme.colors.background.withOpacity(0.8),
                                      ) ,),
                                      const SizedBox(width: 5,),
                                      Text('07:00',style:GoogleFonts.lora(
                                        fontSize: 12,
                                        fontWeight: FontWeight.bold,
                                        color: AppTheme.colors.background.withOpacity(0.8),
                                      ) ,),
                                    ],
                                  ),
                                ),
//teams name
                                const SizedBox(height: 10,),
                                Padding(
                                  padding: const EdgeInsets.only(left: 5.0),
                                  child: Text('LA Force vs Club de Lyon FC',style:GoogleFonts.lora(
                                    fontSize: 16,
                                    fontWeight: FontWeight.bold,
                                    color: AppTheme.colors.background,
                                  ) ,),
                                ),

// more menu

                              ],
                            ),
                            Container(
                              alignment: Alignment(1,1),
                              child: Container(
                                width: 40,
                                height: 40,

                                child: IconButton(onPressed: (){

                                }, icon: Icon(CupertinoIcons.ellipsis,color: AppTheme.colors.background)),
                              ),
                            ),
                          ] ),
                    ),
                    const SizedBox(
                      width: 20,
                    ),
                    Container(
                      height: 170,
                      width: 300,
                      decoration:const BoxDecoration(
                          image: DecorationImage(
                              image: AssetImage('images/st2.jpg'),
                              fit: BoxFit.fill
                          )
                      ),child: Stack(
                        children:[
                          Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
//Live Container
                              Container(
                                width: 50,
                                height: 20,
                                color: AppTheme.colors.appbar,
                                child: Center(child: Text('LIVE',style: GoogleFonts.lora(color: AppTheme.colors.background,
                                    fontSize: 10,
                                    fontWeight: FontWeight.bold
                                ),),),
                              ),
                              const SizedBox(height: 60,),
//team logos
                              Container(width: 60,
                                child: Row(mainAxisAlignment: MainAxisAlignment.end,
                                  children: const[
                                    CircleAvatar(backgroundColor: Colors.transparent,
                                      backgroundImage: AssetImage('images/logo.jpeg'),
                                      radius: 12,
                                    ),
                                    SizedBox(width: 5,),
                                    CircleAvatar(backgroundColor: Colors.transparent,
                                      backgroundImage: AssetImage('images/logo.jpeg'),
                                      radius: 12,
                                    ),
                                  ],
                                ),
                              ),
                              // date & time
                              const SizedBox(height: 10,),
                              Container(width: 110,
                                child: Row(mainAxisAlignment: MainAxisAlignment.end,
                                  children: [
                                    Text('1 April 2023',style:GoogleFonts.lora(
                                      fontSize: 12,
                                      fontWeight: FontWeight.bold,
                                      color: AppTheme.colors.background.withOpacity(0.8),
                                    ) ,),
                                    const SizedBox(width: 5,),
                                    Text('07:00',style:GoogleFonts.lora(
                                      fontSize: 12,
                                      fontWeight: FontWeight.bold,
                                      color: AppTheme.colors.background.withOpacity(0.8),
                                    ) ,),
                                  ],
                                ),
                              ),
//teams name
                              const SizedBox(height: 10,),
                              Padding(
                                padding: const EdgeInsets.only(left: 5.0),
                                child: Text('LA Force vs Club de Lyon FC',style:GoogleFonts.lora(
                                  fontSize: 16,
                                  fontWeight: FontWeight.bold,
                                  color: AppTheme.colors.background,
                                ) ,),
                              ),

// more menu

                            ],
                          ),
                          Container(
                            alignment: Alignment(1,1),
                            child: Container(
                              width: 40,
                              height: 40,

                              child: IconButton(onPressed: (){

                              }, icon: Icon(CupertinoIcons.ellipsis,color: AppTheme.colors.background)),
                            ),
                          ),
                        ] ),
                    ),
                  ],
                ),
              ),

//European Leagues Matches
              const SizedBox(height: 20),
              Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children:[
                    Row(mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(left: 5.0),
                          child: Text('EUROPEAN LEAGUE',style: GoogleFonts.lora(
                              fontSize: 18,
                              color: AppTheme.colors.text,
                              fontWeight: FontWeight.bold
                          )),
                        ),
                      ],
                    ),

                    Row(mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(right: 5.0),
                          child: TextButton(onPressed: (){},
                            child: Text('SEE ALL',style: GoogleFonts.lora(
                                fontSize: 14,
                                color: AppTheme.colors.appbar,
                                fontWeight: FontWeight.bold
                            )),
                          ),
                        ),
                      ],
                    ),

                  ]
              ),
              const SizedBox(height: 10),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Container(
                      height: 170,
                      width: 300,
                      decoration:const BoxDecoration(
                          image: DecorationImage(
                              image: AssetImage('images/st1.jpg'),
                              fit: BoxFit.fill
                          )
                      ),
                      child: Stack(
                          children:[
                            Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
//Live Container
                                Container(
                                  width: 50,
                                  height: 20,
                                  color: AppTheme.colors.appbar,
                                  child: Center(child: Text('LIVE',style: GoogleFonts.lora(color: AppTheme.colors.background,
                                      fontSize: 10,
                                      fontWeight: FontWeight.bold
                                  ),),),
                                ),
                                const SizedBox(height: 60,),
//team logos
                                Container(width: 60,
                                  child: Row(mainAxisAlignment: MainAxisAlignment.end,
                                    children: const[
                                      CircleAvatar(backgroundColor: Colors.transparent,
                                        backgroundImage: AssetImage('images/logo.jpeg'),
                                        radius: 12,
                                      ),
                                      SizedBox(width: 5,),
                                      CircleAvatar(backgroundColor: Colors.transparent,
                                        backgroundImage: AssetImage('images/logo.jpeg'),
                                        radius: 12,
                                      ),
                                    ],
                                  ),
                                ),
                                // date & time
                                const SizedBox(height: 10,),
                                Container(width: 110,
                                  child: Row(mainAxisAlignment: MainAxisAlignment.end,
                                    children: [
                                      Text('1 April 2023',style:GoogleFonts.lora(
                                        fontSize: 12,
                                        fontWeight: FontWeight.bold,
                                        color: AppTheme.colors.background.withOpacity(0.8),
                                      ) ,),
                                      const SizedBox(width: 5,),
                                      Text('07:00',style:GoogleFonts.lora(
                                        fontSize: 12,
                                        fontWeight: FontWeight.bold,
                                        color: AppTheme.colors.background.withOpacity(0.8),
                                      ) ,),
                                    ],
                                  ),
                                ),
//teams name
                                const SizedBox(height: 10,),
                                Padding(
                                  padding: const EdgeInsets.only(left: 5.0),
                                  child: Text('LA Force vs Club de Lyon FC',style:GoogleFonts.lora(
                                    fontSize: 16,
                                    fontWeight: FontWeight.bold,
                                    color: AppTheme.colors.background,
                                  ) ,),
                                ),

// more menu

                              ],
                            ),
                            Container(
                              alignment: Alignment(1,1),
                              child: Container(
                                width: 40,
                                height: 40,

                                child: IconButton(onPressed: (){

                                }, icon: Icon(CupertinoIcons.ellipsis,color: AppTheme.colors.background)),
                              ),
                            ),
                          ] ),
                    ),
                    const SizedBox(
                      width: 20,
                    ),
                    Container(
                      height: 170,
                      width: 300,
                      decoration:const BoxDecoration(
                          image: DecorationImage(
                              image: AssetImage('images/st2.jpg'),
                              fit: BoxFit.fill
                          )
                      ),child: Stack(
                        children:[
                          Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
//Live Container
                              Container(
                                width: 50,
                                height: 20,
                                color: AppTheme.colors.appbar,
                                child: Center(child: Text('LIVE',style: GoogleFonts.lora(color: AppTheme.colors.background,
                                    fontSize: 10,
                                    fontWeight: FontWeight.bold
                                ),),),
                              ),
                              const SizedBox(height: 60,),
//team logos
                              Container(width: 60,
                                child: Row(mainAxisAlignment: MainAxisAlignment.end,
                                  children: const[
                                    CircleAvatar(backgroundColor: Colors.transparent,
                                      backgroundImage: AssetImage('images/logo.jpeg'),
                                      radius: 12,
                                    ),
                                    SizedBox(width: 5,),
                                    CircleAvatar(backgroundColor: Colors.transparent,
                                      backgroundImage: AssetImage('images/logo.jpeg'),
                                      radius: 12,
                                    ),
                                  ],
                                ),
                              ),
                              // date & time
                              const SizedBox(height: 10,),
                              Container(width: 110,
                                child: Row(mainAxisAlignment: MainAxisAlignment.end,
                                  children: [
                                    Text('1 April 2023',style:GoogleFonts.lora(
                                      fontSize: 12,
                                      fontWeight: FontWeight.bold,
                                      color: AppTheme.colors.background.withOpacity(0.8),
                                    ) ,),
                                    const SizedBox(width: 5,),
                                    Text('07:00',style:GoogleFonts.lora(
                                      fontSize: 12,
                                      fontWeight: FontWeight.bold,
                                      color: AppTheme.colors.background.withOpacity(0.8),
                                    ) ,),
                                  ],
                                ),
                              ),
//teams name
                              const SizedBox(height: 10,),
                              Padding(
                                padding: const EdgeInsets.only(left: 5.0),
                                child: Text('LA Force vs Club de Lyon FC',style:GoogleFonts.lora(
                                  fontSize: 16,
                                  fontWeight: FontWeight.bold,
                                  color: AppTheme.colors.background,
                                ) ,),
                              ),

// more menu

                            ],
                          ),
                          Container(
                            alignment: Alignment(1,1),
                            child: Container(
                              width: 40,
                              height: 40,

                              child: IconButton(onPressed: (){

                              }, icon: Icon(CupertinoIcons.ellipsis,color: AppTheme.colors.background)),
                            ),
                          ),
                        ] ),
                    ),
                  ],
                ),
              ),

            ],
          ),
        ),
      ),
    );
  }
}
