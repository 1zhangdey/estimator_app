import 'package:flutter/material.dart';
import 'package:estimatorapp/variables.dart';
import 'depthArea.dart';
import 'package:estimatorapp/pageBuilder.dart';

class asphaltrandr extends StatelessWidget {
  String surfacearea_surfacearea;
  @override
  Widget build(BuildContext context) {
    return pageBuilder(
      widget: TextField(
        keyboardType: TextInputType.number,
        onChanged: (text) {
          surfacearea_surfacearea = text;
          print(surfacearea_surfacearea);
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
            builder: (context) =>
                deptharea(surfacearea: surfacearea_surfacearea),
          ),
        );
      },
    );
  }
}
