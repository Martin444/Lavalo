import 'package:flutter/material.dart';

class GradientBack extends StatelessWidget {

  String title = "Lavado";
  double height = 100;

  GradientBack({Key key, this.title, this.height});//height = null full screen
  @override
  Widget build(BuildContext context) {
    // TODO: implement build

    double screenHeight = MediaQuery.of(context).size.height;
    double screenWidth = MediaQuery.of(context).size.width;

    if(height == null){
      height = screenHeight;
    }

    return Container (
      width: screenWidth,
      height: height,
      decoration: BoxDecoration(
        gradient: LinearGradient(
            colors:[
              Color(0xFF00d0d3),
              Color(0xFF1E8ED5)
            ],
            begin: FractionalOffset(0.2, 0.0),
            end: FractionalOffset(1.0, 0.5),
            stops: [0.0, 0.6],
          tileMode: TileMode.clamp
        )
      ),

      child: FittedBox(
        fit: BoxFit.none,
        alignment: Alignment(-1.5, -0.8),
        child: Container(
          width: screenHeight,
          height: screenHeight,
          decoration: BoxDecoration(
            color:  Color.fromRGBO(0, 0, 0, 0.05),
            borderRadius: BorderRadius.circular(screenHeight / 2),
          ),
        ),
      ),

      /*Text(
        title,
        style: TextStyle(
          color: Colors.white,
          fontSize: 20.0,
          fontFamily: "Lato",
          fontWeight: FontWeight.bold
        ),
      ),*/

      //alignment: Alignment(-0.9, -0.6),
    );
  }

}