import 'package:estimatorapp/Asphalt%20R&R/paving/layerResults.dart';
import 'package:estimatorapp/Asphalt%20R&R/truckloads.dart';
import 'package:flutter/material.dart';
import 'package:estimatorapp/variables.dart';
import 'depthArea.dart';
import 'package:estimatorapp/pageBuilder.dart';

class asphaltrandr extends StatelessWidget {
  double surfacearea;
  @override
  Widget build(BuildContext context) {
    return pageBuilder(
      appbar: "Removal",
      pageWidth: 300,
      widget: TextField(
        keyboardType: TextInputType.number,
        onChanged: (text) {
          surfacearea = double.parse(text);
        },
        decoration: InputDecoration(
            border: OutlineInputBorder(
              borderSide: BorderSide(color: atlasPavingBlue, width: 3),
            ),
            hintText: 'Surface Area (m²)'),
      ),
      onPressed: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => deptharea(
              surfaceArea: surfacearea,
            ),
          ),
        );
      },
    );
  }
}
