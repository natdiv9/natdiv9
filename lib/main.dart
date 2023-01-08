import 'package:flutter/material.dart';
import 'package:natdiv9_portfolio/desktop.dart';
import 'package:natdiv9_portfolio/themes/app_theme.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Natdiv9',
        debugShowCheckedModeBanner: false,
        theme: appThemeData,
        home: DesktopLayout());
  }
}
