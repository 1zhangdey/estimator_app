import 'package:estimatorapp/page1.dart';
import 'package:flutter/material.dart';
import 'variables.dart';


class nextPageButton extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return IconButton(
      icon: Icon(
        Icons.arrow_forward,
        color: atlasPavingBlue,
      ),
      iconSize: 40,
      onPressed: () => {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => page1()),
        ),
      },
    );
  }
}

