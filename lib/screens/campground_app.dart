import 'package:flutter/material.dart';
import '../bloc/campground.dart';
import 'campground_page.dart';

class CampgroundApp extends StatelessWidget {
  CampgroundApp({super.key});

  final Campground swissCampground = Campground(
    name: 'Oeschinen Lake Campground',
    location: 'Kandersteg, Switzerland',
    description: 
      'Lake Oeschinen lies at the foot of the Blüemlisalp in the '            
      'Bernese Alps. Situated 1,578 meters above sea level, it '            
      'is one of the larger Alpine Lakes. A gondola ride from '            
      'Kandersteg, followed by a half-hour walk through pastures '            
      'and pine forest, leads you to the lake, which warms to 20 '            
      'degrees Celsius in the summer. Activities enjoyed here '            
      'include rowing, and riding the summer toboggan run.',
    imageLocation: 'assets/images/swiss_campground.jpg',
    rating: 4.5,
  );

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
      home: CampgroundPage(campground: swissCampground)
    );
  }
}