import 'package:estimatorapp/Asphalt%20R&R/prices/manAndTruckPowerPrice.dart';
import 'package:flutter/material.dart';
import 'variables.dart';
import 'Home/Dropdownfield1.dart';

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
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Homepage(),
            SizedBox(
              width: double.infinity,
            ),
          ],
        ),
      ),
    );
  }
}
