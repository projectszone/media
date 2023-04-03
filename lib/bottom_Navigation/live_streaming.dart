import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:media/colors/app_theme.dart';

class LiveStreaming extends StatefulWidget {
  const LiveStreaming({Key? key}) : super(key: key);

  @override
  State<LiveStreaming> createState() => _LiveStreamingState();
}

class _LiveStreamingState extends State<LiveStreaming> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppTheme.colors.background,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // video streaming portion design
              Stack(
                children: [
                  Image(
                    height: 280,
                    image: AssetImage('images/live.jpg'),
                    fit: BoxFit.cover,
                  ),
                  Center(
                    child: Container(
                      width: 150,
                      height: 60,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(8),
                        color: AppTheme.colors.text.withOpacity(0.4),
                      ),child: Center(
                      child: Text('match will start \n time 22:35:39',
                      style: GoogleFonts.lora(color: AppTheme.colors.background,fontSize: 12),),
                    ),
                    ),
                  )
                ],
              ),
          // team names
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text('Barcelona Vs Real Madrid',
            style: GoogleFonts.lora(
              fontSize: 14,
              fontWeight: FontWeight.bold
            ),),
          ) ,

          // date & time
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text('April 4 2023, 09:00 PM\nSenior Men League, Week12',
                  style: GoogleFonts.lora(
                      fontSize: 14,

                  ),),
              ) ,
          // download and notified option
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  IconButton(onPressed: (){}, icon: Icon(CupertinoIcons.arrow_down_circle)),

                  IconButton(onPressed: (){}, icon: Icon(CupertinoIcons.bell_circle)),
                ],
              ),
 // description
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text('Description',
                      style: GoogleFonts.lora(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                          decoration: TextDecoration.underline
                      ),),
                    Text('Here the decsription of the match will be added thoroughly for user',
                      style: GoogleFonts.lora(
                          fontSize: 14,
                      ),),
                  ],
                ),
              ),
  // top matches
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [

                    Text('Top Matches',
                      style: GoogleFonts.lora(
                          fontSize: 14,
                          fontWeight: FontWeight.bold,
                      ),),
                    Text('See All',
                      style: GoogleFonts.lora(
                        fontSize: 14,
                        color: AppTheme.colors.appbar
                      ),),

                  ],
                ),
              ),

              Container(
                width: double.infinity,
                height: 180,
                child: Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Stack(children: [
                        Container(
                          width: 110,
                          height: 160,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(15),
                              image: DecorationImage(
                                  image: AssetImage('images/karim.jpg'),
                                  fit: BoxFit.cover)),
                        ),

                      ]),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Stack(children: [
                        Container(
                          width: 110,
                          height: 160,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(15),
                              image: DecorationImage(
                                  image: AssetImage('images/messi.jpg'),
                                  fit: BoxFit.cover)),
                        ),

                      ]),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Stack(children: [
                        Container(
                          width: 110,
                          height: 160,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(15),
                              image: DecorationImage(
                                  image: AssetImage('images/jordan.jpg'),
                                  fit: BoxFit.cover)),
                        ),

                      ]),
                    ),
                  ],
                ),
              ),

              // also like matches
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [

                    Text('You might also like',
                      style: GoogleFonts.lora(
                        fontSize: 14,
                        fontWeight: FontWeight.bold,
                      ),),
                    Text('See All',
                      style: GoogleFonts.lora(
                          fontSize: 14,
                          color: AppTheme.colors.appbar
                      ),),

                  ],
                ),
              ),

              Container(
                width: double.infinity,
                height: 180,
                child: Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Stack(children: [
                        Container(
                          width: 110,
                          height: 160,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(15),
                              image: DecorationImage(
                                  image: AssetImage('images/karim.jpg'),
                                  fit: BoxFit.cover)),
                        ),

                      ]),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Stack(children: [
                        Container(
                          width: 110,
                          height: 160,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(15),
                              image: DecorationImage(
                                  image: AssetImage('images/messi.jpg'),
                                  fit: BoxFit.cover)),
                        ),

                      ]),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Stack(children: [
                        Container(
                          width: 110,
                          height: 160,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(15),
                              image: DecorationImage(
                                  image: AssetImage('images/jordan.jpg'),
                                  fit: BoxFit.cover)),
                        ),

                      ]),
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
