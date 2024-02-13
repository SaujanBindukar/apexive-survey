import 'package:apexive_test/core/theme/app_colors.dart';
import 'package:apexive_test/core/theme/app_style.dart';
import 'package:flutter/material.dart';

class AppTheme {
  ///theme for light mode
  static final lightTheme = ThemeData(
    textTheme: AppStyles.getLightTextTheme(),
    colorScheme: AppStyles.lightModeColorScheme,
    iconTheme: const IconThemeData(
      color: Colors.white,
    ),
    tabBarTheme: TabBarTheme(
      indicatorColor: Colors.white,
      labelStyle: AppStyles.getLightTextTheme().labelLarge,
      unselectedLabelColor: Colors.white,
      labelColor: Colors.white,
      dividerHeight: 0.05,
    ),
    iconButtonTheme: IconButtonThemeData(
      style: ButtonStyle(
        backgroundColor: const MaterialStatePropertyAll(
          AppColors.primaryContainerColor,
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
          side: BorderSide(
            color: Colors.white,
          ),
        ),
        side: BorderSide(
          color: Colors.white,
        )),
    inputDecorationTheme: InputDecorationTheme(
      isDense: true,
      iconColor: Colors.white,
      hintStyle: AppStyles.getLightTextTheme().bodyLarge,
      enabledBorder: const OutlineInputBorder(
        borderSide: BorderSide(
          color: Colors.white,
          width: 0.1,
        ),
      ),
      focusedBorder: const OutlineInputBorder(
        borderSide: BorderSide(
          color: Colors.white,
          width: 0.1,
        ),
      ),
      border: const OutlineInputBorder(
        borderSide: BorderSide(
          color: Colors.white,
          width: 0.1,
        ),
      ),
    ),
  );

  /// colors for dark mode
  static final darkTheme = ThemeData(
    colorScheme: AppStyles.darkModeColorScheme,
  );
}
