import 'package:estimatorapp/Asphalt%20R&R/prices/manpower/manAndTruckPowerPrice.dart';
import 'package:estimatorapp/variables.dart';
import 'package:flutter/material.dart';


class daysForJob extends StatefulWidget {
  daysForJob({this.pavingSurfaceTotalPrice,this.pavingBaseTotalPrice});
  double pavingSurfaceTotalPrice;
  double pavingBaseTotalPrice;

  @override
  _DownFormState createState() => _DownFormState();
}

class _DownFormState extends State<daysForJob> {
  String dropdownvalue;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          SizedBox(width: double.infinity,),
          Container(
            padding: EdgeInsets.only(bottom: 50),
            width: 300,
            child: DropdownButton<String>(
              isExpanded: true,
              hint: Text("How many days is this job?"),
              value: dropdownvalue,
              underline: Container(
                color: atlasPavingBlue,
                height: 1,
              ),
              style: TextStyle(color: atlasPavingBlue, fontSize: 20),
              onChanged: (String newValue) {
                setState(() {
                  dropdownvalue = newValue;
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => manAndTruckPowerPrice(
                        pavingSurfaceTotalPrice: widget.pavingSurfaceTotalPrice,
                        pavingBaseTotalPrice: widget.pavingBaseTotalPrice,
                        daysForJob: int.parse(dropdownvalue),
                      ),
                    ),
                  );
                });
              },
              items: <String>[
                "1",
                "2",
                "3",
                "4",
                "5",
                "6",
                "7",
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
