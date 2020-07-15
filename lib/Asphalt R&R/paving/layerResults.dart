import 'package:estimatorapp/pageBuilder.dart';
import 'package:flutter/material.dart';

class layerResults extends StatelessWidget {
  layerResults(
      {this.pavingsurface,
      this.pavingBase,
      this.loadsRemoved,
      this.surfaceArea});
  double pavingsurface;
  double surfaceArea;
  double pavingBase;
  int loadsRemoved;

  @override
  Widget build(BuildContext context) {
    return pageBuilder(
      widget: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [

              Text(
                "Base Layer: " + (pavingBase*surfaceArea*2.45).toString() + "tons",
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 20,
                ),
              ),
            ],
          ),
          SizedBox(
            width: double.infinity,
            height: 20,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "Surface Layer: " + (pavingsurface*surfaceArea*2.45).toString() + "tons",
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 20,
                ),
              ),
            ],
          ),
          SizedBox(
            width: double.infinity,
            height: 20,
          ),
        ],
      ),
    );
  }
}
