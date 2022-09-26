import 'package:flutter/material.dart';

//bir mobil uygulama çalışmaya başladığında servislerin dataları göstermesi
//için beklenir (1 sn felan sürer internet hızına göre değişir) bu süre içerisinde uygulama default
//olarak beyaz ekran gösterir. Biz uygulamalarımızda beyaz ekran göstermemek için indicatorlar kullanırız.
class IndicatorLearn extends StatelessWidget {
  const IndicatorLearn({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [CenterCircularRedProgess()],
      ),
      body: LinearProgressIndicator(),
    );
  }
}

class CenterCircularRedProgess extends StatelessWidget {
  const CenterCircularRedProgess({
    Key? key,
  }) : super(key: key);
  final redColor = Colors.red;

  @override
  Widget build(BuildContext context) {
    return Center(
        child: CircularProgressIndicator(
      color: redColor,
      strokeWidth: 5,
    ));
  }
}
