import 'package:estimatorapp/pageBuilder.dart';
import 'package:flutter/material.dart';

class finalPrice extends StatelessWidget {
  finalPrice(
      {this.totalManPowerPrice,
      this.pavingBaseTotalPrice,
      this.pavingSurfaceTotalPrice});
  double totalManPowerPrice;
  double pavingSurfaceTotalPrice;
  double pavingBaseTotalPrice;
  @override
  Widget build(BuildContext context) {
    return pageBuilder(
      appbar: "Pricing",
      pageWidth: double.infinity,
      widget: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text(
            "Total Price",
            style: TextStyle(
              fontSize: 40,
            ),
          ),
          Divider(
            thickness: 5,
          ),
          Text(
            (
                    pavingSurfaceTotalPrice +
                    pavingBaseTotalPrice)
                .toString(),
            style: TextStyle(fontSize: 50, fontWeight: FontWeight.bold),
          ),
        ],
      ),
    );
  }
}
