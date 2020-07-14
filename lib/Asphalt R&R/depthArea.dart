import 'package:estimatorapp/Asphalt%20R&R/truckloads.dart';
import 'package:flutter/material.dart';
import 'package:estimatorapp/variables.dart';
import 'package:estimatorapp/pageBuilder.dart';

class deptharea extends StatelessWidget {
  deptharea({this.surfacearea});
  String surfacearea;
  String deapthArea_depth;
  @override
  Widget build(BuildContext context) {
    return pageBuilder(
      widget: TextField(
        onChanged: (text1) {
          deapthArea_depth = text1;
        },
        decoration: InputDecoration(
            border: OutlineInputBorder(
              borderSide: BorderSide(color: atlasPavingBlue, width: 3),
            ),
            hintText: 'What is the depth?'),
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
