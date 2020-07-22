import 'package:estimatorapp/Asphalt%20R&R/truckloads.dart';
import 'package:flutter/material.dart';
import 'package:estimatorapp/variables.dart';
import 'package:estimatorapp/pageBuilder.dart';

class deptharea extends StatelessWidget {
  deptharea({this.surfaceArea});
  int depth;
  double surfaceArea;
  @override
  Widget build(BuildContext context) {
    return pageBuilder(
      pageWidth: 300,
      widget: TextField(
        keyboardType: TextInputType.number,
        onChanged: (text1) {
          depth = int.parse(text1);
        },
        decoration: InputDecoration(
            border: OutlineInputBorder(
              borderSide: BorderSide(color: atlasPavingBlue, width: 3),
            ),
            hintText: 'Asphalt Depth (inches)'),
      ),
      onPressed: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => truckloads(
              depth: depth.toString(),
              surfacearea: surfaceArea,
            ),
          ),
        );
      },
    );
  }
}
