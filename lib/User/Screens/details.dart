import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:lavalo/Widgets/gradient_back.dart';
import 'package:lavalo/Widgets/title_header_white.dart';
import 'package:intl/intl.dart';


class Details extends StatefulWidget {

  int _count = 0;

  DateTime dateStart;
  DateTime dateFinish;
  String paymentMetod;
  int price;
  String state;
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
  var updateAcep;
  var id;
  String numbrePhone;

  Details(this.id, this.numbrePhone, this.dateStart, this.dateFinish, this.paymentMetod, this.price, this.state, this.description, this.location, this.remera,
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
      this.chomba,
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
      this.plancharInterior,
      this.plancharJeans,
      this.plancharJersey,
      this.plancharMedias,
      this.plancharPantalonAlg,
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
      this.plancharVestido,);

  @override
  _DetailsState createState() => _DetailsState();
}

class _DetailsState extends State<Details> {


  @override
  Widget build(BuildContext context) {

    String  plancharRemerita = widget.plancharRemera == true ? "Planchar" : "----";
    String  plancharBlusa = widget.plancharBlusa == true ? "Planchar" : "----";
    String  plancharBuzo = widget.plancharBuzo == true ? "Planchar" : "----";
    String  plancharBufanda = widget.plancharBufanda == true ? "Planchar" : "----";
    String  plancharBody = widget.plancharBody == true ? "Planchar" : "----";
    String  plancharCorpino = widget.plancharCorpino == true ? "Planchar" : "----";
    String  plancharChomba = widget.plancharChomba == true ? "Planchar" : "----";
    String  plancharChaleco = widget.plancharChaleco == true ? "Planchar" : "----";
    String  plancharCamperaAlg = widget.plancharCamperaAlg == true ? "Planchar" : "----";
    String  plancharCampera = widget.plancharCampera == true ? "Planchar" : "----";
    String  plancharCamisa = widget.plancharCamisa == true ? "Planchar" : "----";
    String  plancharCalza = widget.plancharCalza == true ? "Planchar" : "----";
    String  plancharTop = widget.plancharTop == true ? "Planchar" : "----";
    String  plancharToallas = widget.plancharToallas == true ? "Planchar" : "----";
    String  plancharTrajeBano = widget.plancharTrajeBano == true ? "Planchar" : "----";
    String  plancharCancanes = widget.plancharCancanes == true ? "Planchar" : "----";
    String  plancharRemeraSport = widget.plancharRemeraSport == true ? "Planchar" : "----";
    String  plancharFalda = widget.plancharFalda == true ? "Planchar" : "----";
    String  plancharGuantes = widget.plancharGuantes == true ? "Planchar" : "----";
    String  plancharInterior = widget.plancharInterior == true ? "Planchar" : "----";
    String  plancharJersey = widget.plancharJersey == true ? "Planchar" : "----";
    String  plancharJeans = widget.plancharJeans == true ? "Planchar" : "----";
    String  plancharMedias = widget.plancharMedias == true ? "Planchar" : "----";
    String  plancharPollera = widget.plancharPollera == true ? "Planchar" : "----";
    String  plancharPantalonVestir = widget.plancharPantalonVestir == true ? "Planchar" : "----";
    String  plancharPantalonAlg = widget.plancharPantalonAlg == true ? "Planchar" : "----";
    String  plancharSweater = widget.plancharSweater == true ? "Planchar" : "----";
    String  plancharUniforme = widget.plancharUniforme == true ? "Planchar" : "----";
    String  plancharShorts = widget.plancharShorts == true ? "Planchar" : "----";
    String  plancharSabanas = widget.plancharSabanas == true ? "Planchar" : "----";
    String titleButton;

    // Controlador del botón
    if(widget.state  == "En proceso"){
      titleButton = "Aceptar";
    }else if(widget.state == "Aceptado"){
      titleButton = "Retirar Ropa";

    }else if(widget.state == "Retirar Ropa"){
      titleButton = "Lavando";
    }else if(widget.state == "Lavando"){
      titleButton = "Finalizar";
    }else if(widget.state == "Finalizado"){
      titleButton = "Ok";
    }


    return StreamBuilder<QuerySnapshot>(
      stream: Firestore.instance.collection('order').snapshots(),
      builder: (context, snapshot){
        if(snapshot.hasData){
          return Scaffold(
            body: Stack(
              children: <Widget>[
                GradientBack(height: 300,),
                Row(
                  children: <Widget>[

                    Flexible(
                      child: Container(
                        padding: EdgeInsets.only(top: 38.0, left: 55.0, right: 10.0),
                        child: TitleHeader(title: "Detalles del pedido:"),
                      ),
                    )

                  ],
                ),

                ListView(
                  children: <Widget>[
                    Container(
                      padding: EdgeInsets.only(left: 20, right: 20),
                      margin: EdgeInsets.only(top: 80.0, bottom: 20.0),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          Text(
                            "Fecha de retiro",
                            style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.w600,
                              fontSize: 18,
                            ),
                          ),
                          Text(
                            "${DateFormat("dd/MM/yyyy HH:mm").format(widget.dateStart)}",
                            style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.w600,
                              fontSize: 18,
                            ),
                          )
                        ],
                      ),
                    ),
                    Container(
                      padding: EdgeInsets.only(left: 20, right: 20),
                      margin: EdgeInsets.only( bottom: 20.0),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          Text(
                            "Fecha de entrega",
                            style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.w600,
                              fontSize: 18,
                            ),
                          ),
                          Text(
                            "${DateFormat("dd/MM/yyyy HH:mm").format(widget.dateFinish)}",
                            style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.w600,
                              fontSize: 18,
                            ),
                          )
                        ],
                      ),
                    ),
                    Container(
                      padding: EdgeInsets.only(left: 20, right: 20),
                      margin: EdgeInsets.only( bottom: 20.0),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          Text(
                            "Calle: ",
                            style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.w600,
                              fontSize: 18,
                            ),
                          ),
                          Text(
                            widget.location,
                            style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.w600,
                              fontSize: 18,
                            ),
                          )
                        ],
                      ),
                    ),

                    Container(
                      padding: EdgeInsets.only(left: 20, right: 20),
                      margin: EdgeInsets.only( bottom: 20.0),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          Text(
                            "N° Teléfono: ",
                            style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.w600,
                              fontSize: 18,
                            ),
                          ),
                          widget.numbrePhone != null ?
                          Text(
                            widget.numbrePhone,
                            style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.w600,
                              fontSize: 18,
                            ),
                          )
                          :
                          Text(
                            "No hay número",
                            style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.w600,
                              fontSize: 18,
                            ),
                          )
                        ],
                      ),
                    ),

                    Container(
                      padding: EdgeInsets.only(left: 20, right: 20),
                      margin: EdgeInsets.only( bottom: 20.0),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          Text(
                            "Método de pago",
                            style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.w600,
                              fontSize: 18,
                            ),
                          ),
                          Text(
                            widget.paymentMetod,
                            style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.w600,
                              fontSize: 18,
                            ),
                          )
                        ],
                      ),
                    ),
                    Container(
                      padding: EdgeInsets.only(left: 20, right: 20),
                      margin: EdgeInsets.only( bottom: 20.0),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          Text(
                            "Total: ",
                            style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.w600,
                              fontSize: 18,
                            ),
                          ),
                          Text(
                            "${widget.price} ARS",
                            style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.w600,
                              fontSize: 18,
                            ),
                          )
                        ],
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(bottom: 20.0),
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
                      child: Container(
                        padding: EdgeInsets.only(left: 20, right: 20),
                        margin: EdgeInsets.only(top: 20.0, bottom: 20.0),
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: <Widget>[
                            Text(
                              "Estado: ",
                              style: TextStyle(
                                color: Colors.black87,
                                fontWeight: FontWeight.w700,
                                fontSize: 19,
                              ),
                            ),
                            Text(
                              widget.state,
                              style: TextStyle(
                                color: Colors.black87,
                                fontWeight: FontWeight.w700,
                                fontSize: 18,
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                    widget.description.length >= 1 ?  Container(
                      padding: EdgeInsets.only(left: 20, right: 20),
                      margin: EdgeInsets.only(top: 20.0, bottom: 10.0),
                      child: Column(
                        children: <Widget>[
                          Text(
                            "Importante:",
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 19
                            ),
                          ),

                          Text(
                            widget.description,
                            style: TextStyle(
                                fontWeight: FontWeight.w400,
                                fontSize: 19
                            ),
                            textAlign: TextAlign.center,
                          ),

                          new Divider(
                            color: Color(0xFF000000),
                          ),
                        ],
                      ),
                    ) : Column(children: <Widget>[],),
                    Container(
                      child: Column(
                        children: <Widget>[
                          Text(
                            "Prendas",
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 19
                            ),
                          )
                        ],
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(bottom: 80),
                      child: Column(
                        children: <Widget>[
                          widget.remera >= 1 ? Container(
                            margin: EdgeInsets.only(left: 20, right: 20),
                            child: Row(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: <Widget>[
                                Text(
                                  "Remeras: ${widget.remera}",
                                  style: TextStyle(
                                      fontSize: 19,
                                      fontWeight: FontWeight.w600,
                                      fontFamily: "Lato"
                                  ),
                                ),

                                Text(
                                    plancharRemerita

                                )

                              ],
                            ),
                          ) : Column(children: <Widget>[],),
                          widget.blusa > 1 ? Container(
                            margin: EdgeInsets.only(left: 20, right: 20),
                            child: Row(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: <Widget>[
                                Text(
                                  "Blusas: ${widget.blusa}",
                                  style: TextStyle(
                                      fontSize: 19,
                                      fontWeight: FontWeight.w600,
                                      fontFamily: "Lato"
                                  ),
                                ),

                                Text(
                                    plancharBlusa
                                )

                              ],
                            ),
                          ) : Column(children: <Widget>[],),
                          widget.bufanda >= 1 ? Container(
                            margin: EdgeInsets.only(left: 20, right: 20),
                            child: Row(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: <Widget>[
                                Text(
                                  "Bufandas: ${widget.bufanda}",
                                  style: TextStyle(
                                      fontSize: 19,
                                      fontWeight: FontWeight.w600,
                                      fontFamily: "Lato"
                                  ),
                                ),

                                Text(
                                    plancharBufanda
                                )

                              ],
                            ),
                          ) : Column(children: <Widget>[],),
                          widget.buzo >= 1 ? Container(
                            margin: EdgeInsets.only(left: 20, right: 20),
                            child: Row(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: <Widget>[
                                Text(
                                  "Buzos: ${widget.buzo}",
                                  style: TextStyle(
                                      fontSize: 19,
                                      fontWeight: FontWeight.w600,
                                      fontFamily: "Lato"
                                  ),
                                ),

                                Text(
                                    plancharBuzo
                                )

                              ],
                            ),
                          ) : Column(children: <Widget>[],),
                          widget.body >= 1 ? Container(
                            margin: EdgeInsets.only(left: 20, right: 20),
                            child: Row(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: <Widget>[
                                Text(
                                  "Body: ${widget.body}",
                                  style: TextStyle(
                                      fontSize: 19,
                                      fontWeight: FontWeight.w600,
                                      fontFamily: "Lato"
                                  ),
                                ),

                                Text(
                                    plancharBody
                                )

                              ],
                            ),
                          ) : Column(children: <Widget>[],),
                          widget.corpino >= 1 ? Container(
                            margin: EdgeInsets.only(left: 20, right: 20),
                            child: Row(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: <Widget>[
                                Text(
                                  "Corpiño: ${widget.corpino}",
                                  style: TextStyle(
                                      fontSize: 19,
                                      fontWeight: FontWeight.w600,
                                      fontFamily: "Lato"
                                  ),
                                ),

                                Text(
                                    plancharCorpino
                                )

                              ],
                            ),
                          ) : Column(children: <Widget>[],),
                          widget.chomba >= 1 ? Container(
                            margin: EdgeInsets.only(left: 20, right: 20),
                            child: Row(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: <Widget>[
                                Text(
                                  "Chombas: ${widget.chomba}",
                                  style: TextStyle(
                                      fontSize: 19,
                                      fontWeight: FontWeight.w600,
                                      fontFamily: "Lato"
                                  ),
                                ),

                                Text(
                                    plancharChomba
                                )

                              ],
                            ),
                          ) : Column(children: <Widget>[],),
                          widget.chaleco >= 1 ? Container(
                            margin: EdgeInsets.only(left: 20, right: 20),
                            child: Row(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: <Widget>[
                                Text(
                                  "Chalecos: ${widget.chaleco}",
                                  style: TextStyle(
                                      fontSize: 19,
                                      fontWeight: FontWeight.w600,
                                      fontFamily: "Lato"
                                  ),
                                ),

                                Text(
                                    plancharChaleco
                                )

                              ],
                            ),
                          ) : Column(children: <Widget>[],),
                          widget.cancanes >= 1 ? Container(
                            margin: EdgeInsets.only(left: 20, right: 20),
                            child: Row(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: <Widget>[
                                Text(
                                  "Cancanes: ${widget.cancanes}",
                                  style: TextStyle(
                                      fontSize: 19,
                                      fontWeight: FontWeight.w600,
                                      fontFamily: "Lato"
                                  ),
                                ),

                                Text(
                                    plancharCancanes
                                )

                              ],
                            ),
                          ) : Column(children: <Widget>[],),
                          widget.campera >= 1 ? Container(
                            margin: EdgeInsets.only(left: 20, right: 20),
                            child: Row(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: <Widget>[
                                Text(
                                  "Camperas: ${widget.campera}",
                                  style: TextStyle(
                                      fontSize: 19,
                                      fontWeight: FontWeight.w600,
                                      fontFamily: "Lato"
                                  ),
                                ),

                                Text(
                                    plancharCampera
                                )

                              ],
                            ),
                          ) : Column(children: <Widget>[],),
                          widget.camperaAlg >= 1 ? Container(
                            margin: EdgeInsets.only(left: 20, right: 20),
                            child: Row(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: <Widget>[
                                Text(
                                  "Camperas de Algodón: ${widget.camperaAlg}",
                                  style: TextStyle(
                                      fontSize: 19,
                                      fontWeight: FontWeight.w600,
                                      fontFamily: "Lato"
                                  ),
                                ),

                                Text(
                                    plancharCamperaAlg
                                )

                              ],
                            ),
                          ) : Column(children: <Widget>[],),
                          widget.calza >= 1 ? Container(
                            margin: EdgeInsets.only(left: 20, right: 20),
                            child: Row(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: <Widget>[
                                Text(
                                  "Calzas: ${widget.calza}",
                                  style: TextStyle(
                                      fontSize: 19,
                                      fontWeight: FontWeight.w600,
                                      fontFamily: "Lato"
                                  ),
                                ),

                                Text(
                                    plancharCalza
                                )

                              ],
                            ),
                          ) : Column(children: <Widget>[],),
                          widget.camisa >= 1 ? Container(
                            margin: EdgeInsets.only(left: 20, right: 20),
                            child: Row(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: <Widget>[
                                Text(
                                  "Camisas: ${widget.camisa}",
                                  style: TextStyle(
                                      fontSize: 19,
                                      fontWeight: FontWeight.w600,
                                      fontFamily: "Lato"
                                  ),
                                ),

                                Text(
                                    plancharCamisa
                                )

                              ],
                            ),
                          ) : Column(children: <Widget>[],),
                          widget.falda >= 1 ? Container(
                            margin: EdgeInsets.only(left: 20, right: 20),
                            child: Row(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: <Widget>[
                                Text(
                                  "Faldas: ${widget.falda}",
                                  style: TextStyle(
                                      fontSize: 19,
                                      fontWeight: FontWeight.w600,
                                      fontFamily: "Lato"
                                  ),
                                ),

                                Text(
                                    plancharFalda
                                )

                              ],
                            ),
                          ) : Column(children: <Widget>[],),
                          widget.guantes >= 1 ? Container(
                            margin: EdgeInsets.only(left: 20, right: 20),
                            child: Row(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: <Widget>[
                                Text(
                                  "Guantes: ${widget.guantes}",
                                  style: TextStyle(
                                      fontSize: 19,
                                      fontWeight: FontWeight.w600,
                                      fontFamily: "Lato"
                                  ),
                                ),

                                Text(
                                    plancharGuantes
                                )

                              ],
                            ),
                          ) : Column(children: <Widget>[],),
                          widget.interior >= 1 ? Container(
                            margin: EdgeInsets.only(left: 20, right: 20),
                            child: Row(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: <Widget>[
                                Text(
                                  "Ropa interior: ${widget.interior}",
                                  style: TextStyle(
                                      fontSize: 19,
                                      fontWeight: FontWeight.w600,
                                      fontFamily: "Lato"
                                  ),
                                ),

                                Text(
                                    plancharInterior
                                )

                              ],
                            ),
                          ) : Column(children: <Widget>[],),
                          widget.jeans >= 1 ? Container(
                            margin: EdgeInsets.only(left: 20, right: 20),
                            child: Row(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: <Widget>[
                                Text(
                                  "Jeans: ${widget.jeans}",
                                  style: TextStyle(
                                      fontSize: 19,
                                      fontWeight: FontWeight.w600,
                                      fontFamily: "Lato"
                                  ),
                                ),

                                Text(
                                    plancharJeans
                                )

                              ],
                            ),
                          ) : Column(children: <Widget>[],),
                          widget.jersey >= 1 ? Container(
                            margin: EdgeInsets.only(left: 20, right: 20),
                            child: Row(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: <Widget>[
                                Text(
                                  "Jersey: ${widget.jersey}",
                                  style: TextStyle(
                                      fontSize: 19,
                                      fontWeight: FontWeight.w600,
                                      fontFamily: "Lato"
                                  ),
                                ),

                                Text(
                                    plancharJersey
                                )

                              ],
                            ),
                          ) : Column(children: <Widget>[],),
                          widget.medias >= 1 ? Container(
                            margin: EdgeInsets.only(left: 20, right: 20),
                            child: Row(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: <Widget>[
                                Text(
                                  "Pares de medias: ${widget.medias}",
                                  style: TextStyle(
                                      fontSize: 19,
                                      fontWeight: FontWeight.w600,
                                      fontFamily: "Lato"
                                  ),
                                ),

                                Text(
                                    plancharMedias
                                )

                              ],
                            ),
                          ) : Column(children: <Widget>[],),
                          widget.pantalonAlg >= 1 ? Container(
                            margin: EdgeInsets.only(left: 20, right: 20),
                            child: Row(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: <Widget>[
                                Text(
                                  "Pantalones de Algodón: ${widget.pantalonAlg}",
                                  style: TextStyle(
                                      fontSize: 19,
                                      fontWeight: FontWeight.w600,
                                      fontFamily: "Lato"
                                  ),
                                ),

                                Text(
                                    plancharPantalonAlg
                                )

                              ],
                            ),
                          ) : Column(children: <Widget>[],),
                          widget.pantalonVestir >= 1 ? Container(
                            margin: EdgeInsets.only(left: 20, right: 20),
                            child: Row(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: <Widget>[
                                Text(
                                  "Pantalónes de vestir: ${widget.pantalonVestir}",
                                  style: TextStyle(
                                      fontSize: 19,
                                      fontWeight: FontWeight.w600,
                                      fontFamily: "Lato"
                                  ),
                                ),

                                Text(
                                    plancharPantalonVestir
                                )

                              ],
                            ),
                          ) : Column(children: <Widget>[],),
                          widget.pollera >= 1 ? Container(
                            margin: EdgeInsets.only(left: 20, right: 20),
                            child: Row(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: <Widget>[
                                Text(
                                  "Polleras: ${widget.pollera}",
                                  style: TextStyle(
                                      fontSize: 19,
                                      fontWeight: FontWeight.w600,
                                      fontFamily: "Lato"
                                  ),
                                ),

                                Text(
                                    plancharPollera
                                )

                              ],
                            ),
                          ) : Column(children: <Widget>[],),
                          widget.remeraSport >= 1 ? Container(
                            margin: EdgeInsets.only(left: 20, right: 20),
                            child: Row(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: <Widget>[
                                Text(
                                  "Remeras depotivas: ${widget.remeraSport}",
                                  style: TextStyle(
                                      fontSize: 19,
                                      fontWeight: FontWeight.w600,
                                      fontFamily: "Lato"
                                  ),
                                ),

                                Text(
                                    plancharRemeraSport
                                )

                              ],
                            ),
                          ) : Column(children: <Widget>[],),
                          widget.sabanas >= 1 ? Container(
                            margin: EdgeInsets.only(left: 20, right: 20),
                            child: Row(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: <Widget>[
                                Text(
                                  "Sabanas: ${widget.sabanas}",
                                  style: TextStyle(
                                      fontSize: 19,
                                      fontWeight: FontWeight.w600,
                                      fontFamily: "Lato"
                                  ),
                                ),

                                Text(
                                    plancharSabanas
                                )

                              ],
                            ),
                          ) : Column(children: <Widget>[],),
                          widget.shorts >= 1 ? Container(
                            margin: EdgeInsets.only(left: 20, right: 20),
                            child: Row(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: <Widget>[
                                Text(
                                  "Shorts: ${widget.shorts}",
                                  style: TextStyle(
                                      fontSize: 19,
                                      fontWeight: FontWeight.w600,
                                      fontFamily: "Lato"
                                  ),
                                ),

                                Text(
                                    plancharShorts
                                )

                              ],
                            ),
                          ) : Column(children: <Widget>[],),
                          widget.sweater >= 1 ? Container(
                            margin: EdgeInsets.only(left: 20, right: 20),
                            child: Row(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: <Widget>[
                                Text(
                                  "Sweater: ${widget.sweater}",
                                  style: TextStyle(
                                      fontSize: 19,
                                      fontWeight: FontWeight.w600,
                                      fontFamily: "Lato"
                                  ),
                                ),

                                Text(
                                    plancharSweater
                                )

                              ],
                            ),
                          ) : Column(children: <Widget>[],),
                          widget.toallas >= 1 ? Container(
                            margin: EdgeInsets.only(left: 20, right: 20),
                            child: Row(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: <Widget>[
                                Text(
                                  "Toallas: ${widget.toallas}",
                                  style: TextStyle(
                                      fontSize: 19,
                                      fontWeight: FontWeight.w600,
                                      fontFamily: "Lato"
                                  ),
                                ),

                                Text(
                                    plancharToallas
                                )

                              ],
                            ),
                          ) : Column(children: <Widget>[],),
                          widget.top >= 1 ? Container(
                            margin: EdgeInsets.only(left: 20, right: 20),
                            child: Row(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: <Widget>[
                                Text(
                                  "Tops: ${widget.top}",
                                  style: TextStyle(
                                      fontSize: 19,
                                      fontWeight: FontWeight.w600,
                                      fontFamily: "Lato"
                                  ),
                                ),

                                Text(
                                    plancharTop
                                )

                              ],
                            ),
                          ) : Column(children: <Widget>[],),
                          widget.trajeBano >= 1 ? Container(
                            margin: EdgeInsets.only(left: 20, right: 20),
                            child: Row(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: <Widget>[
                                Text(
                                  "Trajes de baño: ${widget.trajeBano}",
                                  style: TextStyle(
                                      fontSize: 19,
                                      fontWeight: FontWeight.w600,
                                      fontFamily: "Lato"
                                  ),
                                ),

                                Text(
                                    plancharTrajeBano
                                )

                              ],
                            ),
                          ) : Column(children: <Widget>[],),
                          widget.uniforme >= 1 ? Container(
                            margin: EdgeInsets.only(left: 20, right: 20),
                            child: Row(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: <Widget>[
                                Text(
                                  "Uniformes: ${widget.uniforme}",
                                  style: TextStyle(
                                      fontSize: 19,
                                      fontWeight: FontWeight.w600,
                                      fontFamily: "Lato"
                                  ),
                                ),

                                Text(
                                    plancharUniforme
                                )

                              ],
                            ),
                          ) : Column(children: <Widget>[],),
                          widget.zapatillas >= 1 ? Container(
                            margin: EdgeInsets.only(left: 20, right: 20),
                            child: Row(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: <Widget>[
                                Text(
                                  "Zapatillas: ${widget.zapatillas}",
                                  style: TextStyle(
                                      fontSize: 19,
                                      fontWeight: FontWeight.w600,
                                      fontFamily: "Lato"
                                  ),
                                ),

                                Text(
                                    ""
                                )

                              ],
                            ),
                          ) : Column(children: <Widget>[],),
                        ],
                      ),
                    ),

                  ],
                ),
             
              ],
            ),
          );
        }else{
          return CircularProgressIndicator();
        }
      },
    );
  }
}

