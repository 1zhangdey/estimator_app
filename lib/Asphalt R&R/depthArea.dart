import 'package:estimatorapp/Asphalt%20R&R/truckloads.dart';
import 'package:flutter/material.dart';
import 'package:estimatorapp/variables.dart';

class deptharea extends StatelessWidget {
  deptharea({this.surfacearea});
  String surfacearea;
  String deapthArea_depth;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: atlasPavingBlue,
        title: Text("Asphalt R&R"),
        centerTitle: true,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Center(
            child: Container(
              padding: EdgeInsets.only(bottom: 40),
              width: 300,
              child: TextField(
                onChanged: (text1) {
                  deapthArea_depth = text1;
                },
                decoration: InputDecoration(
                    border: OutlineInputBorder(
                      borderSide: BorderSide(color: atlasPavingBlue, width: 3),
                    ),
                    hintText: 'What is the depth?'),
              ),
            ),
          ),
          IconButton(
            icon: Icon(Icons.arrow_forward),
            color: atlasPavingBlue,
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
          ),
        ],
      ),
    );
  }
}
