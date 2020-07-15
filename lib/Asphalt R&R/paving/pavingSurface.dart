import 'package:estimatorapp/Asphalt%20R&R/paving/pavingBase.dart';
import 'package:estimatorapp/pageBuilder.dart';
import 'package:flutter/material.dart';
import 'package:estimatorapp/variables.dart';

class pavingSurface extends StatelessWidget {
  int pavingsurface;

  @override
  Widget build(BuildContext context) {
    return pageBuilder(
      widget: TextField(
        keyboardType: TextInputType.number,
        onChanged: (text) {
          pavingsurface = int.parse(text);
        },
        decoration: InputDecoration(
            border: OutlineInputBorder(
              borderSide: BorderSide(color: atlasPavingBlue, width: 3),
            ),
            hintText: 'Surface Layer (inches)'),
      ),
      onPressed: () {
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