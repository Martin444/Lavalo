import 'package:flutter/material.dart';


class FloatNext extends StatefulWidget {

  final VoidCallback onChanged;

  FloatNext({@required this.onChanged});

  @override
  FloatNext_State createState() => FloatNext_State();
}

// ignore: camel_case_types
class FloatNext_State extends State<FloatNext> {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(
        right: 20,
        bottom: 15
      ),
      alignment: Alignment.bottomRight,
    child: FloatingActionButton(
      backgroundColor: Color(0xFF00d0d3),
      //mini: true,
      tooltip: "Fav",
      onPressed: widget.onChanged,

      child: Icon(
      Icons.check,
        size: 35,
      ),

    ),
    );
  }
}
