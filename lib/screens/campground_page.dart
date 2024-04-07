import 'package:flutter/material.dart';
import '../bloc/campground.dart';

class CampgroundPage extends StatelessWidget {
  final Campground campground;
  
  const CampgroundPage({
    required this.campground,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Campground App'),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            ImageSection(imageLocation: campground.imageLocation),
            NameLocationRating(name: campground.name, location: campground.location, rating: campground.rating),
            const CallRouteShare(),
            DescriptionSection(description: campground.description),
          ],
        ),
      ),
    );
  }
}

class DescriptionSection extends StatelessWidget {
  const DescriptionSection({
    required this.description,
    super.key,
  });

  final String description;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20.0),
      child: Text(
        description,
        softWrap: true,
      ),
    );
  }
}

class NameLocationRating extends StatelessWidget {
  const NameLocationRating({required this.name, required this.location, required this.rating, super.key});

  final String name;
  final String location;
  final num rating;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20.0),
      child: Row(children: [
        Expanded(
          flex: 2,
          child: 
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                    padding: const EdgeInsets.all(4.0),
                    child: Text(name, style: const TextStyle(fontWeight: FontWeight.bold)),
                ),
                Padding(
                  padding: const EdgeInsets.all(4.0),
                  child: Text(location, style: const TextStyle(color: Colors.grey)),
                ),
              ],
            )
        ),
        Expanded(
          flex: 1,
          child:
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Row(
                mainAxisSize: MainAxisSize.min,
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Icon(Icons.star, color: Theme.of(context).primaryColor),
                  const Text(' 4.5'),
                ],
              ),
            )
        )
      ],),
    );
  }
}

class CallRouteShare extends StatelessWidget {
  const CallRouteShare({super.key});

  @override
  Widget build(BuildContext context) {
    Color callRouteShareColor = Theme.of(context).primaryColor;

    return Padding(
      padding: const EdgeInsets.only(left: 20.0, right: 20.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          CampgroundInfoButton(text: 'CALL', icon: Icons.phone, color: callRouteShareColor),
          CampgroundInfoButton(text: 'ROUTE', icon: Icons.near_me, color: callRouteShareColor),
          CampgroundInfoButton(text: 'SHARE', icon: Icons.share, color: callRouteShareColor)
        ]
      )
    );
  }
}

// make a new stateless widget called CampgroundInfoButton
class CampgroundInfoButton extends StatelessWidget {
  final String text;
  final IconData icon;
  final Color color;

  const CampgroundInfoButton({
    required this.text,
    required this.icon,
    required this.color,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: () => print('$text button pressed!'),
      child: 
        Column(
          children: [
            Icon(icon, color: color,),
            Text(text, style: TextStyle(color: color)),
          ],
        ),
    );
  }
}

class ImageSection extends StatelessWidget {
  const ImageSection({required this.imageLocation, super.key});

  final String imageLocation;

  @override
  Widget build(BuildContext context) {
    return Image.asset(
      imageLocation,
      width: 600,
      height: 400,
      fit: BoxFit.cover,
    );
  }
}