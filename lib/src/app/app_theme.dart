import 'package:fit_combat/src/utils/colors.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

ThemeData theme = ThemeData(
  colorScheme: ColorScheme.fromSeed(seedColor: white).copyWith(
    background: primary,
    secondary: secondary,
  ),
  primaryColor: white,
  useMaterial3: true,
  fontFamily: GoogleFonts.notoSans().fontFamily,
  appBarTheme: const AppBarTheme(
    backgroundColor: primary,
    centerTitle: false,
  ),
  textTheme: const TextTheme(
    bodyLarge: TextStyle(
      color: white,
      fontSize: 30,
      fontWeight: FontWeight.w700,
    ),
    bodyMedium: TextStyle(
      color: secondary,
      fontSize: 24,
    ),
    headlineSmall: TextStyle(
      color: secondary,
      fontSize: 13,
      fontWeight: FontWeight.w400,
    ),
    titleSmall: TextStyle(
      color: secondary,
      fontSize: 11,
    ),
    titleMedium: TextStyle(
      color: white,
      fontSize: 13,
      fontWeight: FontWeight.w600,
    ),
  ),
  iconTheme: const IconThemeData(
    color: secondary,
    size: 30,
  ),
  tabBarTheme: const TabBarTheme(
    dividerColor: Colors.transparent,
    indicatorSize: TabBarIndicatorSize.tab,
    indicatorColor: indicator,
    labelStyle: TextStyle(
      color: white,
      fontSize: 13,
      fontWeight: FontWeight.w700,
    ),
    labelPadding: EdgeInsets.all(8),
  ),
);
