import 'package:carousel_slider/carousel_slider.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:lavalo/User/widgets/ad_card.dart';


class Ads extends StatefulWidget {

  @override
  _AdsState createState() => _AdsState();
}

class _AdsState extends State<Ads> {
  String _image = "Hola mundo ";
  String _num;
  @override
  Widget build(BuildContext context) {
    return new StreamBuilder<QuerySnapshot>(
      stream: Firestore.instance.collection('ads').snapshots(),
      builder: (BuildContext context, AsyncSnapshot<QuerySnapshot> snapshot){
        if (!snapshot.hasData || snapshot.hasError){
          print("No hay anuncios");
          return Container(
            alignment: Alignment.center,
            margin: EdgeInsets.only(
                left: 10.0,

            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                CircularProgressIndicator(),
                Text("Esperando datos")
              ],
            ),
          );
        }else{
          //snapshot.data.documents.forEach((f)=> print(f.documentID.toString()));
          AsyncSnapshot image = snapshot;
          if(snapshot.hasData){

            List<AdsCard> cards = new List<AdsCard>();
            image.data.documents.forEach((f){
              _image = f['imageUrl'].toString();
              _num = f.documentID;
              cards.add(AdsCard(_image));
              });
            return CarouselSlider(
              enableInfiniteScroll: true,
              autoPlay: true,
              autoPlayInterval: Duration(seconds: 5),
              items: cards,
            );
          }else{
            return Container(
              child: Text(
                  "Hola No hay imagenes"
              ),
            );
          }

        }
      },
    );
  }
}

