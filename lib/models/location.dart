import 'package:travel_app/models/location_data.dart';

class Location {
  String name;
  String imagePath;
  final List<LocationData> data;

  Location(this.name, this.imagePath, this.data);

  static List<Location> fetchAll() {
    return [
      Location('Arashiyama Bamboo Grove', 'assets/images/kiyomizu-dera.jpg', [
        LocationData('Summary',
            'While we could go on about the ethereal glow and seemingly endless heights of this bamboo grove on the outskirts of Kyoto, the sight\'s pleasures extend beyond the visual realm.'),
        LocationData('How to Get There',
            'Kyoto airport, with several terminals, is located 16 kilometres south of the city and is also known as Kyoto. Kyoto can also be reached by transport links from other regional airports.'),
      ]),
    ];
  }
}
