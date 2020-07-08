import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'variables.dart';
import 'logic.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Container(
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
            items: <String>['One', 'Two', 'Free', 'Four']
                .map<DropdownMenuItem<String>>((String value) {
              return DropdownMenuItem<String>(
                value: value,
                child: Text(
                  value,
                ),
              );
            }).toList(),
          ),
        ),
        SizedBox(
          height: 100,
          width: double.infinity,
        ),
      ],
    );
  }
}



