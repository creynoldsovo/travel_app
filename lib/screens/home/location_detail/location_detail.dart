import 'package:flutter/material.dart';
import 'package:travel_app/screens/home/location_detail/image_banner.dart';
import 'package:travel_app/screens/home/location_detail/text_section.dart';

class LocationDetail extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: Text('Hello')),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            ImageBanner('assets/images/kiyomizu-dera.jpg'),
            TextSection('Some title',
                'askjdhkashdkahjsdkjahsdkjhaskdjhaksjdhaksjdhakjsdhkajsdhksjdh kajshd ajhsd kjahs kajhdska hjsdjk skadkads hkasdh k'),
            TextSection('Some title',
                'askjdhkashdkahjsdkjahsdkjhaskdjhaksjdhaksjdhakjsdhkajsdhksjdh kajshd ajhsd kjahs kajhdska hjsdjk skadkads hkasdh k'),
            TextSection('Some title',
                'askjdhkashdkahjsdkjahsdkjhaskdjhaksjdhaksjdhakjsdhkajsdhksjdh kajshd ajhsd kjahs kajhdska hjsdjk skadkads hkasdh k'),
            TextSection('Some title',
                'askjdhkashdkahjsdkjahsdkjhaskdjhaksjdhaksjdhakjsdhkajsdhksjdh kajshd ajhsd kjahs kajhdska hjsdjk skadkads hkasdh k'),
          ],
        ));
  }
}
