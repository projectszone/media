import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:media/bottom_Navigation/home_screen.dart';
import 'package:media/bottom_Navigation/live_streaming.dart';
import 'package:media/bottom_Navigation/schedule_screen.dart';
import 'package:media/colors/app_theme.dart';
import 'package:media/profile_management/profile_management.dart';
import 'package:persistent_bottom_nav_bar/persistent_tab_view.dart';
class BottomNavigationScreen extends StatefulWidget {
  const BottomNavigationScreen({Key? key}) : super(key: key);

  @override
  State<BottomNavigationScreen> createState() => _BottomNavigationScreenState();
}

class _BottomNavigationScreenState extends State<BottomNavigationScreen> {
  PersistentTabController? _controller = PersistentTabController(initialIndex: 0);


  @override
  Widget build(BuildContext context) {
    List<Widget> _buildScreens() {
      return [
        HomeScreen(),
        ScheduleScreen(),
        LiveStreaming(),
        ProfileManagement(),

      ];
    }List<PersistentBottomNavBarItem> _navBarsItems() {
      return [
        PersistentBottomNavBarItem(
          icon: Icon(CupertinoIcons.news),
          title: ("Feed"),
          textStyle: GoogleFonts.lora(color: AppTheme.colors.background,fontSize: 14),
          activeColorPrimary: AppTheme.colors.text,
          inactiveColorPrimary: CupertinoColors.systemGrey,
        ),
        PersistentBottomNavBarItem(
          icon: Icon(CupertinoIcons.calendar),
          title: ("Date"),
          textStyle: GoogleFonts.lora(color: AppTheme.colors.background,fontSize: 14),
          activeColorPrimary: AppTheme.colors.text,
          inactiveColorPrimary: CupertinoColors.systemGrey,
        ),
        PersistentBottomNavBarItem(
          icon: Icon(CupertinoIcons.play_circle),
          title: ("Watch"),
          textStyle: GoogleFonts.lora(color: AppTheme.colors.background,fontSize: 14),
          activeColorPrimary: AppTheme.colors.text,
          inactiveColorPrimary: CupertinoColors.systemGrey,
        ),
        PersistentBottomNavBarItem(
          icon: Icon(CupertinoIcons.person),
          title: ("Profile"),
          textStyle: GoogleFonts.lora(color: AppTheme.colors.background,fontSize: 14),
          activeColorPrimary: AppTheme.colors.text,
          inactiveColorPrimary: CupertinoColors.systemGrey,
        ),
      ];
    }
    return PersistentTabView(
      context,
      controller: _controller,
      screens: _buildScreens(),
      items: _navBarsItems(),
      confineInSafeArea: true,
      backgroundColor: Colors.white, // Default is Colors.white.
      handleAndroidBackButtonPress: true, // Default is true.
      resizeToAvoidBottomInset: true, // This needs to be true if you want to move up the screen when keyboard appears. Default is true.
      stateManagement: true, // Default is true.
      hideNavigationBarWhenKeyboardShows: true, // Recommended to set 'resizeToAvoidBottomInset' as true while using this argument. Default is true.
      decoration: NavBarDecoration(
        borderRadius: BorderRadius.circular(10.0),
        colorBehindNavBar: Colors.white,

      ),
      popAllScreensOnTapOfSelectedTab: true,
      popActionScreens: PopActionScreensType.all,
      itemAnimationProperties: ItemAnimationProperties( // Navigation Bar's items animation properties.
        duration: Duration(milliseconds: 200),
        curve: Curves.ease,
      ),
      screenTransitionAnimation: ScreenTransitionAnimation( // Screen transition animation on change of selected tab.
        animateTabTransition: true,
        curve: Curves.ease,
        duration: Duration(milliseconds: 200),
      ),
      navBarStyle: NavBarStyle.style1, // Choose the nav bar style with this property.
    );
  }
}
