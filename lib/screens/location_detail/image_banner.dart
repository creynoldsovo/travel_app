import 'package:flutter/material.dart';

class ImageBanner extends StatelessWidget {
  final String _imageUrl;

  ImageBanner(this._imageUrl);

  @override
  Widget build(BuildContext context) {
    return Container(
      constraints: BoxConstraints(maxHeight: 200.0),
      decoration: BoxDecoration(color: Colors.grey[400]),
      child: Image.asset(_imageUrl, fit: BoxFit.cover),
    );
  }
}
