import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class AppBarLearnView extends StatelessWidget {
  const AppBarLearnView({Key? key}) : super(key: key);
  final String _title = 'Welcome to Learn';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        title: Text(_title),
        centerTitle: true,
        systemOverlayStyle: SystemUiOverlayStyle.light,
        leading: Icon(Icons.chevron_left),
        leadingWidth: 23,
        //actionsIconTheme: IconThemeData(color: Colors.red, size: 40),
        actions: [
          IconButton(onPressed: () {}, icon: Icon(Icons.more_horiz)),
          Center(
            child: CircularProgressIndicator(),
          )
        ],
      ),
    );
  }
}
