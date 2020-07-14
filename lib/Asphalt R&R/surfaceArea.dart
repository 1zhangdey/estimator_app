import 'package:flutter/material.dart';
import 'package:estimatorapp/variables.dart';
import 'depthArea.dart';

class asphaltrandr extends StatelessWidget {
  String surfacearea_surfacearea;
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
                onChanged: (text) {
                    surfacearea_surfacearea = text;
                    print(surfacearea_surfacearea);
                },
                decoration: InputDecoration(
                    border: OutlineInputBorder(
                      borderSide: BorderSide(color: atlasPavingBlue, width: 3),
                    ),
                    hintText: 'What is the surface area?'),
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
                  builder: (context) =>
                      deptharea(surfacearea: surfacearea_surfacearea),
                ),
              );
            },
          )
        ],
      ),
    );
  }
}
