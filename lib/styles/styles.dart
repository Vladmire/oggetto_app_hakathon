import 'package:flutter/material.dart';

final appTheme = ThemeData(
    brightness: Brightness.light,
    colorScheme: const ColorScheme(
      brightness: Brightness.light,
      primary: Color(0xFF6D5E00),
      onPrimary: Color(0xFFFFFFFF),
      primaryContainer: Color(0xFFFFE251),
      onPrimaryContainer: Color(0xFF211B00),
      secondary: Color(0xFF685E34),
      onSecondary: Color(0xFFFFFFFF),
      secondaryContainer: Color(0xFFF0E3AD),
      onSecondaryContainer: Color(0xFF211B00),
      tertiary: Color(0xFF326949),
      onTertiary: Color(0xFFFFFFFF),
      tertiaryContainer: Color(0xFFB4F0C7),
      onTertiaryContainer: Color(0xFF002110),
      error: Color(0xFFBA1A1A),
      onError: Color(0xFFFFFFFF),
      background: Color(0xFFFFFBFF),
      onBackground: Color(0xFF1D1B16),
      surface: Color(0xFFFFFBFF),
      onSurface: Color(0xFF1D1B16),
    ),
);

class AppTextStyles {
  static const tabBarTextSelected = TextStyle(
    fontWeight: FontWeight.w500,
    fontSize: 12.0,
    letterSpacing: 0.5,
    color: Color(0xFF1D192B),
  );
  static const tabBarText = TextStyle(
    fontWeight: FontWeight.w500,
    fontSize: 12.0,
    letterSpacing: 0.5,
    color: Color(0xFF49454F),
  );
  static const profileNameText = TextStyle(
    fontWeight: FontWeight.w700,
    fontSize: 16.0,
    letterSpacing: 0.5,
    color: Color(0xFF211B00),
  );
  static const profileSubtitle = TextStyle(
    fontWeight: FontWeight.w400,
    fontSize: 14.0,
    letterSpacing: 0.5,
    color: Color(0xFF605200),
  );
  static const profileSectionTitle = TextStyle(
    fontWeight: FontWeight.w600,
    fontSize: 19.0,
    letterSpacing: 0.5,
    color: Color(0xFF2D2500),
  );
  static const profileSubsectionTitle = TextStyle(
    fontWeight: FontWeight.w400,
    fontSize: 16.0,
    letterSpacing: 0.5,
    color: Color(0xFF2D2500),
  );
  static const profileChipText = TextStyle(
    fontWeight: FontWeight.w600,
    fontSize: 14.0,
    letterSpacing: 0.5,
    color: Color(0xFF393000),
  );

  static const factSubtitle = TextStyle(
    fontWeight: FontWeight.w400,
    fontSize: 12.0,
    letterSpacing: 0.5,
    color: Color(0xFF393000),
  );
  static const factTitle = TextStyle(
    fontWeight: FontWeight.w600,
    fontSize: 14.0,
    letterSpacing: 0.5,
    color: Color(0xFF393000),
  );
  static const greetingTitle = TextStyle(
    fontWeight: FontWeight.w700,
    fontSize: 30.0,
    letterSpacing: 0.5,
    color: Color(0xFF6D5E00),
  );
  static const gameQuestionText = TextStyle(
    fontWeight: FontWeight.w700,
    fontSize: 24.0,
    letterSpacing: 0.5,
    color: Color(0xFF6D5E00),
  );
  static const departmentNameString = TextStyle(
    fontWeight: FontWeight.w500,
    fontSize: 24.0,
    letterSpacing: 0.5,
    color: Color(0xFF6D5E00),
  );


}
