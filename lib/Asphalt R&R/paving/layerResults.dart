import 'package:estimatorapp/pageBuilder.dart';
import 'package:flutter/material.dart';

class layerResults extends StatelessWidget {
  layerResults({this.pavingsurface,this.pavingBase,this.loadsRemoved,this.surfaceArea});
  double pavingsurface;
  double surfaceArea;
  double pavingBase;
  int loadsRemoved;

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