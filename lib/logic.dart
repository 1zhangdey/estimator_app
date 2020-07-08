import 'page1.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'variables.dart';
import 'logic.dart';

void Calulator(dropdownvalue){
  print(dropdownvalue);
}



///form

class DownForm extends StatefulWidget {
  @override
  _DownFormState createState() => _DownFormState();
}

class _DownFormState extends State<DownForm> {
  String dropdownvalue = "one";
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(bottom: 50),
      width: 200,
      child: DropdownButton<String>(
        isExpanded: true,
        value: dropdownvalue,
        style: TextStyle(color: atlasPavingBlue, fontSize: 20),
        onChanged: (String newValue) {
          setState(() {
            dropdownvalue = newValue;
            Calulator(dropdownvalue);
          });
        },
        items: <String>["one", "two", "three"]
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

