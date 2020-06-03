import 'package:flutter/material.dart';
import 'package:travel_app/screens/home/location_detail/location_detail.dart';
import 'package:travel_app/styles.dart';

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: LocationDetail(),
        theme: ThemeData(
          fontFamily: 'Monserrat',
          textTheme: TextTheme(
            headline1: TitleTextStyle,
            headline6: AppBarTextStyle,
            bodyText2: Body1TextStyle,
          ),
        ));
  }
}
