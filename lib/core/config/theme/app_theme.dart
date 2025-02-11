import 'package:flutter/material.dart';
import 'package:tunes/core/config/theme/app_colors.dart';

class AppTheme {

  static final lightTheme = ThemeData(
    brightness: Brightness.light,
    fontFamily: 'LeagueSpartan',
    primaryColor: AppColors.primary,
    scaffoldBackgroundColor: AppColors.light,
    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ElevatedButton.styleFrom(
        foregroundColor: Colors.white,
        backgroundColor: AppColors.primary,
        textStyle: const TextStyle(fontSize: 20 , fontWeight: FontWeight.bold  ),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(30),
        )
        
        ))
  );


  static final darkTheme = ThemeData(
    brightness: Brightness.dark,
    fontFamily: 'LeagueSpartan',
    primaryColor: AppColors.primary,
    scaffoldBackgroundColor: AppColors.dark,
    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ElevatedButton.styleFrom(

        foregroundColor: Colors.white,
        backgroundColor: AppColors.primary,
        textStyle: const TextStyle(fontSize: 20 , fontWeight: FontWeight.bold),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(30),
        )
        
        ))
  );

}