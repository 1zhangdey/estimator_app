import 'package:flutter/material.dart';
import 'variables.dart';

class pageBuilder extends StatelessWidget {
  pageBuilder({this.widget, this.onPressed,this.pageWidth});
  Widget widget;
  final onPressed;
 double pageWidth;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: atlasPavingBlue,
        title: Text("Asphalt R&R"),
        centerTitle: true,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Center(
            child: Container(
                padding: EdgeInsets.only(bottom: 40,right: 20),
                width: pageWidth,
                child: widget),
          ),
          IconButton(
            icon: Icon(Icons.arrow_forward),
            color: atlasPavingBlue,
            onPressed: onPressed,
          ),
        ],
      ),
    );
  }
}
