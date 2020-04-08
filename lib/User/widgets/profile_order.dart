import 'package:flutter/material.dart';
import 'package:lavalo/User/Screens/details.dart';
import 'package:lavalo/Widgets/button_green.dart';
import 'package:lavalo/Widgets/chat.dart';

class ProfileOrders extends StatelessWidget {
  String type;
  String stateFilter;
  int price;
  String state;
  final user;
  String chatID;
  DateTime DateStart;
  DateTime DateFinish;
  String paymentMetod;
  String description;
  String location;
  int remera;
  bool plancharRemera;
  int jeans;
  bool plancharJeans;
  int medias;
  bool plancharMedias;
  int interior;
  bool plancharInterior;
  int shorts;
  bool plancharShorts;
  int buzo;
  bool plancharBuzo;
  int sweater;
  bool plancharSweater;
  int pantalonAlg;
  bool plancharPantalonAlg;
  int chomba;
  bool plancharChomba;
  int pantalonVestir;
  bool plancharPantalonVestir;
  int camisa;
  bool plancharCamisa;
  int calza;
  bool plancharCalza;
  int corpino;
  bool plancharCorpino;
  int camperaAlg;
  bool plancharCamperaAlg;
  int remeraSport;
  bool plancharRemeraSport;
  int campera;
  bool plancharCampera;
  int jersey;
  bool plancharJersey;
  int pollera;
  bool plancharPollera;
  int vestido;
  bool plancharVestido;
  int uniforme;
  bool plancharUniforme;
  int trajeBano;
  bool plancharTrajeBano;
  int bufanda;
  bool plancharBufanda;
  int guantes;
  bool plancharGuantes;
  int chaleco;
  bool plancharChaleco;
  int falda;
  bool plancharFalda;
  int top;
  bool plancharTop;
  int body;
  bool plancharBody;
  int cancanes;
  bool plancharCancanes;
  int toallas;
  bool plancharToallas;
  int blusa;
  bool plancharBlusa;
  int zapatillas;
  int sabanas;
  bool plancharSabanas;
  var id;
  String numberPhone;
  final VoidCallback callback;

