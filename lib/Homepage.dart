import 'package:estimatorapp/page1.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'variables.dart';
import 'logic.dart';
import 'package:get/get.dart';


class HomePage extends StatefulWidget {
  @override
  HomePageState createState() => HomePageState();
}

class HomePageState extends State<HomePage> {
  String dropdownvalue = "one";
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Container(
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
        ),
        IconButton(
          icon: Icon(
            Icons.arrow_forward,
            color: atlasPavingBlue,
          ),
          iconSize: 40,
          onPressed: (){
            setState((){
              Get.to(page1());
            });
          },
        ),
        SizedBox(
          width: double.infinity,
        ),
      ],
    );
  }
}
