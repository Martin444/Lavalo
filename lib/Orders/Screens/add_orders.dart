import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:lavalo/Orders/Screens/delivery.dart';
import 'package:lavalo/Orders/widgets/bar_top.dart';
import 'package:lavalo/Orders/widgets/button_next.dart';
import 'package:lavalo/Orders/widgets/range_action.dart';
import 'package:lavalo/Orders/widgets/total_order.dart';

// ignore: must_be_immutable
class AddOrders extends StatefulWidget {

  String userPayID;

  AddOrders({this.userPayID});


  double _duelRemera = 0.0;
  bool _isPlancharRemera = false;
  // ignore: non_constant_identifier_names
  double _PlancharRemeraPrice = 0.0;
  double _duelJeans = 0.0;
  bool _isPlancharJeans = false;
  double _PlancharJeansPrice = 0.0;
  double _duelMedias = 0.0;
  bool _isPlancharMedias = false;
  double _PlancharMediasPrice = 0.0;
  double _duelInterior = 0.0;
  bool _isPlancharInterior = false;
  double _PlancharInteriorPrice = 0.0;
  double _duelShorts = 0.0;
  bool _isPlancharShorts = false;
  double _PlancharShortsPrice = 0.0;
  double _duelBuzo = 0.0;
  bool _isPlancharBuzo = false;
  double _PlancharBuzoPrice = 0.0;
  double _duelSweater = 0.0;
  bool _isPlancharSweater = false;
  double _PlancharSweaterPrice = 0.0;
  double _duelPantalon = 0.0;
  bool _isPlancharPantalon = false;
  double _PlancharPantalonPrice = 0.0;
  double _duelChombas = 0.0;
  bool _isPlancharChomba = false;
  double _PlancharChombaPrice = 0.0;
  double _duelVestir = 0.0;
  bool _isPlancharVestir = false;
  double _PlancharVestirPrice = 0.0;
  double _duelCamisa = 0.0;
  bool _isPlancharCamisa = false;
  double _PlancharCamisaPrice = 0.0;
  double _duelCalza = 0.0;
  bool _isPlancharCalza = false;
  double _PlancharCalzaPrice = 0.0;
  double _duelCorpino = 0.0;
  bool _isPlancharCorpino = false;
  double _PlancharCorpinoPrice = 0.0;
  double _duelCampera = 0.0;
  bool _isPlancharCampera = false;
  double _PlancharCamperaPrice = 0.0;
  double _duelRdeportiva = 0.0;
  bool _isPlancharRdeportiva = false;
  double _PlancharRdeportivaPrice = 0.0;
  double _duelScampera = 0.0;
  bool _isPlancharScampera = false;
  double _PlancharScamperaPrice = 0.0;
  double _duelJersey = 0.0;
  bool _isPlancharJersey = false;
  double _PlancharJerseyPrice = 0.0;
  double _duelPollera = 0.0;
  bool _isPlancharPollera = false;
  double _PlancharPolleraPrice = 0.0;
  double _duelVestido = 0.0;
  bool _isPlancharVestido = false;
  double _PlancharVestidoPrice = 0.0;
  double _duelUniforme = 0.0;
  bool _isPlancharUniforme = false;
  double _PlancharUniformePrice = 0.0;
  double _duelTrajeBano = 0.0;
  bool _isPlancharTrajeBano = false;
  double _PlancharTrajeBanoPrice = 0.0;
  double _duelBufanda = 0.0;
  bool _isPlancharBufanda = false;
  double _PlancharBufandaPrice = 0.0;
  double _duelGuantes = 0.0;
  bool _isPlancharGuantes = false;
  double _PlancharGuantesPrice = 0.0;
  double _duelChaleco = 0.0;
  bool _isPlancharChaleco = false;
  double _PlancharChalecoPrice = 0.0;
  double _duelFalda = 0.0;
  bool _isPlancharFalda = false;
  double _PlancharFaldaPrice = 0.0;
  double _duelTop = 0.0;
  bool _isPlancharTop = false;
  double _PlancharTopPrice = 0.0;
  double _duelBody = 0.0;
  bool _isPlancharBody = false;
  double _PlancharBodyPrice = 0.0;
  double _duelCancanes = 0.0;
  bool _isPlancharCancanes = false;
  double _PlancharCancanesPrice = 0.0;
  double _duelToallas = 0.0;
  bool _isPlancharToallas = false;
  double _PlancharToallasPrice = 0.0;
  double _duelBlusa = 0.0;
  bool _isPlancharBlusa = false;
  double _PlancharBlusaPrice = 0.0;
  double _duelZapatillas = 0.0;
  bool _isPlancharZapatillas = false;
  double _PlancharZapatillasPrice = 0.0;
  double _duelSabanas = 0.0;
  bool _isPlancharSabanas = false;
  double _PlancharSabanasPrice = 0.0;
  double _Total = 0.0;
  bool type = true;


