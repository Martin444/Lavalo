import 'package:flutter/material.dart';

class TotalOrder extends StatefulWidget {

  final double total;

  TotalOrder({@required this.total});
  @override
  _TotalOrderState createState() => _TotalOrderState();
}

class _TotalOrderState extends State<TotalOrder> {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(
        bottom: 15,
      ),

      alignment: Alignment.bottomCenter,
      child: Text(
        'Total: ${widget.total.toInt()} Pesos',
            style: TextStyle(
          fontWeight: FontWeight.bold,
              fontSize: 25
      ),
      ),
    );
  }
}