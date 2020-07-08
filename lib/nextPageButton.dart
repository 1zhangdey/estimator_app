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
      onPressed: () {
        Navigator.pushNamed(context, 'page2');
      },
    );
  }
}
