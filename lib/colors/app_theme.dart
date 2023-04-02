import 'package:flutter/material.dart';
import 'package:media/colors/colors.dart';

@immutable
 class AppTheme{
  static const colors = AppColors();

  const AppTheme._();

  static ThemeData define() {
    return ThemeData(

      primaryColor: Color(0xFFf85f6a),
      focusColor: Color(0xFF9FCAE9),
    );
  }
}