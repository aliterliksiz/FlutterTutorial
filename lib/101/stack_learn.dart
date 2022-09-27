import 'package:flutter/material.dart';

//Bir yerde üst üste binme varsa orada stack kullanılmış demektir.
class StackLearn extends StatelessWidget {
  const StackLearn({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Stack(
        children: [
          Container(
            color: Colors.red,
            height: 100,
          ),
          Padding(
            padding: EdgeInsets.only(top: 25),
            child: Container(
              color: Colors.white,
              height: 100,
            ),
          ),
          Positioned(
            left: 0,
            right: 0,
            top: 50,
            child: Container(
              color: Colors.green,
              height: 100,
            ),
          ),
          Positioned.fill(
            top: 100,
            child: Container(color: Colors.yellow),
          )
        ],
      ),
    );
  }
}
