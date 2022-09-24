import 'package:flutter/material.dart';

class StatelessLearn extends StatelessWidget {
  const StatelessLearn({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(children: [
        TitleTextWidget(text: 'Data1'),
        TitleTextWidget(text: 'Data2'),
        TitleTextWidget(text: 'Data3'),
        TitleTextWidget(text: 'Data4'),
        _CustomContainer()
      ]),
    );
  }
}

class _CustomContainer extends StatelessWidget {
  //_CustomContainer private olur ve sadece bu dosyadan buna erişilebilir.
  const _CustomContainer({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20), color: Colors.red),
    );
  }
}

class TitleTextWidget extends StatelessWidget {
  const TitleTextWidget({Key? key, required this.text})
      : super(key: key); //null gelmesini istemiyorsa reqired atması gerekir
  final String
      text; //null gelmebili diyorsa final String? text şeklinde kullanılmalıdır ama parametre olarak (prop olarak) kullanılamaz
  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: Theme.of(context).textTheme.headline4,
    );
  }
}
