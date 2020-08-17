import 'package:estimatorapp/Asphalt%20R&R/prices/finalDisplayPrice.dart';
import 'package:estimatorapp/Asphalt%20R&R/prices/manpower/daysForJob.dart';
import 'package:estimatorapp/pageBuilder.dart';
import 'package:flutter/material.dart';
import 'package:estimatorapp/variables.dart';

class manAndTruckPowerPrice extends StatefulWidget {
  manAndTruckPowerPrice(
      {this.pavingSurfaceTotalPrice,
      this.pavingBaseTotalPrice,
      this.daysForJob,
      totalManPowerPrice, bank});
  double pavingBaseTotalPrice;
  double pavingSurfaceTotalPrice;
  int numberOfMen = 0;
  int numberOfManHours = 0;
  int numberOfTrucks = 0;
  int numberOfTruckHours = 0;
  int totalManPowerPriceForDay = 0;

  int daysForJob;
  @override
  _manAndTruckPowerPriceState createState() => _manAndTruckPowerPriceState();
}

class _manAndTruckPowerPriceState extends State<manAndTruckPowerPrice> {
  @override
  static int bank = 1;
  Widget build(BuildContext context) {
    return pageBuilder(
      leading: IconButton(icon:Icon(Icons.backspace),
        onPressed: (){
        bank = 1;
        widget.totalManPowerPriceForDay = 0;
        widget.daysForJob = 0;
        Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => daysForJob(
                pavingSurfaceTotalPrice: widget.pavingSurfaceTotalPrice,
                pavingBaseTotalPrice: widget.pavingBaseTotalPrice,
              ),
            ),
          );
        },
      ),
        appbar: "Day " + bank.toString(),
        widget: SafeArea(
          minimum: EdgeInsets.only(left: 50, right: 50),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Expanded(
                flex: 1,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "# of Men",
                      style: TextStyle(fontSize: 15),
                    ),
                    SizedBox(
                      height: 100,
                    ),
                    Text(
                      "# of Trucks",
                      style: TextStyle(fontSize: 15),
                    ),
                  ],
                ),
              ),
              Expanded(
                flex: 2,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: TextField(
                        keyboardType: TextInputType.number,
                        onChanged: (text) {
                          widget.numberOfMen += int.parse(text);
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
                      padding: const EdgeInsets.all(10.0),
                      child: TextField(
                        keyboardType: TextInputType.number,
                        onChanged: (text) {
                          widget.numberOfTrucks += int.parse(text);
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
                      style: TextStyle(fontSize: 15),
                    ),
                    SizedBox(
                      height: 100,
                    ),
                    Text(
                      "Hours",
                      style: TextStyle(fontSize: 15),
                    ),
                  ],
                ),
              ),
              Expanded(
                flex: 2,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: TextField(
                        keyboardType: TextInputType.number,
                        onChanged: (text) {
                          widget.numberOfManHours += int.parse(text);
                          widget.totalManPowerPriceForDay += widget.numberOfManHours *
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
                      padding: const EdgeInsets.all(10.0),
                      child: TextField(
                        keyboardType: TextInputType.number,
                        onChanged: (text) {
                          widget.numberOfTruckHours += int.parse(text);
                          widget.totalManPowerPriceForDay += widget.numberOfTrucks *
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
          print(widget.totalManPowerPriceForDay);
          if (widget.daysForJob != 1) {
            widget.daysForJob -= 1;
            bank +=1;
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => manAndTruckPowerPrice(
                  pavingSurfaceTotalPrice: widget.pavingSurfaceTotalPrice + widget.totalManPowerPriceForDay,
                  pavingBaseTotalPrice: widget.pavingBaseTotalPrice,
                  daysForJob: widget.daysForJob,
                  bank: bank,
                  totalManPowerPrice: 0,
                ),
              ),
            );
          } else {
            print(widget.totalManPowerPriceForDay);
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => finalPrice(
                  pavingSurfaceTotalPrice: widget.pavingSurfaceTotalPrice + widget.totalManPowerPriceForDay,
                  pavingBaseTotalPrice: widget.pavingBaseTotalPrice,
                  totalManPowerPrice: widget.totalManPowerPriceForDay.toDouble(),
                ),
              ),
            );
          }
        });
  }
}
