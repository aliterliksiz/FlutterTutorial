import 'package:flutter/material.dart';

class IconLearnView extends StatelessWidget {
  IconLearnView({Key? key}) : super(key: key);
  final IconSize _iconSize = IconSize();
  final IconColors _iconColor = IconColors();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Hello')),
      body: Column(
        children: [
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.message_outlined),
            color: Colors.red,
            iconSize: 40,
          ),
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.message_outlined),
            color: _iconColor.flory,
            iconSize: _iconSize.iconSmall,
          ),
          IconButton(
              onPressed: () {},
              icon: Icon(Icons.message_outlined),
              color: _iconColor.flory,
              iconSize: _iconSize.iconSmall)
        ],
      ),
    );
  }
}

class IconSize {
  final double iconSmall = 40;
}

class IconColors {
  final Color flory = const Color(0xffED617A);
}
