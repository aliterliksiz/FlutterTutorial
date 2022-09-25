import 'package:flutter/material.dart';

class CardLearn extends StatelessWidget {
  const CardLearn({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        children: [
          Card(
            color: Colors
                .white, //Color'ı bu şekilde vermek yanlıştır aşağidaki gibi theme'dan vereceğiz
            margin: ProjectMargin.cardMarging,
            elevation: 100,
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
            child: SizedBox(
              height: 100,
              width: 300,
              child: Center(child: Text('Ali')),
            ),
          ),
          _CustomCards(
            child: SizedBox(
              height: 100,
              width: 300,
              child: Center(child: Text('Ali')),
            ),
          )
        ],
      ),
    );
  }
}

class ProjectMargin {
  static const cardMarging = EdgeInsets.all(10);
}

class _CustomCards extends StatelessWidget {
  //Custom Card yapıyorsak sadece Card içermeli Card dışındaki komponentler olmamalı
  final Widget
      child; //bu yüzden burada final key ile child tanımlayıp chil propunu customize edebiliriz

  _CustomCards({Key? key, required this.child}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Card(
      color: Theme.of(context).colorScheme.error,
      margin: ProjectMargin.cardMarging,
      elevation: 100,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
      child: child,
    );
  }
}



//StadiumBorder(), CircleBorder(), RoundedRectangleBorder()
