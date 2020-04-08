import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class RangeActionIron extends StatefulWidget {

  final String titleRange;
  double value = 0.0;
  final onChangedEnd;

  RangeActionIron({Key key, @required this.titleRange, @required this.value, this.onChangedEnd});

  @override
  _RangeActionIronState createState() => _RangeActionIronState();
}

class _RangeActionIronState extends State<RangeActionIron> {

  Widget num(){
    return Container(
      width: 30,
      height: 30,
      alignment: Alignment.center,
      decoration: new BoxDecoration(
          color: Colors.blue[200],
          borderRadius: BorderRadius.circular(15.0)
      ),
      child: Text(
        widget.value.toInt().toString(),
        style: TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.w700,
            color: Colors.white
        ),

      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    final info = Container(
      margin: EdgeInsets.only(
          left: 20,
          right: 20
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
              Text(
                widget.titleRange,
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                ),
              ),
          num(),

            ],
      ),
    );

    return Container(
      width: 800,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          info,
          Slider(
            min: 0,
            max: 20,
            activeColor: Colors.blue[200],
            value: widget.value.toDouble(),
            onChanged: (double newValue){
              print(widget.value);
              setState(() {
                widget.value = newValue.toDouble();
              });
            },

            onChangeEnd: widget.onChangedEnd,
          ),
        ],
      ),
    );
  }
}
