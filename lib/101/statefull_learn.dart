import 'package:flutter/material.dart';
import 'package:flutter_application_1/product/counter_hello_button.dart';
import 'package:flutter_application_1/product/language/language_items.dart';

//Statefull'un amacı bir datayı update etmem gerekiyorsa, call etmem gerekiyorsa, çağırmam gerekiyorsa kullanılır
class StatefullLearn extends StatefulWidget {
  const StatefullLearn({Key? key}) : super(key: key);

  @override
  State<StatefullLearn> createState() => _StatefullLearnState();
}

class _StatefullLearnState extends State<StatefullLearn> {
  int _cauntValue = 0;
  //setState üzerinden dataları güncelleriz bu amaç için kullanılır
  //setState'in içerisine kod yazdığınızda build metodu tekrar tetiklenir
  // build metodunun tekrar tetiklenmesi sayesinde value son nihai halini alır

  void _updateCounter(bool isIncrement) {
    if (isIncrement) {
      _cauntValue = _cauntValue + 1;
    } else {
      _cauntValue = _cauntValue - 1;
    }
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(LanguageItems.welcomeTitle),
      ),
      floatingActionButton: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          _incrementButton(),
          _deincrementButton(),
        ],
      ),
      body: Column(
        children: [
          Center(
              child: Text(
            _cauntValue.toString(),
            style: Theme.of(context).textTheme.headline2,
          )),
          Placeholder(),
          CounterHelloButton(),
        ],
      ),
    );
  }

  Padding _deincrementButton() {
    return Padding(
      padding: const EdgeInsets.only(left: 10),
      child: FloatingActionButton(
        onPressed: () {
          _updateCounter(false);
        },
        child: Icon(Icons.remove),
      ),
    );
  }

  FloatingActionButton _incrementButton() {
    print('burda');
    return FloatingActionButton(
      onPressed: () {
        _updateCounter(true);
      },
      child: Icon(Icons.add),
    );
  }
}
