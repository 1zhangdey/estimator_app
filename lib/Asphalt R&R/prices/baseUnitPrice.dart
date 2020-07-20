import 'package:flutter/material.dart';
import 'package:estimatorapp/pageBuilder.dart';
import 'package:estimatorapp/variables.dart';

class baseUnitPrice extends StatefulWidget {
  baseUnitPrice({
    this.pavingSurfaceTotalPrice,
    this.pavingBaseTons,
  });

  double pavingSurfaceTotalPrice;
  int pavingBaseTons;
  double pavingBaseTotalPrice = 0;
  double pavingBasePricePerTon;

  @override
  _baseUnitPriceState createState() => _baseUnitPriceState();
}

class _baseUnitPriceState extends State<baseUnitPrice> {
  @override
  Widget build(BuildContext context) {
    return pageBuilder(
      pageWidth: 600,
      widget: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Center(
                child: Text(
                  "Surface Layer; Price Per Ton",
                  style: TextStyle(fontSize: 25),
                ),
              ),
            ],
          ),
          SizedBox(
            height: 30,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Expanded(
                child: Center(
                  child: Text(
                    widget.pavingBaseTons.toString() + " Tons",
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                ),
              ),
              Expanded(
                child: TextField(
                  keyboardType: TextInputType.number,
                  onChanged: (text) {
                    widget.pavingBasePricePerTon = double.parse(text);
                    setState(() {
                      widget.pavingBaseTotalPrice =
                          widget.pavingBasePricePerTon * widget.pavingBaseTons;
                    });
                  },
                  decoration: InputDecoration(
                    border: OutlineInputBorder(
                      borderSide: BorderSide(color: atlasPavingBlue, width: 3),
                    ),
                  ),
                ),
              ),
            ],
          ),
          SizedBox(
            height: 40,
          ),
          Divider(),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Center(
                child: Text(
                  "\$ " + widget.pavingBaseTotalPrice.toString(),
                  style: TextStyle(fontSize: 30, decorationThickness: 4),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
