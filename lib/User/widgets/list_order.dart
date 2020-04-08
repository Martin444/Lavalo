import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:lavalo/User/Repository/cloud_firestore_api.dart';
import 'package:lavalo/User/widgets/profile_order.dart';
import 'package:lavalo/User/widgets/select_avatar.dart';
import 'package:lavalo/Widgets/chat.dart';

class ListOrder extends StatefulWidget {
  final uid;
  final user;
  String stateFilter;

  List<bool> _selections = List.generate(2, (_) => false);
  ListOrder(this.uid, this.user);

  @override
  _ListOrderState createState() => _ListOrderState();
}

class _ListOrderState extends State<ListOrder> {

  String _type = "Hola mundo ";
  String _chatID;
  int _total;
  String _state;

  String numberPhone;
  String neighborhood;

  DateTime _dateStart;
  DateTime _dateFinish;
  String _paymentMetod;
  String _description;
  String _location;

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
  DocumentReference user;
  


  @override
  Widget build(BuildContext context) {

    return StreamBuilder(
      stream: Firestore.instance.collection('order').where("userOwner", isEqualTo: Firestore.instance.document("${CloudFirestoreAPI().USERS}/${widget.uid}")).snapshots(),
      builder: (BuildContext context, AsyncSnapshot<QuerySnapshot> snapshot){
        if (!snapshot.hasData || snapshot.hasError){
          print("No hay Ordenes realizadas");
          return Container(
            alignment: Alignment.center,
            margin: EdgeInsets.only(
                left: 20.0,
                right: 20.0,
                top: 30.0
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
          AsyncSnapshot image = snapshot;
          if(snapshot.hasData){
            List<ProfileOrders> cards = new List<ProfileOrders>();
            image.data.documents.forEach((f){
              // print(f.documentID);
              _chatID = f.documentID;
              _type = f['type'].toString();
              _total = f['priceTotal'];
              _state = f['state'];
              var _id = f.documentID;
              numberPhone = f['numberPhone'];
              neighborhood = f['neighborhood'];
              _type = f['type'].toString();
              _total = f['priceTotal'];
              _state = f['state'];
              _dateStart = (f['recolectionStart'] as Timestamp).toDate();
              _dateFinish = (f['finalDelivery'] as Timestamp).toDate();
              _paymentMetod = f['typePayment'];
              _description = f['description'];
              _location = f['location'];
              remera = f['cantidadRemera'];
              blusa = f['cantidadBlusa'];
              body = f['cantidadBody'];
              bufanda = f['cantidadBufanda'];
              buzo = f['cantidadBuzo'];
              calza = f['cantidadCalza'];
              camisa = f['cantidadCamisa'];
              camperaAlg = f['cantidadCamperaAlg'];
              campera = f['cantidadCampera'];
              cancanes = f['cantidadCancanes'];
              chaleco = f['cantidadChaleco'];
              chomba = f['cantidadChomba'];
              corpino = f['cantidadCorpino'];
              falda = f['cantidadFalda'];
              guantes = f['cantidadGuantes'];
              interior = f['cantidadInterior'];
              jeans = f['cantidadJeans'];
              jersey = f['cantidadJersey'];
              medias = f['cantidadMedias'];
              pantalonAlg = f['cantidadPantalonAlg'];
              pantalonVestir = f['cantidadPantalonVestir'];
              pollera = f['cantidadPollera'];
              remeraSport = f['cantidadRemeraSport'];
              sabanas = f['cantidadSabanas'];
              shorts = f['cantidadShorst'];
              sweater = f['cantidadSweater'];
              toallas = f['cantidadToallas'];
              top = f['cantidadTop'];
              trajeBano = f['cantidadTrajeBano'];
              uniforme = f['cantidadUniforme'];
              vestido = f['cantidadVestido'];
              zapatillas = f['cantidadZapatilla'];
              plancharBlusa = f['plancharBlusa'];
              plancharBody = f['plancharBody'];
              plancharBufanda = f['plancharBufanda'];
              plancharBuzo = f['plancharBuzo'];
              plancharCalza = f['plancharCalza'];
              plancharCamisa = f['plancharCamisa'];
              plancharCampera = f['plancharCampera'];
              plancharCamperaAlg = f['plancharCamperaAlg'];
              plancharCancanes = f['plancharCancanes'];
              plancharChaleco = f['plancharChaleco'];
              plancharChomba = f['plancharChomba'];
              plancharCorpino = f['plancharCorpino'];
              plancharFalda = f['plancharFalda'];
              plancharGuantes = f['plancharGuantes'];
              plancharInterior = f['plancharInterior'];
              plancharJeans = f['plancharJeans'];
              plancharJersey = f['plancharJersey'];
              plancharMedias = f['plancharMedias'];
              plancharPantalonAlg = f['plancharPantalonAlg'];
              plancharPantalonVestir = f['plancharPantalonVestir'];
              plancharPollera = f['plancharPollera'];
              plancharRemeraSport = f['plancharRemeraSport'];
              plancharRemera = f['plancharRemeta'];
              plancharSabanas = f['plancharSabanas'];
              plancharShorts = f['plancharShorts'];
              plancharSweater = f['plancharSweater'];
              plancharToallas = f['plancharToallas'];
              plancharTop = f['plancharTop'];
              plancharUniforme = f['plancharUniforme'];
              plancharVestido = f['plancharVestido'];
              user= f['userOwner'];
              neighborhood = f['neighborhood'];

               callback(){
                  
                }

              cards.add(ProfileOrders(
                _type, 
              widget.stateFilter,
               _total, 
               _state, 
               widget.user, 
               _chatID, 
               _id ,
                numberPhone,
                callback,
                _dateStart,
                _dateFinish,
                _paymentMetod,
                _description,
                _location,
                remera,
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
                  plancharVestido,
              ));
            });
            return Container(
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15.0),
                  boxShadow: <BoxShadow>[
                    BoxShadow(
                        color: Colors.black54,
                        blurRadius: 7.0,
                        offset: Offset(1.0, 4.0)
                    )
                  ],
                  gradient: LinearGradient(
                      colors: [
                        Color(0xFFffffff),//arriba
                        Color(0xFFffffff)//abajo
                      ],
                      begin: FractionalOffset(0.2, 0.0),
                      end: FractionalOffset(1.0, 0.6),
                      stops: [0.0, 0.6],
                      tileMode: TileMode.clamp
                  )
              ),
              child: Column(
                children: <Widget>[
                  Container(
                    margin: EdgeInsets.only(top: 10),
                    child: Column(
                      children: <Widget>[
                        ToggleButtons(
                          disabledBorderColor: Colors.transparent,
                          selectedColor: Colors.black54,
                          borderRadius: BorderRadius.circular(24),
                          fillColor: Colors.black12,
                          splashColor: Colors.blue,
                          children: [
                            Container(
                              alignment: Alignment.center,
                              width: 130,
                              child: Text('Todas las ordenes',
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 15
                              ),
                              ),
                            ),
                            Container(
                              alignment: Alignment.center,
                              width: 150,
                              child: Text('Ordenes terminadas',
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 15
                              ),
                              ),
                            )
                          ], 
                          isSelected: widget._selections,
                          onPressed: (int index){
                            index == 1?
                              setState((){
                                widget._selections[index] = !widget._selections[index];
                                widget.stateFilter = "Finalizado";
                              })
                            :
                              setState((){
                              widget._selections[index] = !widget._selections[index];
                              widget.stateFilter = "Todos";
                              });
                          },
                          ),

                        new Divider(
                          color: Color(0xFF00d0d3),
                        ),
                      ],
                    ),
                  ),

                  Column(
                    children: cards,
                  )
                ],
              ),
            );

              //
          }else{
            return Container(
              child: Text(
                  "Realiza una Orden no te quedes atras de la revolución"
              ),
            );
          }

        }
      },
    );
  }
}


