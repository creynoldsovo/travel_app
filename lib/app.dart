import 'package:flutter/material.dart';
import 'package:travel_app/screens/location_detail/location_detail.dart';
import 'package:travel_app/screens/locations/locations.dart';
import 'package:travel_app/styles.dart';

const LocationsRoute = '/';
const LocationDetailRoute = '/location_detail';

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(onGenerateRoute: _routes(), theme: _theme());
  }

  RouteFactory _routes() {
    return (settings) {
      final Map<String, dynamic> arguments = settings.arguments;
      Widget screen;

      switch (settings.name) {
        case LocationsRoute:
          screen = Locations();
          break;
        case LocationDetailRoute:
          screen = LocationDetail(arguments['id']);
          break;
        default:
          return null;
      }

      return MaterialPageRoute(builder: (BuildContext context) => screen);
    };
  }

  _theme() {
    return ThemeData(
      fontFamily: 'Monserrat',
      textTheme: TextTheme(
        headline1: TitleTextStyle,
        headline6: AppBarTextStyle,
        bodyText2: Body1TextStyle,
      ),
    );
  }
}
