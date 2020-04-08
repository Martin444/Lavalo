import 'package:flutter/material.dart';

class RangeAction extends StatefulWidget {


  String titleRange = "Remera";
  double value = 0.0;
  final onPlanchar;
  bool isPlanchar;
  final onChangedEnd;

  //int Precio = 17;
  RangeAction({Key key, this.titleRange, @required this.value, @required this.isPlanchar, this.onChangedEnd, this.onPlanchar});

  @override
  _RangeActionState createState() => _RangeActionState();
}

class _RangeActionState extends State<RangeAction> {

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
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              Text(
                widget.titleRange,
                style: TextStyle(
                  fontWeight: FontWeight.bold,

                ),
              ),
              Text(
                "Planchar",
                style: TextStyle(
                  fontWeight: FontWeight.bold,

                ),
              )
            ],

          )

        ],
      ),
    );

    return Container(
      child: Column(
        children: <Widget>[
          info,
          Row(
          crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: <Widget>[
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
              num(),
              Checkbox(
                checkColor: Colors.white,
                activeColor: Colors.blue[200],
                value: widget.isPlanchar,
                onChanged: widget.onPlanchar,
                )
            ],
          ),

        ].toList(growable: true),
      )


    );
  }
}
