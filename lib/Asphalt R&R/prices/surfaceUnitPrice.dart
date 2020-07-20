import 'package:estimatorapp/pageBuilder.dart';
import 'package:flutter/material.dart';
import 'package:estimatorapp/variables.dart';


class surfacePavingUnitPrice extends StatefulWidget {
  surfacePavingUnitPrice(
      {this.pavingSurfaceTons,
      this.pavingBaseTons,
      this.loadsRemoved,
      this.totalSurfaceArea});
  int pavingSurfaceTons;
  double totalSurfaceArea;
  int pavingBaseTons;
  int loadsRemoved;
  double pavingSurfacePricePerTon;
  double pavingSurfaceTotalPrice;
  @override
  _surfacePavingUnitPriceState createState() => _surfacePavingUnitPriceState();
}

class _surfacePavingUnitPriceState extends State<surfacePavingUnitPrice> {
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
                    widget.pavingSurfaceTotalPrice =
                        widget.pavingSurfacePricePerTon * widget.totalSurfaceArea;
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
            height: 20,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Center(
                child: Text(
                  widget.pavingSurfaceTotalPrice.toString(),
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




//
//
//class surfacePavingUnitPrice extends StatelessWidget {
  //  surfacePavingUnitPrice(
  //      {this.pavingSurfaceTons,
  //      this.pavingBaseTons,
  //      this.loadsRemoved,
  //      this.totalSurfaceArea});
  //  int pavingSurfaceTons;
  //  double totalSurfaceArea;
  //  int pavingBaseTons;
  //  int loadsRemoved;
  //  double pavingSurfacePricePerTon;
  //  double pavingSurfaceTotalPrice;
//
//  @override
//  Widget build(BuildContext context) {
//    return pageBuilder(
//      pageWidth: 600,
//      widget: Column(
//        mainAxisAlignment: MainAxisAlignment.center,
//        crossAxisAlignment: CrossAxisAlignment.center,
//        children: [
//          Row(
//            mainAxisAlignment: MainAxisAlignment.center,
//            children: [
//              Center(
//                child: Text(
//                  "Surface Layer; Price Per Ton",
//                  style: TextStyle(fontSize: 25),
//                ),
//              ),
//            ],
//          ),
//          SizedBox(
//            height: 30,
//          ),
//          Row(
//            mainAxisAlignment: MainAxisAlignment.center,
//            children: [
//              Expanded(
//                child: Center(
//                  child: Text(
//                    pavingSurfaceTons.toString() + " Tons",
//                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
//                  ),
//                ),
//              ),
//              Expanded(
//                child: TextField(
//                  keyboardType: TextInputType.number,
//                  onChanged: (text) {
//                    pavingSurfacePricePerTon = double.parse(text);
//                    pavingSurfaceTotalPrice =
//                        pavingSurfacePricePerTon * totalSurfaceArea;
//                    print(pavingSurfaceTotalPrice);
//                  },
//                  decoration: InputDecoration(
//                    border: OutlineInputBorder(
//                      borderSide: BorderSide(color: atlasPavingBlue, width: 3),
//                    ),
//                  ),
//                ),
//              ),
//            ],
//          ),
//          SizedBox(
//            height: 20,
//          ),
//          Row(
//            mainAxisAlignment: MainAxisAlignment.center,
//            children: [
//              Center(
//                child: Text(
//                  pavingSurfaceTotalPrice.toString(),
//                  style: TextStyle(fontSize: 30, decorationThickness: 4),
//                ),
//              ),
//            ],
//          ),
//        ],
//      ),
//    );
//  }
//}
