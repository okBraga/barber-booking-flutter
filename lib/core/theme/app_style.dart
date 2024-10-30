import 'package:firebase_login/core/theme/app_text_style.dart';
import 'package:flutter/material.dart';
import 'app_colors.dart';

class AppStyles {
  static ThemeData themeData() {
    return ThemeData(
      fontFamily: 'SF Pro',
      primaryColor: AppColors.blueButton,
      scaffoldBackgroundColor: AppColors.blackBG,
      textTheme: const TextTheme(
        displayLarge: AppTextStyles.displayLarge,
        displayMedium: AppTextStyles.displayMedium,
      ),
      buttonTheme: const ButtonThemeData(
        buttonColor: AppColors.blueButton,
        textTheme: ButtonTextTheme.primary,
      ),
    );
  }
}
