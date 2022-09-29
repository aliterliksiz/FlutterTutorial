import 'package:flutter/material.dart';

class StatefullLifeCycleLearn extends StatefulWidget {
  const StatefullLifeCycleLearn({Key? key, required this.message}) : super(key: key);
  final String message;

  @override
  State<StatefullLifeCycleLearn> createState() => _StatefullLifeCycleLearnState();
}

class _StatefullLifeCycleLearnState extends State<StatefullLifeCycleLearn> {
  String _message = '';
  late final bool _isOdd;
  @override
  void initState() {
    //initState'ler bir classın içindeki constructor metodlar gibidir. Statefull widgetler çizilmeye başlamadan biter yani build metodu başlamadan çağrılıyor yani initState içerisinde logic yazılan yerde view güncellenemez çünkü daha initState'te ekran daha çizilmemiş olur
    super.initState();
    _message = widget.message;
    _isOdd = widget.message.length.isOdd;
    _computeName();
  }

  void _computeName() {
    if (_isOdd) {
      _message += ' Tek';
    } else {
      _message += ' Çift';
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(_message),
      ),
      body: _isOdd
          ? TextButton(
              child: Text(_message),
              onPressed: () {},
            )
          : ElevatedButton(onPressed: () {}, child: Text(_message)),
    );
  }
}
