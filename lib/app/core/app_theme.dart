import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

import 'app_constant.dart';

class AppTheme {
  static final ThemeData light = ThemeData(
    primaryColor: AppConstant.primaryColor,
    cardTheme: const CardTheme(
      color: AppConstant.secondaryColor,
    ),
    primaryColorDark: AppConstant.primaryColor,
    iconTheme: const IconThemeData(
      color: AppConstant.appBlack,
    ),
    fontFamily: "montserrat",
    bottomNavigationBarTheme: const BottomNavigationBarThemeData(
      backgroundColor: Colors.blueGrey,
      selectedItemColor: Colors.white,
      unselectedItemColor: Colors.white70,
    ),
    appBarTheme: const AppBarTheme(
      color: AppConstant.appWhite,
    ),
    brightness: Brightness.light,
    scaffoldBackgroundColor: Colors.white,
    cardColor: AppConstant.appWhite,
    unselectedWidgetColor: Colors.black45,
    focusColor: AppConstant.primaryColor,
    dividerColor: AppConstant.appWhite,
    textTheme: TextTheme(
      displayLarge: GoogleFonts.montserrat(
        color: AppConstant.appBlack,
        fontSize: 30.sp,
        fontWeight: FontWeight.bold,
      ),
      displayMedium: GoogleFonts.montserrat(
        color: AppConstant.appBlack,
        fontSize: 24.sp,
        fontWeight: FontWeight.w600,
      ),
      displaySmall: GoogleFonts.montserrat(
        color: AppConstant.appBlack,
        fontSize: 18.sp,
        fontWeight: FontWeight.w500,
      ),
      headlineLarge: GoogleFonts.montserrat(
        color: AppConstant.appBlack,
        fontSize: 30.sp,
        fontWeight: FontWeight.w400,
      ),
      headlineMedium: GoogleFonts.montserrat(
        color: AppConstant.appBlack,
        fontSize: 16.sp,
        fontWeight: FontWeight.w500,
      ),
      headlineSmall: GoogleFonts.montserrat(
        color: AppConstant.appBlack,
        fontSize: 14.sp,
        fontWeight: FontWeight.w500,
      ),
      titleLarge: GoogleFonts.montserrat(
        color: AppConstant.appBlack,
        fontSize: 13.sp,
        fontWeight: FontWeight.w400,
      ),
      titleMedium: GoogleFonts.montserrat(
        color: AppConstant.subtitleColor,
        fontSize: 11.sp,
        fontWeight: FontWeight.w300,
      ),
      titleSmall: GoogleFonts.montserrat(
        color: AppConstant.subtitleColor,
        fontSize: 11.sp,
        fontWeight: FontWeight.normal,
      ),
    ),
  );

  static final ThemeData dark = ThemeData(
    primaryColor: Colors.black12,
    primaryColorDark: Colors.black,
    fontFamily: "montserrat",
    bottomNavigationBarTheme: const BottomNavigationBarThemeData(
      backgroundColor: Colors.black,
      selectedItemColor: Colors.white,
      unselectedItemColor: Colors.white70,
    ),
    appBarTheme: const AppBarTheme(
      color: Colors.black,
    ),
    brightness: Brightness.dark,
    scaffoldBackgroundColor: Colors.black,
    focusColor: Colors.white,
    dividerColor: AppConstant.appBlack,
    textTheme: TextTheme(
      displayLarge: GoogleFonts.montserrat(
        color: AppConstant.appWhite,
        fontSize: 24.sp,
        fontWeight: FontWeight.bold,
      ),
      displayMedium: GoogleFonts.montserrat(
        color: AppConstant.appWhite,
        fontSize: 20.sp,
        fontWeight: FontWeight.w600,
      ),
      displaySmall: GoogleFonts.montserrat(
        color: AppConstant.appWhite,
        fontSize: 18.sp,
        fontWeight: FontWeight.w500,
      ),
      headlineLarge: GoogleFonts.montserrat(
        color: AppConstant.appWhite,
        fontSize: 30.sp,
        fontWeight: FontWeight.w500,
      ),
      headlineMedium: GoogleFonts.montserrat(
        color: AppConstant.appWhite,
        fontSize: 16.sp,
        fontWeight: FontWeight.w500,
      ),
      headlineSmall: GoogleFonts.montserrat(
        color: AppConstant.appWhite,
        fontSize: 14.sp,
        fontWeight: FontWeight.w500,
      ),
      titleLarge: GoogleFonts.montserrat(
        color: AppConstant.appWhite,
        fontSize: 13.sp,
        fontWeight: FontWeight.w400,
      ),
      titleMedium: GoogleFonts.montserrat(
        color: AppConstant.subtitleColor,
        fontSize: 11.sp,
        fontWeight: FontWeight.w300,
      ),
      titleSmall: GoogleFonts.montserrat(
        color: AppConstant.subtitleColor,
        fontSize: 11.sp,
        fontWeight: FontWeight.normal,
      ),
    ),
  );
}
