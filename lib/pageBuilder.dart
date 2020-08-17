import 'package:flutter/material.dart';
import 'variables.dart';

class pageBuilder extends StatelessWidget {
  pageBuilder({this.widget, this.onPressed,this.pageWidth, this.appbar, leading});
  Widget widget;
  final onPressed;
 double pageWidth;
 String appbar;
 var leading;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
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
