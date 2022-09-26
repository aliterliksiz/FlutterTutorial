import 'package:flutter/material.dart';

import '../core/random_image.dart';

class ListTileLearn extends StatelessWidget {
  const ListTileLearn({Key? key}) : super(key: key);
  final imageUrl = 'https://picsum.photos/200/300';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(children: [
          Card(
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: ListTile(
                title: RandomImage(),
                dense: true, //Componenti olabildiğince sıkıştırmamızı sağlıyor
                onTap: () {},
                subtitle: Text('How do you use your card'),
                minVerticalPadding: 0,
                leading: Container(
                    color: Colors.red,
                    height: 100,
                    width: 30,
                    alignment: Alignment.topCenter,
                    child: Icon(Icons.money)), //Soluna koymak için kullanılır
                trailing: SizedBox(
                    width: 20,
                    child: Icon(
                        Icons.chevron_right)), //Sağına koymak için kullanılır
              ),
            ),
          )
        ]),
      ),
    );
  }
}