  ProfileOrders(this.type,
  this.stateFilter , 
  this.price, 
  this.state, 
  this.user, 
  this.chatID,
  this.id,
  this.numberPhone, 
  this.callback, 
  this.DateStart, 
  this.DateFinish, 
  this.paymentMetod, 
  this.description, 
  this.location, 
  this.remera,
      this.blusa,
      this.body,
      this.bufanda,
      this.buzo,
      this.calza,
      this.camisa,
      this.camperaAlg,
      this.campera,
      this.cancanes,
      this.chaleco,
     this. chomba,
      this.corpino,
      this.falda,
      this.guantes,
      this.interior,
      this.jeans,
      this.jersey,
      this.medias,
      this.pantalonAlg,
      this.pantalonVestir,
     this.pollera,
      this.remeraSport,
     this.sabanas,
      this.shorts,
      this.sweater,
     this.toallas,
      this.top,
     this.trajeBano,
      this.uniforme,
     this.vestido,
      this.zapatillas,
      this.plancharBlusa,
      this.plancharBody,
     this.plancharBufanda,
      this.plancharBuzo,
      this.plancharCalza,
      this.plancharCamisa,
      this.plancharCampera,
      this.plancharCamperaAlg,
     this.plancharCancanes,
      this.plancharChaleco,
      this.plancharChomba,
      this.plancharCorpino,
      this.plancharFalda,
     this.plancharGuantes,
     this. plancharInterior,
      this.plancharJeans,
      this.plancharJersey,
      this.plancharMedias,
     this. plancharPantalonAlg,
      this.plancharPantalonVestir,
      this.plancharPollera,
      this.plancharRemeraSport,
      this.plancharRemera,
      this.plancharSabanas,
      this.plancharShorts,
      this.plancharSweater,
      this.plancharToallas,
      this.plancharTop,
      this.plancharUniforme,
     this. plancharVestido,
  );

  
  @override
  Widget build(BuildContext context) {
    if(stateFilter == 'Finalizado'){
      if(state == 'Finalizado'){
    
    return Container(
      margin: EdgeInsets.only(top: 10),
      padding: EdgeInsets.only(top: 5, left: 5, right: 5, bottom: 5),
      height: 250,
      width: MediaQuery.of(context).size.width /1.2,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.end,
        children: <Widget>[
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.end,
            children: <Widget>[
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Text(
                    type,
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                    textAlign: TextAlign.center,
                  ),
                  Text(
                    state,
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.w600,
                    ),
                    textAlign: TextAlign.right,
                  ),
                  

                ],
              ),


              Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  InkWell(
                      child: Container(
                        margin: EdgeInsets.only(right: 10, top: 10, bottom: 5),
                        child: Icon(
                          Icons.message,
                          color: Colors.black38,
                        ),
                      ),
                      onTap: (){
                        print(chatID);
                        Navigator.push(context, 
                          new MaterialPageRoute(
                          builder: (BuildContext context)=> new Chat(user:user, miUsuario: user.name,chatID: chatID,)));
                      },
                  ),
                  Text(
                    "Total: $price ARS",
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ),
                    textAlign: TextAlign.right,
                  ),
                ],
              ),

            ],
          ),
          
          ButtonGreen(
                    text: "Detalles",
                    onPressed: (){
                      Navigator.push(context,
                          new MaterialPageRoute(
                              builder: (BuildContext context) =>
                              new Details(id,numberPhone,DateStart, DateFinish, paymentMetod, price, state, description, location, remera,
                                blusa,
                                body,
                                bufanda,
                                buzo,
                                calza,
                                camisa,
                                camperaAlg,
                                campera,
                                cancanes,
                                chaleco,
                                chomba,
                                corpino,
                                falda,
                                guantes,
                                interior,
                                jeans,
                                jersey,
                                medias,
                                pantalonAlg,
                                pantalonVestir,
                                pollera,
                                remeraSport,
                                sabanas,
                                shorts,
                                sweater,
                                toallas,
                                top,
                                trajeBano,
                                uniforme,
                                vestido,
                                zapatillas,
                                plancharBlusa,
                                plancharBody,
                                plancharBufanda,
                                plancharBuzo,
                                plancharCalza,
                                plancharCamisa,
                                plancharCampera,
                                plancharCamperaAlg,
                                plancharCancanes,
                                plancharChaleco,
                                plancharChomba,
                                plancharCorpino,
                                plancharFalda,
                                plancharGuantes,
                                plancharInterior,
                                plancharJeans,
                                plancharJersey,
                                plancharMedias,
                                plancharPantalonAlg,
                                plancharPantalonVestir,
                                plancharPollera,
                                plancharRemeraSport,
                                plancharRemera,
                                plancharSabanas,
                                plancharShorts,
                                plancharSweater,
                                plancharToallas,
                                plancharTop,
                                plancharUniforme,
                                plancharVestido,)
                          )
                      );
                    },
                    height: 35,
                ),

          new Divider(
            color: Color(0xFF000000),
            height: 30.2,
          )
        ],
      )
    );
      }
    
    }else{
        return Container(
      margin: EdgeInsets.only(top: 10),
      padding: EdgeInsets.only(top: 5, left: 5, right: 5, bottom: 5),
      height: 220,
      width: MediaQuery.of(context).size.width /1.2,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.end,
        children: <Widget>[
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.end,
            children: <Widget>[
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Text(
                    type,
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                    textAlign: TextAlign.center,
                  ),
                  Text(
                    state,
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.w600,
                    ),
                    textAlign: TextAlign.right,
                  ),
                  

                ],
              ),


              Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  InkWell(
                      child: Container(
                        margin: EdgeInsets.only(right: 10, top: 10, bottom: 5),
                        child: Icon(
                          Icons.message,
                          color: Colors.black38,
                        ),
                      ),
                      onTap: (){
                        print(chatID);
                        Navigator.push(context, 
                          new MaterialPageRoute(
                          builder: (BuildContext context)=> new Chat(user:user, miUsuario: user.name,chatID: chatID,)));
                      },
                  ),
                  Text(
                    "Total: $price ARS",
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ),
                    textAlign: TextAlign.right,
                  ),
                ],
              ),

            ],
          ),
          
          ButtonGreen(
                    text: "Detalles",
                    onPressed: (){
                      Navigator.push(context,
                          new MaterialPageRoute(
                              builder: (BuildContext context) =>
                              new Details(id,numberPhone,DateStart, DateFinish, paymentMetod, price, state, description, location, remera,
                                blusa,
                                body,
                                bufanda,
                                buzo,
                                calza,
                                camisa,
                                camperaAlg,
                                campera,
                                cancanes,
                                chaleco,
                                chomba,
                                corpino,
                                falda,
                                guantes,
                                interior,
                                jeans,
                                jersey,
                                medias,
                                pantalonAlg,
                                pantalonVestir,
                                pollera,
                                remeraSport,
                                sabanas,
                                shorts,
                                sweater,
                                toallas,
                                top,
                                trajeBano,
                                uniforme,
                                vestido,
                                zapatillas,
                                plancharBlusa,
                                plancharBody,
                                plancharBufanda,
                                plancharBuzo,
                                plancharCalza,
                                plancharCamisa,
                                plancharCampera,
                                plancharCamperaAlg,
                                plancharCancanes,
                                plancharChaleco,
                                plancharChomba,
                                plancharCorpino,
                                plancharFalda,
                                plancharGuantes,
                                plancharInterior,
                                plancharJeans,
                                plancharJersey,
                                plancharMedias,
                                plancharPantalonAlg,
                                plancharPantalonVestir,
                                plancharPollera,
                                plancharRemeraSport,
                                plancharRemera,
                                plancharSabanas,
                                plancharShorts,
                                plancharSweater,
                                plancharToallas,
                                plancharTop,
                                plancharUniforme,
                                plancharVestido,)
                          )
                      );
                    },
                    height: 35,
                ),

          new Divider(
            color: Color(0xFF000000),
            height: 30.2,
          )
        ],
      )
    );
    }
  
  }
}
