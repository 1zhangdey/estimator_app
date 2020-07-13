import 'package:estimatorapp/Asphalt R&R.dart';
import 'package:flutter/material.dart';
import 'Homepage.dart';
import 'variables.dart';
import 'logic.dart';

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
    );
  }
}
