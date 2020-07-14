import 'package:flutter/material.dart';
import 'variables.dart';

class pageBuilder extends StatelessWidget {
  pageBuilder({this.widget, this.onPressed, this.units});
  Widget widget;
  final onPressed;
  String units;

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
                width: 250,
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
