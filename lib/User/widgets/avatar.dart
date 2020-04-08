import 'package:flutter/material.dart';

class Avatar extends StatelessWidget {

  String pathImag = 'assets/img/barber.jpg';

  Avatar(this.pathImag);

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.center,
      children: <Widget>[
      Container(
      height: 120.0,
      width: 120.0,
      margin: EdgeInsets.only(
          top: 7.0,
          bottom: 17
      ),

      decoration: BoxDecoration(
          image: DecorationImage(
              fit: BoxFit.cover,
              image: AssetImage(pathImag)
          ),
          shape: BoxShape.circle,
          boxShadow: <BoxShadow>[
            BoxShadow(
                color: Colors.black38,
                blurRadius: 35.0,
                offset: Offset(0.0, 16.3)
            )
          ]
      ),
    )
      ],
    );
  }
}
