import 'package:flutter/material.dart';
import '../repository/campground_data.dart';
import 'home_page.dart';

class CampgroundApp extends StatelessWidget {
  const CampgroundApp({super.key});

  @override
  Widget build(BuildContext context) {
    const Color primaryColor = Colors.blue;

    return MaterialApp(
      theme: ThemeData(
        primaryColor: primaryColor,
        appBarTheme: const AppBarTheme(
          backgroundColor: primaryColor,
        ),
      ),
      home: HomePage(
        campgrounds: campgrounds
      ),
    );
  }
}