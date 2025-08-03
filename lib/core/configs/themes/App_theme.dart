 import 'package:flutter/material.dart';
import 'package:flutter_basics/core/configs/themes/app_colors.dart';

class AppTheme {
  static final LightTheme=ThemeData(
    scaffoldBackgroundColor: AppColors.LightBackground,
    primaryColor: AppColors.primary,
    brightness: Brightness.light,
    fontFamily: 'Satoshi',
    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ElevatedButton.styleFrom(
        backgroundColor: AppColors.primary,
        textStyle: const TextStyle(
          fontSize: 20,fontWeight: FontWeight.bold,
        ),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(30)
        )
      )
    )


  );

 }