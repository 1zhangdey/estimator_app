import 'package:estimatorapp/Asphalt%20R&R/paving/pavingSurface.dart';
import 'package:flutter/material.dart';
import 'package:estimatorapp/pageBuilder.dart';


class truckloads extends StatelessWidget {
  truckloads({this.depth, this.surfacearea});
  double depth;
  double surfacearea;
  int loadsRemoved;
  @override
  Widget build(BuildContext context) {
    return pageBuilder(
      appbar: "Removal",
      pageWidth: 300,
      widget: Center(
        child: Text(
          truckloadCalculator(depth, surfacearea).toString() + " Truck Loads",
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
              surfaceArea: surfacearea,
            ),
          ),
        );
      },
    );
  }
}

String truckloadCalculator(depth, surface) {
  double area = (depth * 0.001) * surface;
  int loads = (area / 8).ceil();
  return loads.toString();
}
