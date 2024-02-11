import 'package:apexive_test/core/theme/app_colors.dart';
import 'package:flutter/material.dart';

class AppStyles {
  static TextTheme getLightTextTheme() {
    final textColor = lightModeColorScheme.onSurface;
    return TextTheme(
      headlineLarge: TextStyle(
        fontSize: 32,
        fontWeight: FontWeight.w700,
        color: textColor,
      ),
      headlineMedium: TextStyle(
        fontSize: 28,
        fontWeight: FontWeight.w700,
        color: textColor,
      ),
      headlineSmall: TextStyle(
        fontSize: 24,
        fontWeight: FontWeight.w700,
        color: textColor,
      ),
      titleLarge: TextStyle(
        fontSize: 16,
        fontWeight: FontWeight.w600,
        color: textColor,
      ),
      titleMedium: TextStyle(
        fontSize: 16,
        fontWeight: FontWeight.w600,
        color: textColor,
      ),
      bodyLarge: TextStyle(
          fontSize: 16,
          fontWeight: FontWeight.w400,
          color: textColor,
          letterSpacing: 0.5),
      bodyMedium: TextStyle(
        fontSize: 14,
        fontWeight: FontWeight.w400,
        color: textColor,
      ),
      bodySmall: TextStyle(
          fontSize: 12,
          fontWeight: FontWeight.w400,
          color: textColor,
          letterSpacing: 0.4),
      labelLarge: TextStyle(
        fontSize: 14,
        fontWeight: FontWeight.w500,
        color: textColor,
      ),
    );
  }

  static TextTheme getDarkTextTheme() {
    final textColor = lightModeColorScheme.onSurface;
    return TextTheme(
      headlineLarge: TextStyle(
          fontSize: 32, fontWeight: FontWeight.w700, color: textColor),
      headlineMedium: TextStyle(
          fontSize: 28, fontWeight: FontWeight.w700, color: textColor),
      headlineSmall: TextStyle(
          fontSize: 24, fontWeight: FontWeight.w700, color: textColor),
      titleLarge: TextStyle(
          fontSize: 16, fontWeight: FontWeight.w600, color: textColor),
      titleMedium: TextStyle(
          fontSize: 16, fontWeight: FontWeight.w600, color: textColor),
      bodyLarge: TextStyle(
          fontSize: 16,
          fontWeight: FontWeight.w400,
          color: textColor,
          letterSpacing: 0.5),
      bodyMedium: TextStyle(
        fontSize: 14,
        fontWeight: FontWeight.w400,
        color: textColor,
      ),
      bodySmall: TextStyle(
          fontSize: 12,
          fontWeight: FontWeight.w400,
          color: textColor,
          letterSpacing: 0.4),
      labelLarge: TextStyle(
        fontSize: 14,
        fontWeight: FontWeight.w500,
        color: textColor,
      ),
    );
  }

  static final lightModeColorScheme = ColorScheme.fromSeed(
    seedColor: AppColors.backgroundColor,
    onSurface: Colors.white,
    primaryContainer: AppColors.primaryContainerColor,
    onPrimaryContainer: Colors.white,
    secondaryContainer: AppColors.secondaryContainerColor,
    onSecondaryContainer: Colors.white,
  );

  static final darkModeColorScheme = ColorScheme.fromSeed(
    seedColor: AppColors.backgroundColor,
    onSurface: Colors.white,
    primaryContainer: Colors.black,
    onPrimaryContainer: Colors.white,
    secondaryContainer: Colors.grey,
    onSecondaryContainer: Colors.white,
  );
}
