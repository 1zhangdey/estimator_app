import 'package:flutter/material.dart';
import 'package:estimatorapp/pageBuilder.dart';

class truckloads extends StatelessWidget {
  truckloads({this.depth, this.surfacearea});

  final String depth;
  final String surfacearea;

  @override
  Widget build(BuildContext context) {
    return pageBuilder(
      widget: Text(
        truckloadCalculator(depth, surfacearea),
      ),
      onPressed: () {
        truckloadCalculator(depth, surfacearea);
      },
    );
  }
}



String truckloadCalculator(depth, surface) {
  double numdepth = double.parse(depth) * 0.0254;
  double numsurface = double.parse(surface);
  double area = numdepth * numsurface;
  double loads = area / 8;
  return loads.toString(
  );
}


