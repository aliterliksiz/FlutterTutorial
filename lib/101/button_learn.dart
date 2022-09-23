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
              'Save',
              style: Theme.of(context).textTheme.subtitle1,
            ),
            style: ButtonStyle(
                backgroundColor: MaterialStateProperty.resolveWith((states) {
              if (states.contains(MaterialState.pressed)) {
                return Colors.green;
              }
              return Colors.white;
            })),
            onPressed: () {},
          ),
          ElevatedButton(
            onPressed:
                null, // onPressed özelliğine null atayınca disable buton disable olur
            child: const Text('Save'),
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
                shape: CircleBorder()),
            onPressed: () {},
            child: const Text('Save'),
          ),
          InkWell(
            onTap: () {},
            child: const Text('Save'),
          ),
        ],
      ),
    );
  }
}

// Borders:
// CircleBorder(), RoundedRectangleBorder()