import 'package:estimatorapp/Asphalt%20R&R/paving/layerResults.dart';
import 'package:estimatorapp/Asphalt%20R&R/paving/pavingBase.dart';
import 'package:estimatorapp/pageBuilder.dart';
import 'package:flutter/material.dart';
import 'package:estimatorapp/variables.dart';

class pavingSurface extends StatelessWidget {
  pavingSurface({this.loadsRemoved, this.surfaceArea});
  double surfaceArea;
  int loadsRemoved;
  double pavingSurfacedepth;

  @override
  Widget build(BuildContext context) {
    return pageBuilder(
      pageWidth: 300,
      widget: TextField(
        keyboardType: TextInputType.number,
        onChanged: (text) {
          pavingSurfacedepth = double.parse(text) * 0.001;
        },
        decoration: InputDecoration(
            border: OutlineInputBorder(
              borderSide: BorderSide(color: atlasPavingBlue, width: 3),
            ),
            hintText: 'Surface Layer (mm)'),
      ),
      onPressed: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => pavingBase(
              surfaceArea: surfaceArea,
              pavingSurfacedepth: pavingSurfacedepth,
              loadsRemoved: loadsRemoved,
            ),
          ),
        );
      },
    );
  }
}
