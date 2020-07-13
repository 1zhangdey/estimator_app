import 'Asphalt R&R.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'variables.dart';
import 'logic.dart';

class HomePage extends StatefulWidget {
  @override
  HomePageState createState() => HomePageState();
}

class HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        DownForm(<String>["Asphalt R&R","Asphalt R&R + Full Granular", "Concrete Curb + Sidewalk"]),
        IconButton(
          icon: Icon(
            Icons.arrow_forward,
            color: atlasPavingBlue,
          ),
          iconSize: 40,
          onPressed: (){
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => asphaltrandr()),
            );
          },
        ),
        SizedBox(
          width: double.infinity,
        ),
      ],
    );
  }
}

