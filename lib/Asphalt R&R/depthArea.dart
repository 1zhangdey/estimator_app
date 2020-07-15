import 'package:estimatorapp/Asphalt%20R&R/truckloads.dart';
import 'package:flutter/material.dart';
import 'package:estimatorapp/variables.dart';
import 'package:estimatorapp/pageBuilder.dart';

class deptharea extends StatelessWidget {
  String surfacearea;
  String deapthArea_depth;
  @override
  Widget build(BuildContext context) {
    return pageBuilder(
      widget: TextField(
          keyboardType: TextInputType.number,
        onChanged: (text1) {
          deapthArea_depth = text1;
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
              depth: deapthArea_depth,
              surfacearea: surfacearea,
            ),
          ),
        );
      },
    );
  }
}
