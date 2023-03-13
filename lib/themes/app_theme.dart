import 'package:flutter/material.dart';

import 'color_theme.dart';

final ThemeData appThemeData = ThemeData(
    fontFamily: 'Fira Code',
    textTheme: const TextTheme().copyWith(
        headlineLarge: const TextStyle(fontSize: 62, color: Color(0xFFE5E9F0)),
        headlineMedium: const TextStyle(fontSize: 48, color: Color(0xFFE5E9F0)),
        headlineSmall: const TextStyle(fontSize: 32, color: AppColor.purple),
        bodyLarge: const TextStyle(fontSize: 18, color: Color(0xFFE5E9F0)),
        bodyMedium: const TextStyle(fontSize: 16, color: AppColor.primary),
        bodySmall: const TextStyle(fontSize: 14)),
    backgroundColor: AppColor.background,
    appBarTheme: const AppBarTheme(
        scrolledUnderElevation: 0,
        elevation: 0,
        backgroundColor: Colors.transparent),
    scaffoldBackgroundColor: AppColor.scaffoldBackground,
    inputDecorationTheme: const InputDecorationTheme(),
    textButtonTheme: TextButtonThemeData(
        style: TextButton.styleFrom(
            textStyle: TextStyle(color: Colors.white),
            backgroundColor: Colors.transparent,
            foregroundColor: Colors.transparent)),
    buttonTheme: const ButtonThemeData(
        buttonColor: AppColor.primaryButtons,
        hoverColor: AppColor.primaryHovers));
