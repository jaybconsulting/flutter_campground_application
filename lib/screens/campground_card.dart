import 'package:flutter/material.dart';
import '../bloc/campground.dart';
import 'campground_page.dart';
import '../themes/constants.dart';
import 'campground_rating.dart';

class CampgroundCard extends StatelessWidget {
  const CampgroundCard({
    required this.campground,
    super.key,
  });

  final Campground campground;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap:() => Navigator.push(context, MaterialPageRoute(builder: (context) => CampgroundPage(campground: campground))),
      child: Card(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            ClipRRect(
              borderRadius: const BorderRadius.only(
                topLeft: Radius.circular(10),
                topRight: Radius.circular(10),
              ),
              // ignore: sized_box_for_whitespace
              child: Container(
                height: 300,
                child: Image.asset(
                  campground.imageLocation,
                  fit: BoxFit.cover,
                ),
              ),
            ),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(campground.name, style: campgroundNameStyle),
                        CampgroundRating(rating: campground.rating),
                      ],
                    ),
                    Text(campground.location, style: campgroundLocationStyle),
                  ],
                ),
              )
            )
          ],
        ),
      ),
    );
  }
}