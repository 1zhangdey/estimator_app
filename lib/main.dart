import 'package:estimatorapp/page2.dart';
import 'package:flutter/material.dart';
import 'body.dart';
import 'variables.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Center(
            child: Text(
              "Estimator Calculator",
            ),
          ),
          backgroundColor: atlasPavingBlue,
        ),
        body: HomePage(),
      ),
      routes: <String, WidgetBuilder>{
        'page2': (BuildContext context) => page2(),
      },
    );
  }
}
