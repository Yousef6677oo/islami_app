import 'package:flutter/material.dart';

import 'app_colors.dart';

abstract class AppTheme {
  static ThemeData lightTheme = ThemeData(
      canvasColor: AppColors.primaryColorLight,
      primaryColor: AppColors.primaryColorLight,
      scaffoldBackgroundColor: Colors.transparent,
      appBarTheme: AppBarTheme(
          centerTitle: true,
          backgroundColor: Colors.transparent,
          elevation: 0,
          titleTextStyle: TextStyle(
              fontSize: 30,
              fontWeight: FontWeight.bold,
              color: AppColors.accentColorLight)),
      textTheme: TextTheme(
          bodyLarge: TextStyle(
              fontSize: 25,
              fontWeight: FontWeight.bold,
              color: AppColors.accentColorLight),
          //number ayat and sura name
          bodyMedium: TextStyle(
              fontSize: 25,
              fontWeight: FontWeight.w600,
              color: AppColors.accentColorLight),
          //sura name number of ayat
          bodySmall: TextStyle(fontSize: 20, color: AppColors.accentColorLight),
          titleMedium: TextStyle(
              fontSize: 25,
              fontWeight: FontWeight.bold,
              color: AppColors.accentColorLight),
          titleSmall: TextStyle(
              fontSize: 15, color: AppColors.primaryColorLight) //sura details
          ),
      bottomNavigationBarTheme: BottomNavigationBarThemeData(
        selectedItemColor: AppColors.accentColorLight,
      ),
      dividerColor: AppColors.primaryColorLight);
  static ThemeData darkTheme = ThemeData(
      canvasColor: AppColors.primaryColorDark,
      primaryColor: AppColors.primaryColorDark,
      scaffoldBackgroundColor: Colors.transparent,
      appBarTheme: AppBarTheme(
          centerTitle: true,
          backgroundColor: Colors.transparent,
          elevation: 0,
          titleTextStyle: TextStyle(
              fontSize: 30,
              fontWeight: FontWeight.bold,
              color: AppColors.white)),
      textTheme: TextTheme(
        bodyLarge: TextStyle(
            fontSize: 25, fontWeight: FontWeight.w600, color: AppColors.white),
        //number ayat and sura name
        bodyMedium: TextStyle(
            fontSize: 25, fontWeight: FontWeight.w600, color: AppColors.white),
        //sura name number of ayat
        bodySmall: TextStyle(fontSize: 20, color: AppColors.accentColorDark),
        titleMedium: TextStyle(
            fontSize: 25,
            fontWeight: FontWeight.bold,
            color: AppColors.accentColorDark),
        titleSmall: TextStyle(fontSize: 15, color: AppColors.primaryColorLight),
      ),
      bottomNavigationBarTheme: BottomNavigationBarThemeData(
        selectedItemColor: AppColors.accentColorDark,
      ),
      dividerColor: AppColors.accentColorDark);
}
