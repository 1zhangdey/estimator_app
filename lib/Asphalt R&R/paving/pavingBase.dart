import 'package:estimatorapp/Asphalt%20R&R/paving/layerResults.dart';
import 'package:estimatorapp/pageBuilder.dart';
import 'package:flutter/material.dart';
import 'package:estimatorapp/variables.dart';

class pavingBase extends StatelessWidget {
  pavingBase({this.pavingSurfacedepth, this.loadsRemoved, this.surfaceArea});
  double surfaceArea;
  int loadsRemoved;
  double pavingSurfacedepth;
  double pavingbasedepth;

  @override
  Widget build(BuildContext context) {
    return pageBuilder(
      widget: TextField(
        keyboardType: TextInputType.number,
        onChanged: (text) {
          pavingbasedepth = double.parse(text) * 0.0254;
        },
        decoration: InputDecoration(
            border: OutlineInputBorder(
              borderSide: BorderSide(color: atlasPavingBlue, width: 3),
            ),
            hintText: 'Base Layer (inches)'),
      ),
      onPressed: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => layerResults(
              loadsRemoved: loadsRemoved,
              surfaceArea: surfaceArea,
              pavingBase: pavingbasedepth,
              pavingsurface: pavingSurfacedepth,
            ),
          ),
        );
      },
    );
  }
}
