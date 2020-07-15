import 'package:estimatorapp/Asphalt%20R&R/paving/layerResults.dart';
import 'package:estimatorapp/Asphalt%20R&R/paving/pavingSurface.dart';
import 'package:flutter/material.dart';
import 'package:estimatorapp/pageBuilder.dart';
import 'package:estimatorapp/variables.dart';

class truckloads extends StatelessWidget {
  truckloads({this.depth, this.surfacearea});
  final String depth;
  String surfacearea;
  int loadsRemoved;
  @override
  Widget build(BuildContext context) {
    return pageBuilder(
      widget: Center(
        child: Text(truckloadCalculator(depth, surfacearea) + " Truck Loads",
            style: TextStyle(
              color: Colors.black,
              fontSize: 20,
            )),
      ),
      onPressed: () {
        loadsRemoved = int.parse(
          truckloadCalculator(depth, surfacearea),
        );
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => pavingSurface(
            ),
          ),
        );
      },
    );
  }
}
