import 'Asphalt R&R.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'variables.dart';





///form

class DownForm extends StatefulWidget {
  DownForm(this.items);
  List items;

  @override
  _DownFormState createState() => _DownFormState();
}

class _DownFormState extends State<DownForm> {
  String dropdownvalue;
  @override
  Widget build(BuildContext context) {
    return Container(
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
        items: <String>[]
            .map<DropdownMenuItem<String>>((String value) {
          return DropdownMenuItem<String>(
            value: value,
            child: Text(
              value,
            ),
          );
        }).toList(),
    ),
    );
  }
}

