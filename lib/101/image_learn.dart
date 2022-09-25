import 'package:flutter/material.dart';

class ImageLearn extends StatelessWidget {
  const ImageLearn({Key? key}) : super(key: key);
  final String _imagePath =
      'https://upload.wikimedia.org/wikipedia/commons/thumb/0/00/Apple-book.svg/1018px-Apple-book.svg.png';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(children: [
        SizedBox(
            height: 100,
            width: 100,
            child: PngImage(
              name: ImageItems().appleBookWithoutPath,
            )),
        Image.network(
          _imagePath,
          errorBuilder: ((context, error, stackTrace) =>
              Icon(Icons.abc_outlined)),
        )
      ]),
    );
  }
}

class ImageItems {
  final String appleWithBook = "assets/png/ios11-ibooks-app_2x.png";
  final String appleBook = "assets/apple_book.png";
  final String appleBookWithoutPath = "ios11-ibooks-app_2x";
}

class PngImage extends StatelessWidget {
  const PngImage({Key? key, required this.name}) : super(key: key);
  final String name;
  @override
  Widget build(BuildContext context) {
    return Image.asset(
      _nameWithPath,
      fit: BoxFit.cover,
    );
  }

  String get _nameWithPath => 'assets/png/$name.png';
}
