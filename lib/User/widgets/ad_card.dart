import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class AdsCard extends StatelessWidget {

  String pathImage = 'https://scontent.ftuc1-1.fna.fbcdn.net/v/t1.0-9/73515629_2257649864346527_7690620271882928128_n.jpg?_nc_cat=1&_nc_oc=AQlMGh4cf23X9m77e8hQkjCPzwH8omyFCKWizl2sc-XYVBqpM4LVffTrK3DS0KU_uuw&_nc_ht=scontent.ftuc1-1.fna&oh=1cc1feca33e437529068b95adf5d178c&oe=5E5A564A';

  AdsCard(@required this.pathImage);

  @override
  Widget build(BuildContext context) {
    final anuncio = Container(
      height: 480.0,
      width: 650.0,
      padding: EdgeInsets.only(
        
          left: MediaQuery.of(context).size.width / 10,
          right: MediaQuery.of(context).size.width / 10,
  
      ),

      child: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            fit: BoxFit.cover,
            

            image: NetworkImage(pathImage),
          ),
          borderRadius: BorderRadius.all(Radius.circular(10.0)),
          shape: BoxShape.rectangle,
            boxShadow: <BoxShadow>[
              BoxShadow(
                  color: Colors.black38,
                  blurRadius: 15.0,
                  offset: Offset(0.0, 0.3)
              )
            ]
        ),
      )
    );

    return Stack(
      alignment: Alignment.center,
      children: <Widget>[
        anuncio
      ],
    );

  }
}
