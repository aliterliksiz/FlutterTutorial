import 'package:flutter/material.dart';

class ColumnRowLearn extends StatelessWidget {
  const ColumnRowLearn({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        children: [
          Expanded(
            flex: 4,
            child: Row(
              children: [
                Expanded(
                  child: Container(
                    color: Colors.red,
                  ),
                ),
                Expanded(
                  child: Container(
                    color: Colors.green,
                  ),
                ),
                Expanded(
                  child: Container(
                    color: Colors.pink,
                  ),
                ),
                Expanded(
                  child: Container(
                    color: Colors.yellow,
                  ),
                ),
              ],
            ),
          ),
          Spacer(
            flex: 2,
          ),
          Expanded(
              flex: 2,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.center,
                //mainAxisSize: MainAxisSize.min, Default değeri max'dır min' e çekince Aligmentler patlar
                children: [
                  Text('a1'),
                  Text('a2'),
                  Text('a3'),
                ],
              )),
          Container(
            height: ProjectContainerSizes.cardHight,
            child: Column(
              children: [
                Expanded(
                  child: Text('aaa'),
                ),
                Expanded(
                  child: Text('aaa'),
                ),
                Spacer(),
                Expanded(
                  child: Text('aaa'),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class ProjectContainerSizes {
  static const double cardHight = 200;
}
 // Lesson 5 - 58.55 Responsive Desing
 //Expanded sadece Row ve Column'da kullanılır