import 'package:flutter/material.dart';
import 'package:lavalo/Orders/widgets/bar_top.dart';
import 'package:lavalo/Orders/widgets/button_next.dart';
import 'package:lavalo/Orders/widgets/range_action_iron.dart';
import 'package:lavalo/Orders/widgets/total_order.dart';

import 'delivery.dart';

// ignore: must_be_immutable
class AddOrderIron extends StatefulWidget {

  String userPayID;

  AddOrderIron({this.userPayID});

  double _duelremera = 0.0;

  double _duelJeans = 0.0;

  double _duelMedias = 0.0;

  double _duelInterior = 0.0;

  double _duelShorts = 0.0;

  double _duelBuzo = 0.0;

  double _duelSweater = 0.0;

  double _duelPantalon = 0.0;

  double _duelChombas = 0.0;

  double _duelVestir = 0.0;

  double _duelCamisa = 0.0;

  double _duelCalza = 0.0;

  double _duelCorpino = 0.0;

  double _duelCampera = 0.0;

  double _duelRdeportiva = 0.0;

  double _duelScampera = 0.0;

  double _duelJersey = 0.0;

  double _duelPollera = 0.0;

  double _duelVestido = 0.0;

  double _duelUniforme = 0.0;

  double _duelTrajeBano = 0.0;

  double _duelBufanda = 0.0;

  double _duelGuantes = 0.0;

  double _duelChaleco = 0.0;

  double _duelFalda = 0.0;

  double _duelTop = 0.0;

  double _duelBody = 0.0;

  double _duelCancanes = 0.0;

  double _duelToallas = 0.0;

  double _duelBlusa = 0.0;

  double _duelSabanas = 0.0;

  // ignore: non_constant_identifier_names
  double _Total = 0.0;

  bool type = false;

  @override
  _AddOrderIronState createState() => _AddOrderIronState();
}

