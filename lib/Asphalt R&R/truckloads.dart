import 'package:estimatorapp/Asphalt%20R&R/paving/pavingSurface.dart';
import 'package:flutter/material.dart';
import 'package:estimatorapp/pageBuilder.dart';

class truckloads extends StatelessWidget {
  truckloads({this.depth, this.surfacearea});

  final String depth;
  final String surfacearea;
  int loadsRemoved;
  @override
  Widget build(BuildContext context) {
    return pageBuilder(
      pageWidth: 300,
      widget: Center(
        child: Text(
          truckloadCalculator(depth, surfacearea) + " Truck Loads",
          style: TextStyle(
            color: Colors.black,
            fontSize: 20,
          ),
        ),
      ),
      onPressed: () {
        loadsRemoved = int.parse(
          truckloadCalculator(depth, surfacearea),
        );
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => pavingSurface(
              loadsRemoved: loadsRemoved,
              surfaceArea: double.parse(surfacearea),
            ),
          ),
        );
      },
    );
  }
}

String truckloadCalculator(depth, surface) {
  double numdepth = double.parse(depth) * 0.0254;
  double numsurface = double.parse(surface);
  double area = numdepth * numsurface;
  int loads = (area / 8).ceil();
  return loads.toString();
}
