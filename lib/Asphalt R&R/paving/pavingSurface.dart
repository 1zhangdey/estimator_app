import 'package:estimatorapp/Asphalt%20R&R/paving/layerResults.dart';
import 'package:estimatorapp/Asphalt%20R&R/paving/pavingBase.dart';
import 'package:estimatorapp/pageBuilder.dart';
import 'package:flutter/material.dart';
import 'package:estimatorapp/variables.dart';

class pavingSurface extends StatelessWidget {
  double pavingsurface;


  @override
  Widget build(BuildContext context) {
    return pageBuilder(
      widget: TextField(
        keyboardType: TextInputType.number,
        onChanged: (text) {
          pavingsurface = double.parse(text) * 0.0254;
        },
        decoration: InputDecoration(
            border: OutlineInputBorder(
              borderSide: BorderSide(color: atlasPavingBlue, width: 3),
            ),
            hintText: 'Surface Layer (inches)'),
      ),
      onPressed: () {
        layerResults(pavingsurface: pavingsurface,);
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => pavingBase(),
          ),
        );
      },
    );
  }
}