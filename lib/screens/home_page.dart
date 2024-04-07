import 'package:flutter/material.dart';
import '../bloc/campground.dart';
import 'campground_card.dart';

class HomePage extends StatelessWidget {
  const HomePage({
    required this.campgrounds,
    super.key
  });

  final List<Campground> campgrounds;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: 
        AppBar(
          title: const Text('Campgrounds'),
        ),
      
      body: 
        GridView.count(
          crossAxisCount: 1,
          children: campgrounds.map(
            (campground) => CampgroundCard(campground: campground)
          ).toList(),
        )
    );
  }
}