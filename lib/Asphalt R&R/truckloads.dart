import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:estimatorapp/variables.dart';
import "dart:math";

class truckloads extends StatelessWidget {
  truckloads({this.depth, this.surfacearea});
  String depth;
  String surfacearea;

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
                depth + surfacearea,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
