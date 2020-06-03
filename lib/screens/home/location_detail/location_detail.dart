import 'package:flutter/material.dart';
import 'package:travel_app/models/location.dart';
import 'package:travel_app/screens/home/location_detail/image_banner.dart';
import 'package:travel_app/screens/home/location_detail/text_section.dart';

class LocationDetail extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final location = Location.fetchAll().first;

    return Scaffold(
        appBar: AppBar(title: Text('Hello')),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            ImageBanner(location.imagePath),
            ...textSections(location)
          ],
        ));
  }

  List<Widget> textSections(Location location) {
    return location.data
        .map((data) => TextSection(data.title, data.text))
        .toList();
  }
}