class _AddOrderIronState extends State<AddOrderIron> {
  @override
  Widget build(BuildContext context) {

    final titleAction = Container(
      alignment: Alignment.bottomLeft,
      margin: EdgeInsets.only(
          top: 60,
          left: 30,
          bottom: 12
      ),
      child: Text(
        "Selecciona tus prendas:",
        style: TextStyle(
            fontWeight: FontWeight.w300,
            fontSize: 18
        ),
      ),
    );


    return Scaffold(
      body: Container(
        child: Stack(
          children: <Widget>[
            ListView(
              children: <Widget>[
                titleAction,
                Column(
                  children: <Widget>[
                    RangeActionIron(
                        titleRange: "Remeras",
                        value: widget._duelremera,
                        onChangedEnd: (double newValor){
                          setState(() {
                            widget._duelremera = newValor.toDouble();
                          });
                        }),
                    RangeActionIron(
                        titleRange: "Jeans",
                        value: widget._duelJeans,
                        onChangedEnd: (double newValor){
                          setState(() {
                            widget._duelJeans = newValor.toDouble();
                          });
                        }),
                    RangeActionIron(
                        titleRange: "Pares de Medias",
                        value: widget._duelMedias,
                        onChangedEnd: (double newValor){
                          setState(() {
                            widget._duelMedias = newValor.toDouble();
                          });
                        }),
                    RangeActionIron(
                        titleRange: "Ropa Interior",
                        value: widget._duelInterior,
                        onChangedEnd: (double newValor){
                          setState(() {
                            widget._duelInterior = newValor.toDouble();
                          });
                        }),
                    RangeActionIron(
                        titleRange: "Shorts",
                        value: widget._duelShorts,
                        onChangedEnd: (double newValor){
                          setState(() {
                            widget._duelShorts = newValor.toDouble();
                          });
                        }),
                    RangeActionIron(
                        titleRange: "Buzo algodón",
                        value: widget._duelBuzo,
                        onChangedEnd: (double newValor){
                          setState(() {
                            widget._duelBuzo = newValor.toDouble();
                          });
                        }),
                    RangeActionIron(
                        titleRange: "Sweater",
                        value: widget._duelSweater,
                        onChangedEnd: (double newValor){
                          setState(() {
                            widget._duelSweater = newValor.toDouble();
                          });
                        }),
                    RangeActionIron(
                        titleRange: "Pantalón algodón",
                        value: widget._duelPantalon,
                        onChangedEnd: (double newValor){
                          setState(() {
                            widget._duelPantalon = newValor.toDouble();
                          });
                        }),
                    RangeActionIron(
                        titleRange: "Chombas",
                        value: widget._duelChombas,
                        onChangedEnd: (double newValor){
                          setState(() {
                            widget._duelChombas = newValor.toDouble();
                          });
                        }),
                    RangeActionIron(
                        titleRange: "Pantalon de vestir",
                        value: widget._duelVestir,
                        onChangedEnd: (double newValor){
                          setState(() {
                            widget._duelVestir = newValor.toDouble();
                          });
                        }),
                    RangeActionIron(
                        titleRange: "Camisas",
                        value: widget._duelCamisa,
                        onChangedEnd: (double newValor){
                          setState(() {
                            widget._duelCamisa = newValor.toDouble();
                          });
                        }),
                    RangeActionIron(
                        titleRange: "Calza",
                        value: widget._duelCalza,
                        onChangedEnd: (double newValor){
                          setState(() {
                            widget._duelCalza = newValor.toDouble();
                          });
                        }),
                    RangeActionIron(
                        titleRange: "Corpiño",
                        value: widget._duelCorpino,
                        onChangedEnd: (double newValor){
                          setState(() {
                            widget._duelCorpino = newValor.toDouble();
                          });
                        }),
                    RangeActionIron(
                        titleRange: "Campera algodón",
                        value: widget._duelCampera,
                        onChangedEnd: (double newValor){
                          setState(() {
                            widget._duelCampera = newValor.toDouble();
                          });
                        }),
                    RangeActionIron(
                        titleRange: "Remera deportiva",
                        value: widget._duelRdeportiva,
                        onChangedEnd: (double newValor){
                          setState(() {
                            widget._duelRdeportiva = newValor.toDouble();
                          });
                        }),
                    RangeActionIron(
                        titleRange: "Campera",
                        value: widget._duelScampera,
                        onChangedEnd: (double newValor){
                          setState(() {
                            widget._duelScampera = newValor.toDouble();
                          });
                        }),
                    RangeActionIron(
                        titleRange: "Jersey",
                        value: widget._duelJersey,
                        onChangedEnd: (double newValor){
                          setState(() {
                            widget._duelJersey = newValor.toDouble();
                          });
                        }),
                    RangeActionIron(
                        titleRange: "Pollera",
                        value: widget._duelPollera,
                        onChangedEnd: (double newValor){
                          setState(() {
                            widget._duelPollera = newValor.toDouble();
                          });
                        }),
                    RangeActionIron(
                        titleRange: "Vestido",
                        value: widget._duelVestido,
                        onChangedEnd: (double newValor){
                          setState(() {
                            widget._duelVestido = newValor.toDouble();
                          });
                        }),
                    RangeActionIron(
                        titleRange: "Uniforme",
                        value: widget._duelUniforme,
                        onChangedEnd: (double newValor){
                          setState(() {
                            widget._duelUniforme = newValor.toDouble();
                          });
                        }),
                    RangeActionIron(
                        titleRange: "Traje de baño",
                        value: widget._duelTrajeBano,
                        onChangedEnd: (double newValor){
                          setState(() {
                            widget._duelTrajeBano = newValor.toDouble();
                          });
                        }),
                    RangeActionIron(
                        titleRange: "Bufanda",
                        value: widget._duelBufanda,
                        onChangedEnd: (double newValor){
                          setState(() {
                            widget._duelBufanda = newValor.toDouble();
                          });
                        }),
                    RangeActionIron(
                        titleRange: "Guantes",
                        value: widget._duelGuantes,
                        onChangedEnd: (double newValor){
                          setState(() {
                            widget._duelGuantes = newValor.toDouble();
                          });
                        }),
                    RangeActionIron(
                        titleRange: "Chaleco",
                        value: widget._duelChaleco,
                        onChangedEnd: (double newValor){
                          setState(() {
                            widget._duelChaleco = newValor.toDouble();
                          });
                        }),
                    RangeActionIron(
                        titleRange: "Falda",
                        value: widget._duelFalda,
                        onChangedEnd: (double newValor){
                          setState(() {
                            widget._duelFalda = newValor.toDouble();
                          });
                        }),
                    RangeActionIron(
                        titleRange: "Top",
                        value: widget._duelTop,
                        onChangedEnd: (double newValor){
                          setState(() {
                            widget._duelTop = newValor.toDouble();
                          });
                        }),
                    RangeActionIron(
                        titleRange: "Body/Enterito",
                        value: widget._duelBody,
                        onChangedEnd: (double newValor){
                          setState(() {
                            widget._duelBody = newValor.toDouble();
                          });
                        }),
                    RangeActionIron(
                        titleRange: "Cancanes",
                        value: widget._duelCancanes,
                        onChangedEnd: (double newValor){
                          setState(() {
                            widget._duelCancanes = newValor.toDouble();
                          });
                        }),
                    RangeActionIron(
                        titleRange: "Toallas",
                        value: widget._duelToallas,
                        onChangedEnd: (double newValor){
                          setState(() {
                            widget._duelToallas = newValor.toDouble();
                          });
                        }),
                    RangeActionIron(
                        titleRange: "Blusa",
                        value: widget._duelBlusa,
                        onChangedEnd: (double newValor){
                          setState(() {
                            widget._duelBlusa = newValor.toDouble();
                          });
                        }),
                    RangeActionIron(
                        titleRange: "Sábanas",
                        value: widget._duelSabanas,
                        onChangedEnd: (double newValor){
                          setState(() {
                            widget._duelSabanas = newValor.toDouble();
                          });
                        }),
                  ],
                )
              ],
            ),
            BarTop("Planchar"),
            AnimatedContainer(
              padding: EdgeInsets.only(
                top: widget._Total > 20 ? 0 : 1000,
              ),
              duration: Duration(seconds: 2),

              child: Stack(
                children: <Widget>[
                  TotalOrder(
                    total: widget._Total = widget._duelJeans * 8.0 + widget._duelremera * 3.0
                        + widget._duelMedias * 2.0 + widget._duelInterior * 3.0 + widget._duelShorts * 7.0 + widget._duelBuzo * 8.0
                        + widget._duelSweater * 8.0 + widget._duelPantalon * 8.0 + widget._duelChombas * 4.0 + widget._duelVestir * 8.0
                        + widget._duelCamisa * 6.0 + widget._duelCalza * 5.0 + widget._duelCorpino * 4.0 + widget._duelCampera * 8.0
                        + widget._duelRdeportiva * 3.0 + widget._duelScampera * 18.0 + widget._duelJersey * 18.0 + widget._duelPollera * 7.0
                        + widget._duelVestido * 18.0 + widget._duelUniforme * 18.0 + widget._duelTrajeBano * 6.0 + widget._duelBufanda * 7.0
                        + widget._duelGuantes * 6.0 + widget._duelChaleco * 15.0 + widget._duelFalda * 7.0 + widget._duelTop * 3.0
                        + widget._duelBody * 8.0 + widget._duelCancanes * 3.0 + widget._duelToallas * 6.0 + widget._duelBlusa * 5.0
                         + widget._duelSabanas * 60.0
                  ),
                  FloatNext(
                    onChanged: (){
                      Navigator.pop(context);
                      Navigator.push(context,
                          new MaterialPageRoute(
                              builder: (BuildContext context) =>
                              new DeliveryScreen(
                                Type: widget.type,
                                Total: widget._Total.toInt(),
                                remera: widget._duelremera.toInt(),

                                jeans: widget._duelJeans.toInt(),

                                medias: widget._duelMedias.toInt(),

                                interior: widget._duelInterior.toInt(),

                                shorts: widget._duelShorts.toInt(),

                                buzo: widget._duelBuzo.toInt(),

                                sweater: widget._duelSweater.toInt(),

                                pantalonAlg: widget._duelPantalon.toInt(),

                                chomba: widget._duelChombas.toInt(),

                                pantalonVestir: widget._duelVestir.toInt(),

                                camisa: widget._duelCamisa.toInt(),

                                calza: widget._duelCalza.toInt(),

                                corpino: widget._duelCorpino.toInt(),

                                camperaAlg: widget._duelCampera.toInt(),

                                remeraSport: widget._duelRdeportiva.toInt(),

                                Campera: widget._duelScampera.toInt(),

                                jersey: widget._duelJersey.toInt(),

                                pollera: widget._duelPollera.toInt(),

                                vestido: widget._duelVestido.toInt(),

                                uniforme: widget._duelUniforme.toInt(),

                                trajeBano: widget._duelTrajeBano.toInt(),

                                bufanda: widget._duelBufanda.toInt(),

                                guantes: widget._duelGuantes.toInt(),

                                chaleco: widget._duelChaleco.toInt(),

                                falda: widget._duelFalda.toInt(),

                                top: widget._duelTop.toInt(),

                                body: widget._duelBody.toInt(),

                                cancanes: widget._duelCancanes.toInt(),

                                toallas: widget._duelToallas.toInt(),

                                blusa: widget._duelBlusa.toInt(), 

                                zapatillas: 0,

                                sabanas: widget._duelSabanas.toInt(),
                              )
                          )
                      );


                    },
                  ),
                ],
              ),
            )
          ],

        ),
      ),
    );
  }
}