  @override
  _AddOrdersState createState() => _AddOrdersState();
}

class _AddOrdersState extends State<AddOrders> {
  @override
  Widget build(BuildContext context) {

    final titleAction = Container(
      alignment: Alignment.bottomLeft,
      margin: EdgeInsets.only(
        top: 60,
        left: 20,
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
                Stack(
                  children: <Widget>[
                    Container(
                      margin: EdgeInsets.only(
                        top: 15,
                        bottom: MediaQuery.of(context).size.height /9
                      ),
                      child: Column(
                        children: <Widget>[
                          RangeAction(
                            titleRange: "Remeras",
                            value: widget._duelRemera,
                            onChangedEnd: (double newValor){
                              setState(() {
                                widget._duelRemera = newValor.toDouble();
                              });
                            },

                            isPlanchar: widget._isPlancharRemera,
                            onPlanchar: (bool newValue){
                              setState(() {
                                widget._isPlancharRemera = newValue;
                              });

                              if(widget._isPlancharRemera == true){
                                widget._PlancharRemeraPrice = widget._duelRemera * 3.0;
                              }else{
                                widget._PlancharRemeraPrice = 0.0;
                              }

                            },
                          ),

                          RangeAction(
                            titleRange: "Jeans",
                            value: widget._duelJeans,
                            onChangedEnd: (double newValor){
                              setState(() {
                                widget._duelJeans = newValor.toDouble();

                              });
                            },

                            isPlanchar: widget._isPlancharJeans,
                            onPlanchar: (bool newValue){
                              setState(() {
                                widget._isPlancharJeans = newValue;
                              });

                              if(widget._isPlancharJeans){
                                widget._PlancharJeansPrice = widget._duelJeans * 8.0;
                              }else{
                                widget._PlancharJeansPrice = 0.0;
                              }

                            },
                          ),

                          RangeAction(
                            titleRange: "Pares de Medias",
                            value: widget._duelMedias,
                            onChangedEnd: (double newValor){
                              setState(() {
                                widget._duelMedias = newValor.toDouble();
                              });
                            },

                            isPlanchar: widget._isPlancharMedias,
                            onPlanchar: (bool newValue){
                              setState(() {
                                widget._isPlancharMedias = newValue;
                              });

                              if(widget._isPlancharMedias){
                                widget._PlancharMediasPrice = widget._duelMedias * 2.0;
                              }else{
                                widget._PlancharMediasPrice = 0.0;
                              }

                            },
                          ),

                          RangeAction(
                            titleRange: "Ropa Interior",
                            value: widget._duelInterior,
                            onChangedEnd: (double newValor){

                              setState(() {
                                widget._duelInterior = newValor.toDouble();
                              });

                            },

                            isPlanchar: widget._isPlancharInterior,
                            onPlanchar: (bool newValue){
                              setState(() {
                                widget._isPlancharInterior = newValue;
                              });

                              if(widget._isPlancharInterior){
                                widget._PlancharInteriorPrice = widget._duelInterior * 3.0;
                              }else{
                                widget._PlancharInteriorPrice = 0.0;
                              }

                            },
                          ),

                          RangeAction(
                            titleRange: "Shorts",
                            value: widget._duelShorts,
                            onChangedEnd: (double newValor){

                              setState(() {
                                widget._duelShorts = newValor.toDouble();
                              });

                            },

                            isPlanchar: widget._isPlancharShorts,
                            onPlanchar: (bool newValue){
                              setState(() {
                                widget._isPlancharShorts = newValue;
                              });

                              if(widget._isPlancharShorts){
                                widget._PlancharShortsPrice = widget._duelShorts *7.0;
                              }else{
                                widget._PlancharShortsPrice = 0.0;
                              }

                            },
                          ),

                          RangeAction(
                            titleRange: "Buzo algodón",
                            value: widget._duelBuzo,
                            onChangedEnd: (double newValor){

                              setState(() {
                                widget._duelBuzo = newValor.toDouble();
                              });

                            },

                            isPlanchar: widget._isPlancharBuzo,
                            onPlanchar: (bool newValue){
                              setState(() {
                                widget._isPlancharBuzo = newValue;
                              });

                              if(widget._isPlancharBuzo){
                                widget._PlancharBuzoPrice = widget._duelBuzo * 8.0;
                              }else{
                                widget._PlancharBuzoPrice = 0.0;
                              }

                            },
                          ),

                          RangeAction(
                            titleRange: "Sweater",
                            value: widget._duelSweater,
                            onChangedEnd: (double newValor){

                              setState(() {
                                widget._duelSweater = newValor.toDouble();
                              });

                            },

                            isPlanchar: widget._isPlancharSweater,
                            onPlanchar: (bool newValue){
                              setState(() {
                                widget._isPlancharSweater = newValue;
                              });

                              if(widget._isPlancharSweater){
                                widget._PlancharSweaterPrice = widget._duelSweater * 8.0;
                              }else {
                                widget._PlancharSweaterPrice = 0.0;
                              }

                            },
                          ),

                          RangeAction(
                            titleRange: "Pantalón algodón",
                            value: widget._duelPantalon,
                            onChangedEnd: (double newValor){

                              setState(() {
                                widget._duelPantalon = newValor.toDouble();
                              });

                            },

                            isPlanchar: widget._isPlancharPantalon,
                            onPlanchar: (bool newValue){
                              setState(() {
                                widget._isPlancharPantalon = newValue;
                              });

                              if(widget._isPlancharPantalon) {
                                widget._PlancharPantalonPrice = widget._duelPantalon * 8.0;
                              }else{
                                widget._PlancharPantalonPrice = 0.0;
                              }
                            }
                          ),

                          RangeAction(
                            titleRange: "Chombas",
                            value: widget._duelChombas,
                            onChangedEnd: (double newValor){

                              setState(() {
                                widget._duelChombas = newValor.toDouble();
                              });

                            },

                            isPlanchar: widget._isPlancharChomba,
                            onPlanchar: (bool newValue){
                              setState(() {
                                widget._isPlancharChomba = newValue;
                              });

                              if(widget._isPlancharChomba){
                                widget._PlancharChombaPrice = 4.0;
                              }

                            },
                          ),

                          RangeAction(
                            titleRange: "Pantalón de Vestir",
                            value: widget._duelVestir,
                            onChangedEnd: (double newValor){

                              setState(() {
                                widget._duelVestir = newValor.toDouble();
                              });

                            },

                            isPlanchar: widget._isPlancharVestir,
                            onPlanchar: (bool newValue){
                              setState(() {
                                widget._isPlancharVestir = newValue;
                              });

                              if(widget._isPlancharVestir){
                                widget._PlancharVestirPrice = widget._duelVestir * 8.0;
                              }else {
                                widget._PlancharVestirPrice = 0.0;
                              }

                            },
                          ),

                          RangeAction(
                            titleRange: "Camisas",
                            value: widget._duelCamisa,
                            onChangedEnd: (double newValor){

                              setState(() {
                                widget._duelCamisa = newValor.toDouble();
                              });

                            },

                            isPlanchar: widget._isPlancharCamisa,
                            onPlanchar: (bool newValue){
                              setState(() {
                                widget._isPlancharCamisa = newValue;
                              });

                              if(widget._isPlancharCamisa){
                                widget._PlancharCamisaPrice = widget._duelCamisa * 6.0;
                              }else{
                                widget._PlancharCamisaPrice = 0.0;
                              }

                            },
                          ),

                          RangeAction(
                            titleRange: "Calza",
                            value: widget._duelCalza,
                            onChangedEnd: (double newValor){

                              setState(() {
                                widget._duelCalza = newValor.toDouble();
                              });

                            },

                            isPlanchar: widget._isPlancharCalza,
                            onPlanchar: (bool newValue){
                              setState(() {
                                widget._isPlancharCalza = newValue;
                              });

                              if(widget._isPlancharCalza){
                                widget._PlancharCalzaPrice = widget._duelCalza * 5.0;
                              }else{
                                widget._PlancharCalzaPrice = 0.0;
                              }

                            },
                          ),

                          RangeAction(
                            titleRange: "Corpiño",
                            value: widget._duelCorpino,
                            onChangedEnd: (double newValor){

                              setState(() {
                                widget._duelCorpino = newValor.toDouble();
                              });

                            },

                            isPlanchar: widget._isPlancharCorpino,
                            onPlanchar: (bool newValue){
                              setState(() {
                                widget._isPlancharCorpino = newValue;
                              });

                              if(widget._isPlancharCorpino){
                                widget._PlancharCorpinoPrice = widget._duelCorpino * 4.0;
                              }else{
                                widget._PlancharCorpinoPrice = 0.0;
                              }

                            },
                          ),

                          RangeAction(
                            titleRange: "Campera algodón",
                            value: widget._duelCampera,
                            onChangedEnd: (double newValor){

                              setState(() {
                                widget._duelCampera = newValor.toDouble();
                              });

                            },

                            isPlanchar: widget._isPlancharCampera,
                            onPlanchar: (bool newValue){
                              setState(() {
                                widget._isPlancharCampera = newValue;
                              });

                              if(widget._isPlancharCampera){
                                widget._PlancharCamperaPrice = widget._duelCampera * 3.0;
                              }else{
                                widget._PlancharCamperaPrice = 0.0;
                              }

                            },
                          ),

                          RangeAction(
                            titleRange: "Remera deportiva",
                            value: widget._duelRdeportiva,
                            onChangedEnd: (double newValor){

                              setState(() {
                                widget._duelRdeportiva = newValor.toDouble();
                              });

                            },

                            isPlanchar: widget._isPlancharRdeportiva,
                            onPlanchar: (bool newValue){
                              setState(() {
                                widget._isPlancharRdeportiva = newValue;
                              });

                              if(widget._isPlancharRdeportiva){
                                widget._PlancharRdeportivaPrice = widget._duelRdeportiva * 3.0;
                              }else{
                                widget._PlancharRdeportivaPrice = 0.0;
                              }

                            },
                          ),

                          RangeAction(
                            titleRange: "Campera",
                            value: widget._duelScampera,
                            onChangedEnd: (double newValor){

                              setState(() {
                                widget._duelScampera = newValor.toDouble();
                              });

                            },

                            isPlanchar: widget._isPlancharScampera,
                            onPlanchar: (bool newValue){
                              setState(() {
                                widget._isPlancharScampera = newValue;
                              });

                              if(widget._isPlancharScampera){
                                widget._PlancharScamperaPrice = widget._duelScampera * 18.0;
                              }else{
                                widget._PlancharScamperaPrice = 0.0;
                              }

                            },
                          ),

                          RangeAction(
                            titleRange: "Jersey",
                            value: widget._duelJersey,
                            onChangedEnd: (double newValor){

                              setState(() {
                                widget._duelJersey = newValor.toDouble();
                              });

                            },

                            isPlanchar: widget._isPlancharJersey,
                            onPlanchar: (bool newValue){
                              setState(() {
                                widget._isPlancharJersey = newValue;
                              });

                              if(widget._isPlancharJersey){
                                widget._PlancharJerseyPrice = widget._duelJersey * 18.0;
                              }else{
                                widget._PlancharJerseyPrice = 0.0;
                              }

                            },
                          ),

                          RangeAction(
                            titleRange: "Pollera",
                            value: widget._duelPollera,
                            onChangedEnd: (double newValor){

                              setState(() {
                                widget._duelPollera = newValor.toDouble();
                              });

                            },

                            isPlanchar: widget._isPlancharPollera,
                            onPlanchar: (bool newValue){
                              setState(() {
                                widget._isPlancharPollera = newValue;
                              });

                              if(widget._isPlancharPollera){
                                widget._PlancharPolleraPrice = widget._duelPollera * 7.0;
                              }else{
                                widget._PlancharPolleraPrice = 0.0;
                              }

                            },
                          ),

                          RangeAction(
                            titleRange: "Vestido",
                            value: widget._duelVestido,
                            onChangedEnd: (double newValor){

                              setState(() {
                                widget._duelVestido = newValor.toDouble();
                              });

                            },

                            isPlanchar: widget._isPlancharVestido,
                            onPlanchar: (bool newValue){
                              setState(() {
                                widget._isPlancharVestido = newValue;
                              });

                              if(widget._isPlancharVestido){
                                widget._PlancharVestidoPrice = widget._duelVestido * 18.0;
                              }else{
                                widget._PlancharVestidoPrice = 0.0;
                              }

                            },
                          ),

                          RangeAction(
                            titleRange: "Uniforme",
                            value: widget._duelUniforme,
                            onChangedEnd: (double newValor){

                              setState(() {
                                widget._duelUniforme = newValor.toDouble();
                              });

                            },

                            isPlanchar: widget._isPlancharUniforme,
                            onPlanchar: (bool newValue){
                              setState(() {
                                widget._isPlancharUniforme = newValue;
                              });

                              if(widget._isPlancharUniforme){
                                widget._PlancharUniformePrice = widget._duelUniforme * 18.0;
                              }else{
                                widget._PlancharUniformePrice = 0.0;
                              }

                            },
                          ),

                          RangeAction(
                            titleRange: "Traje de baño",
                            value: widget._duelTrajeBano,
                            onChangedEnd: (double newValor){

                              setState(() {
                                widget._duelTrajeBano = newValor.toDouble();
                              });

                            },

                            isPlanchar: widget._isPlancharTrajeBano,
                            onPlanchar: (bool newValue){
                              setState(() {
                                widget._isPlancharTrajeBano = newValue;
                              });

                              if(widget._isPlancharTrajeBano){
                                widget._PlancharTrajeBanoPrice = widget._duelTrajeBano * 6.0;
                              }else{
                                widget._PlancharTrajeBanoPrice = 0.0;
                              }

                            },
                          ),

                          RangeAction(
                            titleRange: "Bufanda",
                            value: widget._duelBufanda,
                            onChangedEnd: (double newValor){

                              setState(() {
                                widget._duelBufanda = newValor.toDouble();
                              });

                            },

                            isPlanchar: widget._isPlancharBufanda,
                            onPlanchar: (bool newValue){
                              setState(() {
                                widget._isPlancharBufanda = newValue;
                              });

                              if(widget._isPlancharBufanda){
                                widget._PlancharBufandaPrice = widget._duelBufanda * 7.0;
                              }else{
                                widget._PlancharBufandaPrice = 0.0;
                              }

                            },
                          ),

                          RangeAction(
                            titleRange: "Guantes",
                            value: widget._duelGuantes,
                            onChangedEnd: (double newValor){

                              setState(() {
                                widget._duelGuantes = newValor.toDouble();
                              });

                            },

                            isPlanchar: widget._isPlancharGuantes,
                            onPlanchar: (bool newValue){
                              setState(() {
                                widget._isPlancharGuantes = newValue;
                              });

                              if(widget._isPlancharGuantes){
                                widget._PlancharGuantesPrice = widget._duelGuantes * 6.0;
                              }else{
                                widget._PlancharGuantesPrice = 0.0;
                              }

                            },
                          ),

                          RangeAction(
                            titleRange: "Chaleco",
                            value: widget._duelChaleco,
                            onChangedEnd: (double newValor){

                              setState(() {
                                widget._duelChaleco = newValor.toDouble();
                              });

                            },

                            isPlanchar: widget._isPlancharChaleco,
                            onPlanchar: (bool newValue){
                              setState(() {
                                widget._isPlancharChaleco = newValue;
                              });

                              if(widget._isPlancharChaleco){
                                widget._PlancharChalecoPrice = widget._duelChaleco * 15.0;
                              }else{
                                widget._PlancharChalecoPrice = 0.0;
                              }

                            },
                          ),

                          RangeAction(
                            titleRange: "Falda",
                            value: widget._duelFalda,
                            onChangedEnd: (double newValor){

                              setState(() {
                                widget._duelFalda = newValor.toDouble();
                              });

                            },

                            isPlanchar: widget._isPlancharFalda,
                            onPlanchar: (bool newValue){
                              setState(() {
                                widget._isPlancharFalda = newValue;
                              });

                              if(widget._isPlancharFalda){
                                widget._PlancharFaldaPrice = widget._duelFalda * 7.0;
                              }else{
                                widget._PlancharFaldaPrice = 0.0;
                              }

                            },
                          ),

                          RangeAction(
                            titleRange: "Top",
                            value: widget._duelTop,
                            onChangedEnd: (double newValor){

                              setState(() {
                                widget._duelTop = newValor.toDouble();
                              });

                            },

                            isPlanchar: widget._isPlancharTop,
                            onPlanchar: (bool newValue){
                              setState(() {
                                widget._isPlancharTop = newValue;
                              });

                              if(widget._isPlancharTop){
                                widget._PlancharTopPrice = widget._duelTop * 3.0;
                              }else{
                                widget._PlancharTopPrice = 0.0;
                              }

                            },
                          ),

                          RangeAction(
                            titleRange: "Body/Enterito",
                            value: widget._duelBody,
                            onChangedEnd: (double newValor){

                              setState(() {
                                widget._duelBody = newValor.toDouble();
                              });

                            },

                            isPlanchar: widget._isPlancharBody,
                            onPlanchar: (bool newValue){
                              setState(() {
                                widget._isPlancharBody = newValue;
                              });

                              if(widget._isPlancharBody){
                                widget._PlancharBodyPrice = widget._duelBody * 8.0;
                              }else{
                                widget._PlancharBodyPrice = 0.0;
                              }

                            },
                          ),

                          RangeAction(
                            titleRange: "Cancanes",
                            value: widget._duelCancanes,
                            onChangedEnd: (double newValor){

                              setState(() {
                                widget._duelCancanes = newValor.toDouble();
                              });

                            },

                            isPlanchar: widget._isPlancharCancanes,
                            onPlanchar: (bool newValue){
                              setState(() {
                                widget._isPlancharCancanes = newValue;
                              });

                              if(widget._isPlancharCancanes){
                                widget._PlancharCancanesPrice = widget._duelCancanes * 3.0;
                              }else{
                                widget._PlancharCancanesPrice = 0.0;
                              }

                            },
                          ),

                          RangeAction(
                            titleRange: "Toallas",
                            value: widget._duelToallas,
                            onChangedEnd: (double newValor){

                              setState(() {
                                widget._duelToallas = newValor.toDouble();
                              });

                            },

                            isPlanchar: widget._isPlancharToallas,
                            onPlanchar: (bool newValue){
                              setState(() {
                                widget._isPlancharToallas = newValue;
                              });

                              if(widget._isPlancharToallas){
                                widget._PlancharToallasPrice = widget._duelToallas * 6.0;
                              }else{
                                widget._PlancharToallasPrice = 0.0;
                              }

                            },
                          ),

                          RangeAction(
                            titleRange: "Blusa",
                            value: widget._duelBlusa,
                            onChangedEnd: (double newValor){

                              setState(() {
                                widget._duelBlusa = newValor.toDouble();
                              });

                            },

                            isPlanchar: widget._isPlancharBlusa,
                            onPlanchar: (bool newValue){
                              setState(() {
                                widget._isPlancharBlusa = newValue;
                              });

                              if(widget._isPlancharBlusa){
                                widget._PlancharBlusaPrice = widget._duelBlusa * 5.0;
                              }else{
                                widget._PlancharBlusaPrice = 0.0;
                              }

                            },
                          ),

                          RangeAction(
                            titleRange: "Zapatillas",
                            value: widget._duelZapatillas,
                            onChangedEnd: (double newValor){

                              setState(() {
                                widget._duelZapatillas = newValor.toDouble();
                              });

                            },

                            isPlanchar: widget._isPlancharZapatillas,
                            onPlanchar: (bool newValue){
                              setState(() {
                                widget._isPlancharZapatillas = newValue;
                              });

                              if(widget._isPlancharZapatillas){
                                widget._PlancharZapatillasPrice = widget._duelZapatillas * 0.0;
                              }else{
                                widget._PlancharZapatillasPrice = 0.0;
                              }

                            },
                          ),

                          RangeAction(
                            titleRange: "Sábanas",
                            value: widget._duelSabanas,
                            onChangedEnd: (double newValor){

                              setState(() {
                                widget._duelSabanas = newValor.toDouble();
                              });

                            },

                            isPlanchar: widget._isPlancharSabanas,
                            onPlanchar: (bool newValue){
                              setState(() {
                                widget._isPlancharSabanas = newValue;
                              });

                              if(widget._isPlancharSabanas){
                                widget._PlancharSabanasPrice = widget._duelSabanas * 60.0;
                              }else{
                                widget._PlancharSabanasPrice = 0.0;
                              }

                            },
                          ),
                        ],
                      ),
                    )
                  ],
                )
              ],
            ),
            BarTop("Lavar"),
            AnimatedContainer(
              padding: EdgeInsets.only(
              top: widget._Total > 20 ? 0 : 1000,
              ),
              duration: Duration(seconds: 2),

              child: Stack(
                children: <Widget>[
                TotalOrder(
                  total: widget._Total = widget._duelJeans * 17.0 + widget._duelRemera * 6.0 + widget._PlancharRemeraPrice
                  + widget._duelMedias * 4.0 + widget._duelInterior * 5.0 + widget._duelShorts * 14.0 + widget._duelBuzo * 17.0
                  + widget._duelSweater * 17.0 + widget._duelPantalon * 17.0 + widget._duelChombas * 7.0 + widget._duelVestir * 17.0
                  + widget._duelCamisa * 11.0 + widget._duelCalza * 9.0 + widget._duelCorpino * 8.0 + widget._duelCampera * 17.0
                  + widget._duelRdeportiva * 6.0 + widget._duelScampera * 36.0 + widget._duelJersey * 36.0 + widget._duelPollera * 14.0
                  + widget._duelVestido * 36.0 + widget._duelUniforme * 36.0 + widget._duelTrajeBano * 12.0 + widget._duelBufanda * 13.0
                  + widget._duelGuantes * 11.0 + widget._duelChaleco * 31.0 + widget._duelFalda * 13.0 + widget._duelTop * 5.0
                  + widget._duelBody * 16.0 + widget._duelCancanes * 5.0 + widget._duelToallas * 13.0 + widget._duelBlusa * 10.0
                  + widget._duelZapatillas * 60.0 + widget._duelSabanas * 80.0 + widget._PlancharInteriorPrice + widget._PlancharJeansPrice
                  + widget._PlancharMediasPrice + widget._PlancharShortsPrice + widget._PlancharBuzoPrice + widget._PlancharSweaterPrice
                  + widget._PlancharPantalonPrice + widget._PlancharChombaPrice + widget._PlancharVestirPrice + widget._PlancharCamisaPrice
                  + widget._PlancharCalzaPrice + widget._PlancharCorpinoPrice + widget._PlancharCamperaPrice + widget._PlancharRdeportivaPrice
                  + widget._PlancharScamperaPrice + widget._PlancharJerseyPrice + widget._PlancharPolleraPrice + widget._PlancharVestidoPrice
                  + widget._PlancharUniformePrice + widget._PlancharTrajeBanoPrice + widget._PlancharBufandaPrice + widget._PlancharGuantesPrice
                  + widget._PlancharChalecoPrice + widget._PlancharFaldaPrice + widget._PlancharTopPrice + widget._PlancharBodyPrice
                  + widget._PlancharCancanesPrice + widget._PlancharToallasPrice + widget._PlancharBlusaPrice + widget._PlancharZapatillasPrice
                  + widget._PlancharSabanasPrice,
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
                                remera: widget._duelRemera.toInt(),
                                plancharRemera: widget._isPlancharRemera,
                              jeans: widget._duelJeans.toInt(),
                              plancharJeans: widget._isPlancharJeans,
                              medias: widget._duelMedias.toInt(),
                              plancharMedias: widget._isPlancharMedias,
                              interior: widget._duelInterior.toInt(),
                              plancharInterior: widget._isPlancharInterior,
                              shorts: widget._duelShorts.toInt(),
                              plancharShorts: widget._isPlancharShorts,
                              buzo: widget._duelBuzo.toInt(),
                              plancharBuzo: widget._isPlancharBuzo,
                              sweater: widget._duelSweater.toInt(),
                              plancharSweater: widget._isPlancharSweater,
                              pantalonAlg: widget._duelPantalon.toInt(),
                              plancharPantalonAlg: widget._isPlancharPantalon,
                              chomba: widget._duelChombas.toInt(),
                              plancharChomba: widget._isPlancharChomba,
                              pantalonVestir: widget._duelVestir.toInt(),
                              plancharPantalonVestir: widget._isPlancharVestir,
                              camisa: widget._duelCamisa.toInt(),
                              plancharCamisa: widget._isPlancharCamisa,
                              calza: widget._duelCalza.toInt(),
                              plancharCalza: widget._isPlancharCalza,
                              corpino: widget._duelCorpino.toInt(),
                              plancharCorpino: widget._isPlancharCorpino,
                              camperaAlg: widget._duelCampera.toInt(),
                              plancharCamperaAlg: widget._isPlancharCampera,
                              remeraSport: widget._duelRdeportiva.toInt(),
                              plancharRemeraSport: widget._isPlancharRdeportiva,
                              Campera: widget._duelScampera.toInt(),
                              plancharCampera: widget._isPlancharScampera,
                              jersey: widget._duelJersey.toInt(),
                              plancharJersey: widget._isPlancharJersey,
                              pollera: widget._duelPollera.toInt(),
                              plancharPollera: widget._isPlancharPollera,
                              vestido: widget._duelVestido.toInt(),
                              plancharVestido: widget._isPlancharVestido,
                              uniforme: widget._duelUniforme.toInt(),
                              plancharUniforme: widget._isPlancharUniforme,
                              trajeBano: widget._duelTrajeBano.toInt(),
                              plancharTrajeBano: widget._isPlancharTrajeBano,
                              bufanda: widget._duelBufanda.toInt(),
                              plancharBufanda: widget._isPlancharBufanda,
                              guantes: widget._duelGuantes.toInt(),
                              plancharGuantes: widget._isPlancharGuantes,
                              chaleco: widget._duelChaleco.toInt(),
                              plancharChaleco: widget._isPlancharChaleco,
                              falda: widget._duelFalda.toInt(),
                              plancharFalda: widget._isPlancharFalda,
                              top: widget._duelTop.toInt(),
                              plancharTop: widget._isPlancharTop,
                              body: widget._duelBody.toInt(),
                              plancharBody: widget._isPlancharBody,
                              cancanes: widget._duelCancanes.toInt(),
                              plancharCancanes: widget._isPlancharCancanes,
                              toallas: widget._duelToallas.toInt(),
                              plancharToallas: widget._isPlancharToallas,
                              blusa: widget._duelBlusa.toInt(),
                              plancharBlusa: widget._isPlancharBlusa,
                              zapatillas: widget._duelZapatillas.toInt(),

                              sabanas: widget._duelSabanas.toInt(),
                              plancharSabanas: widget._isPlancharSabanas,


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