import 'package:flutter/material.dart';

class BarTop extends StatefulWidget {
  final String titles;

  BarTop(this.titles);

  @override
  _BarTopState createState() => _BarTopState();
}

class _BarTopState extends State<BarTop> {
  @override
  Widget build(BuildContext context) {

    final iconInfo = InkWell(
      child: Icon(
        Icons.info_outline,
        color: Color(0xFF00d0d3),
        size: 25,
      ),
    );

    final title = Container(
      child: Text(
        widget.titles,
        style: TextStyle(
          fontSize: 23,
          fontWeight: FontWeight.w500
        ),
      ),

    );

    final iconBack = InkWell(
      onTap: (){
        Navigator.pop(context);
      },
      child: Icon(
        Icons.arrow_back_ios,
        color: Color(0xFF00d0d3),
        size: 25,

      ),
    );

    return Container(
      padding: EdgeInsets.only(
          top: 35,
        bottom: 10,
        left: 20,
        right: 20
      ),

      decoration: BoxDecoration(
          gradient: LinearGradient(
              colors: [
                Color(0xFFFFFFFF),//arriba
                Colors.transparent//abajo
              ],
              begin: FractionalOffset(0.0, 77.8),
              end: FractionalOffset(9.9, 3.9),
              stops: [1.0, 0.0],
              tileMode: TileMode.repeated
          )
      ),

      child: Row(
        mainAxisSize: MainAxisSize.max,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          iconBack,
          title,
          iconInfo,
        ],
      ),
    );
  }
}