import 'package:estimatorapp/Asphalt%20R&R/prices/finalDisplayPrice.dart';
import 'package:estimatorapp/pageBuilder.dart';
import 'package:flutter/material.dart';
import 'package:estimatorapp/variables.dart';

class manAndTruckPowerPrice extends StatefulWidget {
  manAndTruckPowerPrice(
      {this.pavingSurfaceTotalPrice, this.pavingBaseTotalPrice});
  double pavingBaseTotalPrice;
  double pavingSurfaceTotalPrice;
  int numberOfMen;
  int numberOfManHours;
  int numberOfTrucks;
  int numberOfTruckHours;
  int totalManPowerPrice = 0;
  @override
  _manAndTruckPowerPriceState createState() => _manAndTruckPowerPriceState();
}

class _manAndTruckPowerPriceState extends State<manAndTruckPowerPrice> {
  @override
  Widget build(BuildContext context) {
    return pageBuilder(
        widget: SafeArea(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Expanded(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "# of Men",
                      style: TextStyle(fontSize: 20),
                    ),
                    SizedBox(
                      height: 100,
                    ),
                    Text(
                      "# of Trucks",
                      style: TextStyle(fontSize: 20),
                    ),
                  ],
                ),
              ),
              Expanded(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(15.0),
                      child: TextField(
                        keyboardType: TextInputType.number,
                        onChanged: (text) {
                          widget.numberOfMen = int.parse(text);
                        },
                        decoration: InputDecoration(
                          border: OutlineInputBorder(
                            borderSide:
                                BorderSide(color: atlasPavingBlue, width: 3),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 40,
                    ),
                    Padding(
                      padding: const EdgeInsets.all(15.0),
                      child: TextField(
                        keyboardType: TextInputType.number,
                        onChanged: (text) {
                          widget.numberOfTrucks = int.parse(text);
                        },
                        decoration: InputDecoration(
                          border: OutlineInputBorder(
                            borderSide:
                                BorderSide(color: atlasPavingBlue, width: 3),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Expanded(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "Hours",
                      style: TextStyle(fontSize: 20),
                    ),
                    SizedBox(
                      height: 100,
                    ),
                    Text(
                      "Hours",
                      style: TextStyle(fontSize: 20),
                    ),
                  ],
                ),
              ),
              Expanded(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(15.0),
                      child: TextField(
                        keyboardType: TextInputType.number,
                        onChanged: (text) {
                          widget.numberOfManHours = int.parse(text);
                          widget.totalManPowerPrice += widget.numberOfManHours *
                              widget.numberOfMen *
                              100;
                        },
                        decoration: InputDecoration(
                          border: OutlineInputBorder(
                            borderSide:
                                BorderSide(color: atlasPavingBlue, width: 3),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 40,
                    ),
                    Padding(
                      padding: const EdgeInsets.all(15.0),
                      child: TextField(
                        keyboardType: TextInputType.number,
                        onChanged: (text) {
                          widget.numberOfTruckHours = int.parse(text);
                          widget.totalManPowerPrice += widget.numberOfTrucks *
                              widget.numberOfTruckHours *
                              100;
                        },
                        decoration: InputDecoration(
                          border: OutlineInputBorder(
                            borderSide:
                                BorderSide(color: atlasPavingBlue, width: 3),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => finalPrice(
                pavingSurfaceTotalPrice: widget.pavingSurfaceTotalPrice,
                pavingBaseTotalPrice: widget.pavingBaseTotalPrice,
                totalManPowerPrice: widget.totalManPowerPrice.roundToDouble(),
              ),
            ),
          );
        });
  }
}
