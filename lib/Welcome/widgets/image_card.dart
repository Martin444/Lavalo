import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class WelcomeImage extends StatelessWidget {

  String pathImage = 'assets/img/barber.jpg';

  WelcomeImage(this.pathImage);

  @override
  Widget build(BuildContext context) {

    final welcomin = Container(

      margin: EdgeInsets.only(
          // left: 20.0,
          right: 15.0
      ),
      width: 800,
      decoration: BoxDecoration(
          image: DecorationImage(
              fit: BoxFit.cover,
              matchTextDirection: true,
              image: AssetImage(pathImage)
          ),
          borderRadius: BorderRadius.all(Radius.circular(10.0)),
          // shape: BoxShape.rectangle,
          boxShadow: <BoxShadow>[
            BoxShadow(
                color: Colors.black38,
                blurRadius: 15.0,
                offset: Offset(0.0, 0.3)
            )
          ]
      ),
    );


    return Stack(
      alignment: Alignment(0.9, 1.1),
      children: <Widget>[
          welcomin
      ],
    );
  }
}
