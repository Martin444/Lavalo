import 'package:flutter/material.dart';

class Parrafo extends StatelessWidget {

  String text;

  Parrafo( this.text);
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 20),
      padding: EdgeInsets.only(left: 20, right: 20),
      child: Text(
        text,
        style: TextStyle(
          fontSize: 18,

        ),
      ),
    );
  }
}
