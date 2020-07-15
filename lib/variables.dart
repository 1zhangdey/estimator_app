import 'package:flutter/material.dart';


Color atlasPavingBlue = Color(0xFF2B45EC);
int pagenumber;



String truckloadCalculator(depth, surface) {
  double numdepth = double.parse(depth) * 0.0254;
  double numsurface = double.parse(surface);
  double area = numdepth * numsurface;
  int loads = (area / 8).ceil();
  return loads.toString();
}


