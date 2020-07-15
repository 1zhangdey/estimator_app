import 'package:estimatorapp/pageBuilder.dart';
import 'package:flutter/material.dart';
import 'package:estimatorapp/variables.dart';

class pavingBase extends StatelessWidget {
  int pavingbase;

  @override
  Widget build(BuildContext context) {
    return pageBuilder(
      widget: TextField(
        keyboardType: TextInputType.number,
        onChanged: (text) {
          pavingbase = int.parse(text);
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
            builder: (context) =>

            ,
          ),
        );
      },
    );
  }
}