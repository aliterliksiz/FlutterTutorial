//Bir ekran olacak
//Bu ekranda 3 buton olacak ve bunlara basınca renk değiştirecek
//Seçili olan buton selected icon olacak

import 'package:flutter/material.dart';

class ColorDemos extends StatefulWidget {
  const ColorDemos({Key? key}) : super(key: key);

  @override
  State<ColorDemos> createState() => _ColorDemosState();
}

class _ColorDemosState extends State<ColorDemos> {
  Color? _backgroundColor = Colors.transparent;
  void _changeBackgroundColor(Color color) {
    setState(() {
      _backgroundColor = color;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: _backgroundColor,
      bottomNavigationBar: BottomNavigationBar(
        onTap: _colorOnTap,
        items: [
          BottomNavigationBarItem(
              icon: _ColorsContainer(
                color: Colors.red,
              ),
              label: 'Red'),
          BottomNavigationBarItem(
              icon: _ColorsContainer(
                color: Colors.yellow,
              ),
              label: 'Yellow'),
          BottomNavigationBarItem(
              icon: _ColorsContainer(
                color: Colors.blue,
              ),
              label: 'Blue')
        ],
      ),
    );
  }

  void _colorOnTap(int value) {
    if (value == _MyColors.red.index) {
      _changeBackgroundColor(Colors.red);
    } else if (value == _MyColors.yellow.index) {
      _changeBackgroundColor(Colors.yellow);
    } else if (value == _MyColors.blue.index) {
      _changeBackgroundColor(Colors.blue);
    }
  }
}

enum _MyColors { red, yellow, blue }

class _ColorsContainer extends StatelessWidget {
  const _ColorsContainer({
    Key? key,
    required this.color,
  }) : super(key: key);
  final Color color;
  @override
  Widget build(BuildContext context) {
    return Container(
      color: color,
      width: 10,
      height: 10,
    );
  }
}
