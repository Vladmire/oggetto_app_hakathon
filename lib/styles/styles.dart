import 'package:flutter/material.dart';

final appTheme = ThemeData(
    brightness: Brightness.light,
    colorScheme: ColorScheme.fromSeed(seedColor: Colors.yellow),
    useMaterial3: true,
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
}

