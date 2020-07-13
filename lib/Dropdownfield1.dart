import 'Asphalt R&R.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'variables.dart';

class Homepage extends StatefulWidget {
  @override
  _DownFormState createState() => _DownFormState();
}

class _DownFormState extends State<Homepage> {
  String dropdownvalue;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          padding: EdgeInsets.only(bottom: 50),
          width: 300,
          child: DropdownButton<String>(
            isExpanded: true,
            hint: Text("Pick One"),
            value: dropdownvalue,
            underline: Container(
              color: atlasPavingBlue,
              height: 1,
            ),
            style: TextStyle(color: atlasPavingBlue, fontSize: 20),
            onChanged: (String newValue) {
              setState(() {
                dropdownvalue = newValue;
              });
            },
            items: <String>[
              "Asphalt R&R",
              "Asphalt R&R + Full Granular",
              "Concrete Curb + Sidewalk"
            ].map<DropdownMenuItem<String>>((String value) {
              return DropdownMenuItem<String>(
                value: value,
                child: Text(
                  value,
                ),
              );
            }).toList(),
          ),
        ),
        IconButton(
          icon: Icon(
            Icons.arrow_forward,
            color: atlasPavingBlue,
          ),
          iconSize: 40,
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => asphaltrandr(),
              ),
            );
          },
        ),
      ],
    );
  }
}
