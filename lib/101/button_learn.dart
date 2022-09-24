import 'package:flutter/material.dart';

class ButtonLearn extends StatelessWidget {
  const ButtonLearn({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        children: [
          TextButton(
            child: Text(
              'TextButton',
              style: Theme.of(context).textTheme.subtitle1,
            ),
            style: ButtonStyle(
                backgroundColor: MaterialStateProperty.resolveWith((states) {
              if (states.contains(MaterialState.pressed)) {
                return Colors.green;
              }
              return Colors.blue.shade200;
            })),
            onPressed: () {},
          ),
          ElevatedButton(
            onPressed:
                null, // onPressed özelliğine null atayınca disable buton disable olur
            child: const Text('Elevated Button'),
          ),
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.abc_rounded),
          ),
          FloatingActionButton(
            onPressed: () {
              //servise istek at
              //sayfanın rengini düzenle
            },
            child: const Icon(Icons.add),
          ),
          OutlinedButton(
            style: OutlinedButton.styleFrom(
              backgroundColor: Colors.red,
              padding: EdgeInsets.all(10),
            ),
            onPressed: () {},
            child: SizedBox(
              child: Text('Outlined Button'),
              width: 200,
            ),
          ),
          OutlinedButton.icon(
            onPressed: () {},
            icon: Icon(Icons.ac_unit_rounded),
            label: Text('OutlinedButton.icon'),
            style: OutlinedButton.styleFrom(
                backgroundColor: Colors.amber, padding: EdgeInsets.all(20)),
          ),
          InkWell(
            onTap: () {},
            child: const Text('Inkwell Button'),
          ),
          Container(
            height: 100,
            color: Colors.white,
          ),
          SizedBox(
            height: 10,
          ),
          ElevatedButton(
            onPressed: () {},
            child: Padding(
              padding: const EdgeInsets.only(
                  top: 10, bottom: 10, right: 40, left: 40),
              child: Text(
                'Place Bid',
                style: Theme.of(context).textTheme.headline4,
              ),
            ),
            style: ElevatedButton.styleFrom(
                primary: Colors.black,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.all(Radius.circular(20)))),
          )
        ],
      ),
    );
  }
}

// Borders:
// CircleBorder(), RoundedRectangleBorder()