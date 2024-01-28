import 'package:apexive_test/core/theme/app_colors.dart';
import 'package:flutter/material.dart';

final appTheme = _getAppTheme();

final _colorScheme = ColorScheme.fromSeed(
  seedColor: AppColors.backgroundColor,
  onSurface: Colors.white,
  primaryContainer: AppColors.secondaryBackgroundColor,
  onPrimaryContainer: Colors.white,
  secondaryContainer: AppColors.tertiaryBackgroundColor,
  onSecondaryContainer: Colors.white,
);

TextTheme _getTextTheme() {
  final textColor = _colorScheme.onSurface;
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
      letterSpacing: 0.4,
    ),
    labelLarge: TextStyle(
      fontSize: 14,
      fontWeight: FontWeight.w500,
      color: textColor,
    ),
  );
}

ThemeData _getAppTheme() {
  return ThemeData(
    textTheme: _getTextTheme(),
    colorScheme: _colorScheme,
    iconTheme: const IconThemeData(
      color: Colors.white,
    ),
    tabBarTheme: TabBarTheme(
      indicatorColor: Colors.white,
      labelStyle: _getTextTheme().labelLarge,
      unselectedLabelColor: Colors.white,
      labelColor: Colors.white,
      dividerHeight: 0.05,
    ),
    iconButtonTheme: IconButtonThemeData(
      style: ButtonStyle(
        backgroundColor: const MaterialStatePropertyAll(
          AppColors.secondaryBackgroundColor,
        ),
        shape: MaterialStatePropertyAll(
          RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(8),
          ),
        ),
      ),
    ),
    checkboxTheme: const CheckboxThemeData(
      shape: RoundedRectangleBorder(
        side: BorderSide(color: Colors.white),
      ),
    ),
    inputDecorationTheme: const InputDecorationTheme(
      isDense: true,
      iconColor: Colors.white,
      enabledBorder: OutlineInputBorder(
        borderSide: BorderSide(
          color: Colors.white,
          width: 0.1,
        ),
      ),
      focusedBorder: OutlineInputBorder(
        borderSide: BorderSide(
          color: Colors.white,
          width: 0.1,
        ),
      ),
      border: OutlineInputBorder(
        borderSide: BorderSide(
          color: Colors.white,
          width: 0.1,
        ),
      ),
    ),
  );
}
