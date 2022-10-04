import 'package:flutter/material.dart';

class TextFieldLearn extends StatefulWidget {
  const TextFieldLearn({Key? key}) : super(key: key);

  @override
  State<TextFieldLearn> createState() => _TextFieldLearnState();
}

class _TextFieldLearnState extends State<TextFieldLearn> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: TextField(
        maxLength: 20,
        // buildCounter: (BuildContext context ) {
        //   return Container(
        //     height: 10,
        //     width: 40,
        //     color: Colors.green[100 * ((currentLenght ?? 0) ~/ 2)],
        //   );
        // },
        decoration: InputDecoration(prefix: Icon(Icons.mail), border: OutlineInputBorder(), labelText: 'MAIL'),
      ),
    );
  }
}
