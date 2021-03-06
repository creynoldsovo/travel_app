import 'package:flutter/material.dart';
import 'package:travel_app/app.dart';
import 'package:travel_app/models/location.dart';

class Locations extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final locations = Location.fetchAll();

    return Scaffold(
      appBar: AppBar(title: Text('Locations')),
      body: ListView(
        children: locations
            .map((location) => GestureDetector(
                child: Text(location.name),
                onTap: () => _onLocationTap(context, location.id)))
            .toList(),
      ),
    );
  }

  _onLocationTap(BuildContext context, int locationId) {
    Navigator.pushNamed(context, LocationDetailRoute,
        arguments: {'id': locationId});
  }
}
