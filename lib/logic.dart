import 'page1.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'variables.dart';
import 'logic.dart';




///form

class DownForm extends StatefulWidget {
  DownForm(this.option1, this.option2,this.option3);
  String option1;
  String option2;
  String option3;

  @override
  _DownFormState createState() => _DownFormState();
}

class _DownFormState extends State<DownForm> {
  String dropdownvalue;
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(bottom: 50),
      width: 200,
      child: DropdownButton<String>(
        isExpanded: true,
        hint: Text("Pick One"),
        value: dropdownvalue,
        underline: Container(
          color: atlasPavingBlue,
          height: 3,
        ),
        style: TextStyle(color: atlasPavingBlue, fontSize: 20),
        onChanged: (String newValue) {
          setState(() {
            dropdownvalue = newValue;
          });
        },
        items: <String>[widget.option1, widget.option2, widget.option3]
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

