import 'package:estimatorapp/pageBuilder.dart';
import 'package:flutter/material.dart';
import 'package:estimatorapp/variables.dart';

class layerResults extends StatelessWidget {
  layerResults({this.pavingsurface,this.pavingBase});
  double pavingsurface;
  double pavingBase;

  @override
  Widget build(BuildContext context) {
    return pageBuilder(
      widget: Center(
        child: Text(
            " Truck Loads",
            style: TextStyle(color: Colors.black, fontSize: 20,)
        ),
      ),
    );
  }
}