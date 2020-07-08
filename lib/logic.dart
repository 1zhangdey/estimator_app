import 'package:estimatorapp/page1.dart';
import 'package:get/get.dart';
import 'package:flutter/material.dart';
import 'variables.dart';

void Calulator(dropdownvalue){
  print(dropdownvalue);
}

void pageturner(int pagenumber){
  if(pagenumber == 1){
    Get.to(page1());
  }
}

