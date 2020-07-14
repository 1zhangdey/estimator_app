import 'dart:ffi';

import 'package:estimatorapp/Asphalt%20R&R/depthArea.dart';
import 'package:flutter/material.dart';
import 'package:estimatorapp/variables.dart';
import 'package:estimatorapp/variables.dart';

class truckloads extends StatelessWidget {
  truckloads({this.depth, this.surfacearea});
  final String depth;
  final String surfacearea;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: atlasPavingBlue,
        title: Text("Asphalt R&R"),
        centerTitle: true,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Center(
            child: Container(
              padding: EdgeInsets.only(bottom: 40),
              width: 300,
              child: Text(
                truckloadCalculator(depth, surfacearea),
              ),
            ),
          ),
          IconButton(
            icon: Icon(Icons.arrow_forward),
            color: atlasPavingBlue,
            onPressed: () {
              truckloadCalculator(depth, surfacearea);
            },
          ),
        ],
      ),
    );
  }
}

String truckloadCalculator(depth, surface) {
  double numdepth = double.parse(depth) * 0.0254;
  double numsurface = double.parse(surface);
  double area = numdepth * numsurface;
  double loads = area / 8;
  return loads.toString();
}
