import 'package:flutter/material.dart';
import 'package:estimatorapp/variables.dart';

class asphaltrandr extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: atlasPavingBlue,
        title: Text("Asphalt R&R"),
        centerTitle: true,
      ),
      body: Column(
        children: [
          Container(
            child: TextField(

            ),
          ),
        ],
      ),
    );
  }
}
