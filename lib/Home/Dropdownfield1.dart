import '../Asphalt R&R/surfaceArea.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import '../variables.dart';
import '../Asphalt R&R + Full Granular/Asphalt R&R + Full Granular.dart';
import '../Concrete Curb + Sidewalk/Concrete Curb + Sidewalk.dart';

class Homepage extends StatefulWidget {
  @override
  _DownFormState createState() => _DownFormState();
}

class _DownFormState extends State<Homepage> {
  String dropdownvalue;
  @override
  Widget build(BuildContext context) {
    return Container(
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage("lib/images/background.jpg"),
              fit: BoxFit.cover,
           ),
          ),
      child: Column(
        children: [
          Container(
            padding: EdgeInsets.only(bottom: 50),
            width: 300,
            child: DropdownButton<String>(
              isExpanded: true,
              hint: Text("What type of job is this?"),
              value: dropdownvalue,
              underline: Container(
                color: atlasPavingBlue,
                height: 1,
              ),
              style: TextStyle(color: atlasPavingBlue, fontSize: 20),
              onChanged: (String newValue) {
                 setState(() {
                   dropdownvalue = newValue;
                   switch(newValue){
                     case "Asphalt R&R":
                       Navigator.push(
                         context,
                         MaterialPageRoute(
                           builder: (context) => asphaltrandr()
                         ),
                       );
                       break;
                     case "Asphalt R&R + Full Granular":
                       Navigator.push(
                         context,
                         MaterialPageRoute(
                             builder: (context) => asphaltFullGranular()
                         ),
                       );
                       break;
                     case "Concrete Curb + Sidewalk":
                       Navigator.push(
                         context,
                         MaterialPageRoute(
                             builder: (context) => concreteCurbPlusSidewalk()
                         ),
                       );
                       break;
                   }
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
        ],
      ),
    );
  }
}
