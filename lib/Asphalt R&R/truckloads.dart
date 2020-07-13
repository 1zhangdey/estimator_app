import 'package:flutter/material.dart';
import 'package:estimatorapp/variables.dart';
import "dart:math";

class truckloads extends StatelessWidget {
  truckloads({this.surfacearea,this.depth});
  int surfacearea;
  int depth;

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
              child: Text((surfacearea*depth).toString(),
            ),
          ),
        ],
      ),
    );
  }
}

