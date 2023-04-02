import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:media/authentication/login_screen.dart';
import 'package:media/colors/app_theme.dart';
import 'package:media/intro_screens/intro1.dart';
import 'package:media/intro_screens/intro2.dart';
import 'package:media/intro_screens/intro3.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class OnBoardScreens extends StatefulWidget {
  const OnBoardScreens({Key? key}) : super(key: key);

  @override
  State<OnBoardScreens> createState() => _OnBoardScreensState();
}

class _OnBoardScreensState extends State<OnBoardScreens> {
  // contoller
  PageController _pageController = PageController();

  // record for last page
  bool onLastPage = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
//pageview code
          PageView(
            controller: _pageController,
            onPageChanged: (index) {
              setState(() {
                onLastPage = index == 2;
              });
            },
            children: const [
// first page
              IntroPage1(),
// second page
              IntroPage2(),
// third page
              IntroPage3(),
            ],
          ),

          onLastPage
              ?
// for last page
              InkWell(
                onTap: (){
                  Navigator.pushReplacement(context, MaterialPageRoute(builder: (_) => LoginScreen()));
                },
                child: Container(
                  alignment: Alignment(0,0.8),
                  child: Container(
                      width: 340,
                      height: 40,
                      decoration: BoxDecoration(
                        color: AppTheme.colors.appbar,
                        borderRadius: BorderRadius.circular(8),
                      ),
                      child: Center(
                        child: Text(
                          'GET STARTED',
                          style: GoogleFonts.lora(
                              fontSize: 16,
                              color: AppTheme.colors.text,
                              fontWeight: FontWeight.bold),
                        ),
                      ),
                    ),
                ),
              )

// for first two pages
              : Container(
                  alignment: Alignment(0, 0.8),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
//skip
                      GestureDetector(
                          onTap: () {
                            _pageController.jumpToPage(2);
                          },
                          child: Container(
                              width: 80,
                              height: 30,
                              decoration: BoxDecoration(
                                color: AppTheme.colors.appbar,
                                borderRadius: BorderRadius.circular(8),
                              ),
                              child: Center(
                                  child: Text(
                                'SKIP',
                                style: GoogleFonts.lora(
                                    color: AppTheme.colors.text,
                                    fontSize: 12,
                                    fontWeight: FontWeight.bold),
                              )))),

                      const SizedBox(
                        width: 70,
                      ),

// smooth indicator
                      SmoothPageIndicator(
                        controller: _pageController,
                        count: 3,
                        effect: WormEffect(
                          activeDotColor: AppTheme.colors.appbar,
                          dotColor: AppTheme.colors.text,
                        ),
                      ),

                      const SizedBox(
                        width: 70,
                      ),

// next or done
                      GestureDetector(
                          onTap: () {
                            _pageController.nextPage(
                              duration: Duration(milliseconds: 500),
                              curve: Curves.easeIn,
                            );
                          },
                          child: Container(
                              width: 80,
                              height: 30,
                              decoration: BoxDecoration(
                                color: AppTheme.colors.appbar,
                                borderRadius: BorderRadius.circular(8),
                              ),
                              child: Center(
                                  child: Text(
                                'NEXT',
                                style: GoogleFonts.lora(
                                    color: AppTheme.colors.text,
                                    fontSize: 12,
                                    fontWeight: FontWeight.bold),
                              )))),
                    ],
                  ),
                ),
        ],
      ),
    );
  }
}
