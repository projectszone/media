import 'package:flutter/cupertino.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:media/colors/app_theme.dart';

class MyTabWidget3 extends StatefulWidget {
  const MyTabWidget3({Key? key}) : super(key: key);

  @override
  State<MyTabWidget3> createState() => _MyTabWidget3State();
}

class _MyTabWidget3State extends State<MyTabWidget3> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Expanded(child:  Padding(
          padding: const EdgeInsets.all(8.0),
          child: ListView.builder(
              itemCount: 13,
              itemBuilder: (context,index){
            return Container(
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text('1',
                        style: GoogleFonts.lora(fontSize: 10,color: AppTheme.colors.text),),
                        const SizedBox(width: 10,),
                        CircleAvatar(radius: 12,backgroundColor: Colors.transparent,backgroundImage: AssetImage('images/fcb.png'),),
                        const SizedBox(width: 10,),
                        Text('FC Barcelona',
                          style: GoogleFonts.lora(fontSize: 12,color: AppTheme.colors.text),),
                      ],
                    ),
                    Row(mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Text('20',
                          style: GoogleFonts.lora(fontSize: 12,color: AppTheme.colors.text),),
                        const SizedBox(width: 25,),
                        Text('18',
                          style: GoogleFonts.lora(fontSize: 12,color: AppTheme.colors.text),),
                        const SizedBox(width: 25,),
                        Text('1',
                          style: GoogleFonts.lora(fontSize: 12,color: AppTheme.colors.text),),
                        const SizedBox(width: 25,),
                        Text('1',
                          style: GoogleFonts.lora(fontSize: 12,color: AppTheme.colors.text),),
                        const SizedBox(width: 25,),
                        Text('54',
                          style: GoogleFonts.lora(fontSize: 12,color: AppTheme.colors.text),),

                      ],
                    ),
                    Row(mainAxisAlignment: MainAxisAlignment.end,
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      RatingBarIndicator(
                        rating: 3,
                        itemBuilder: (context, index) => Icon(
                          CupertinoIcons.circle_fill,
                          color: Colors.green,
                        ),
                        unratedColor: AppTheme.colors.appbar,
                        itemCount: 5,
                        itemSize: 10.0,
                        direction: Axis.horizontal,
                      ),
                    ],
                    )


                  ],
                ),
              ),


            );
          }),
        ))
      ],
    );
  }
}
