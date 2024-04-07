import 'package:flutter/material.dart';
import '../repository/campground_data.dart';
import 'campground_page.dart';

class CampgroundApp extends StatefulWidget {
  const CampgroundApp({super.key});

  @override
  State<CampgroundApp> createState() => _CampgroundAppState();
}

class _CampgroundAppState extends State<CampgroundApp> {
  int index = 0;

  void _goToNextPage() {
    setState(() {
      index = (index + 1) % campgrounds.length;
    });
  }

  void _goToPreviousPage() {
    setState(() {
      index = (index - 1) % campgrounds.length;
    });
  }

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
      home: CampgroundPage(
        campground: campgrounds[index],
        goToNextPage: _goToNextPage,
        goToPreviousPage: _goToPreviousPage,
      )
    );
  }
}