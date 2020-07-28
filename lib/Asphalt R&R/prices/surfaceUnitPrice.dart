import 'package:estimatorapp/Asphalt%20R&R/prices/baseUnitPrice.dart';
import 'package:estimatorapp/pageBuilder.dart';
import 'package:flutter/material.dart';
import 'package:estimatorapp/variables.dart';

class surfacePavingUnitPrice extends StatefulWidget {
  surfacePavingUnitPrice({
    this.pavingSurfaceTons,
    this.pavingBaseTons,
  });
  int pavingSurfaceTons;
  int pavingBaseTons;
  double pavingSurfacePricePerTon;
  double pavingSurfaceTotalPrice = 0;
  @override
  _surfacePavingUnitPriceState createState() => _surfacePavingUnitPriceState();
}

class _surfacePavingUnitPriceState extends State<surfacePavingUnitPrice> {
  @override
  Widget build(BuildContext context) {
    return pageBuilder(
      appbar: "Pricing",
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
                    widget.pavingSurfaceTons.toString() + " Tons",
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                ),
              ),
              Expanded(
                child: TextField(
                  keyboardType: TextInputType.number,
                  onChanged: (text) {
                    widget.pavingSurfacePricePerTon = double.parse(text);
                    setState(() {
                      widget.pavingSurfaceTotalPrice =
                          widget.pavingSurfacePricePerTon *
                              widget.pavingSurfaceTons;
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
                  "\$ " + widget.pavingSurfaceTotalPrice.toString(),
                  style: TextStyle(fontSize: 30, decorationThickness: 4),
                ),
              ),
            ],
          ),
        ],
      ),
           onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => baseUnitPrice(
                pavingSurfaceTotalPrice: widget.pavingSurfaceTotalPrice,
                pavingBaseTons: widget.pavingBaseTons,
              ),
            ),
          );
        }
    );
  }
}
