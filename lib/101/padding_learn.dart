import 'package:flutter/material.dart';

class PaddingLearn extends StatelessWidget {
  const PaddingLearn({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Padding(
        // eğer tüm komponentlerin kullandığı padding varsa en baştaki widget'ı paddingle sarmala ama bunu class'la yap VB tarzı
        padding: ProjectPadding
            .pagePaddingVertical, //projemizin standartlarını bu şekilde kullanacağız
        child: Column(
          children: [
            Padding(
              padding: EdgeInsets.all(10),
              child: Container(
                color: Colors.white,
                height: 100,
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(vertical: 20, horizontal: 30),
              child: Container(
                //her widget için padding yapmaya gerek yoktur. Örneğin Container'ın padding props'u vardır ve aynı şekilde çalışır
                color: Colors.blue,
                height: 100,
              ),
            ),
            Padding(
              padding: ProjectPadding
                  .pagePaddingRightOnly, //burda bu şekilde kullanacağız
              child: Text('Ali'),
            )
          ],
        ),
      ),
    );
  }
}

class ProjectPadding {
  //projelerde kullanırken tek tek çağırmayacağız bizim projemizin standartlarını kullancağız
  static const pagePaddingVertical = EdgeInsets.symmetric(vertical: 10);
  static const pagePaddingRightOnly = EdgeInsets.only(right: 20);
}
