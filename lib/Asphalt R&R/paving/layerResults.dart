import 'package:estimatorapp/Asphalt%20R&R/prices/surfaceUnitPrice.dart';
import 'package:estimatorapp/pageBuilder.dart';
import 'package:flutter/material.dart';

class layerResults extends StatelessWidget {
  layerResults(
      {this.pavingsurface,
      this.pavingBase,
      this.loadsRemoved,
      this.surfaceArea});
  double pavingsurface;
  double surfaceArea;
  double pavingBase;
  int loadsRemoved;

  @override
  Widget build(BuildContext context) {
    return pageBuilder(
        pageWidth: double.infinity,
        widget: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "Asphalt Removed: " + loadsRemoved.toString() + " Loads",
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 25,
                  ),
                ),
              ],
            ),
            Divider(),
            SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "Base Layer: " +
                      ((pavingBase * surfaceArea * 2.45).ceil()).toString() +
                      " tons",
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 25,
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
                Text(
                  "Surface Layer: " +
                      ((pavingsurface * surfaceArea * 2.45).ceil()).toString() +
                      " tons",
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 25,
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
                Text(
                  "Total Paving: " +
                      (((pavingsurface * surfaceArea * 2.45) +
                                  (pavingBase * surfaceArea * 2.45))
                              .ceil())
                          .toString() +
                      " tons",
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 25,
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
              builder: (context) => surfacePavingUnitPrice(
                pavingSurfaceTons: (pavingsurface * surfaceArea * 2.45).ceil(),
                loadsRemoved: loadsRemoved,
                totalSurfaceArea: surfaceArea,
                pavingBaseTons: (pavingsurface * surfaceArea * 2.45).ceil(),
              ),
            ),
          );
        });
  }
}
