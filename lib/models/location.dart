import 'package:travel_app/models/location_data.dart';

class Location {
  final int id;
  String name;
  String imagePath;
  final List<LocationData> data;

  Location(this.id, this.name, this.imagePath, this.data);

  static List<Location> fetchAll() {
    return [
      Location(1, 'Kiyomizu-dera', 'assets/images/kiyomizu-dera.jpg', [
        LocationData('Summary',
            'Kiyomizu-dera, officially Otowa-san Kiyomizu-dera, is an independent Buddhist temple in eastern Kyoto. The temple is part of the Historic Monuments of Ancient Kyoto UNESCO World Heritage site.'),
        LocationData('Architectural Style', 'Japanese Buddhist architecture.'),
      ]),
      Location(2, 'Mount Fuji', 'assets/images/fuji.jpg', [
        LocationData('Summary',
            'Japan’s Mt. Fuji is an active volcano about 100 kilometers southwest of Tokyo. Commonly called “Fuji-san,” it’s the country’s tallest peak, at 3,776 meters. A pilgrimage site for centuries, it’s considered one of Japan’s 3 sacred mountains, and summit hikes remain a popular activity. Its iconic profile is the subject of numerous works of art, notably Edo Period prints by Hokusai and Hiroshige.'),
        LocationData('Did You Know',
            'There are three cities that surround Mount Fuji: Gotemba, Fujiyoshida and Fujinomiya.'),
      ]),
      Location(3, 'Arashiyama Bamboo Grove', 'assets/images/arashiyama.jpg', [
        LocationData('Summary',
            'While we could go on about the ethereal glow and seemingly endless heights of this bamboo grove on the outskirts of Kyoto, the sight\'s pleasures extend beyond the visual realm.'),
        LocationData('How to Get There',
            'Kyoto airport, with several terminals, is located 16 kilometres south of the city and is also known as Kyoto. Kyoto can also be reached by transport links from other regional airports.'),
      ]),
    ];
  }

  static Location fetchById(int locationId) {
    List<Location> locations = Location.fetchAll();

    List<Location> location =
        locations.where((location) => location.id == locationId).toList();

    if (location == null) {
      return null;
    }
    return location.first;
  }
}
