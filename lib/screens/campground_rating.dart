import 'package:flutter/material.dart';
import 'package:flutter_campground_application/themes/constants.dart';

class CampgroundRating extends StatelessWidget {
  const CampgroundRating({
    required this.rating,
    super.key
  });

  final num rating;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        Icon(
          Icons.star, 
          color: Theme.of(context).primaryColor,
          size: 19,  
        ),
        Text(' $rating'),
      ],
    );
  }
}