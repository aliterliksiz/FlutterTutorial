import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_application_1/101/app_bar_learn.dart';
import 'package:flutter_application_1/101/button_learn.dart';
import 'package:flutter_application_1/101/card_learn.dart';
import 'package:flutter_application_1/101/color_learn.dart';
import 'package:flutter_application_1/101/column_row_learn.dart';
import 'package:flutter_application_1/101/container_sized_box_learn.dart';
import 'package:flutter_application_1/101/icon_learn.dart';
import 'package:flutter_application_1/101/indicator_learn.dart';
import 'package:flutter_application_1/101/list_tile_learn.dart';
import 'package:flutter_application_1/101/list_view_learn.dart';
import 'package:flutter_application_1/101/padding_learn.dart';
import 'package:flutter_application_1/101/scaffold_learn.dart';
import 'package:flutter_application_1/101/stack_learn.dart';
import 'package:flutter_application_1/101/statefull_learn.dart';
import 'package:flutter_application_1/101/stateless_learn.dart';
import 'package:flutter_application_1/101/text_field_learn.dart';
import 'package:flutter_application_1/101/text_learn_view.dart';
import 'package:flutter_application_1/demos/color_demos_view.dart';
import 'package:flutter_application_1/demos/color_life_cycle_view.dart';
import 'package:flutter_application_1/demos/my_collection_demos.dart';
import 'package:flutter_application_1/demos/stack_demo_view.dart';

import '101/custom_widget_learn.dart';
import '101/image_learn.dart';
import '101/list_view_builder.dart';
import '101/page_view_learn.dart';
import '101/statefull_life_cycle_learn.dart';
import 'demos/note_demos_view.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData.dark().copyWith(
          progressIndicatorTheme: ProgressIndicatorThemeData(color: Colors.white),
          listTileTheme: ListTileThemeData(contentPadding: EdgeInsets.zero),
          errorColor: ColorsItems.sulu,
          appBarTheme: const AppBarTheme(
              centerTitle: true,
              systemOverlayStyle: SystemUiOverlayStyle.light,
              elevation: 0,
              backgroundColor: Colors.transparent)),
      //Tema ile u??ra??arak belirli bir standarta sahip olmal??y??z.
      //Her sayfada appbar olmaz
      //Sayfalar??n standartlar??n?? main.dart'ta yazaca????z sonra bir daha yazmayaca????z
      home: MyCollectionsDemos(),
    );
  }
}
