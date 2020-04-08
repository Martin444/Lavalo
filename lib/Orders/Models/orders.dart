import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Order {
  num cantidadRemera;
  bool plancharRemeta;
  num cantidadJeans;
  bool plancharJeans;
  num cantidadMedias;
  bool plancharMedias;
  num cantidadInterior;
  bool plancharInterior;
  num cantidadShorst;
  bool plancharShorts;
  num cantidadBuzo;
  bool plancharBuzo;
  num cantidadSweater;
  bool plancharSweater;
  num cantidadPantalonAlg;
  bool plancharPantalonAlg;
  num cantidadChomba;
  bool plancharChomba;
  num cantidadPantalonVestir;
  bool plancharPantalonVestir;
  num cantidadCamisa;
  bool plancharCamisa;
  num cantidadCalza;
  bool plancharCalza;
  num cantidadCorpino;
  bool plancharCorpino;
  num cantidadCamperaAlg;
  bool plancharCamperaAlg;
  num cantidadRemeraSport;
  bool plancharRemeraSport;
  num cantidadCampera;
  bool plancharCampera;
  num cantidadJersey;
  bool plancharJersey;
  num cantidadPollera;
  bool plancharPollera;
  num cantidadVestido;
  bool plancharVestido;
  num cantidadUniforme;
  bool plancharUniforme;
  num cantidadTrajeBano;
  bool plancharTrajeBano;
  num cantidadBufanda;
  bool plancharBufanda;
  num cantidadGuantes;
  bool plancharGuantes;
  num cantidadChaleco;
  bool plancharChaleco;
  num cantidadFalda;
  bool plancharFalda;
  num cantidadTop;
  bool plancharTop;
  num cantidadBody;
  bool plancharBody;
  num cantidadCancanes;
  bool plancharCancanes;
  num cantidadToallas;
  bool plancharToallas;
  num cantidadBlusa;
  bool plancharBlusa;
  num cantidadZapatilla;
  num cantidadSabanas;
  bool plancharSabanas;
  num priceTotal;
  String type;
  String state;
  String description;
  String neighborhood;
  String typePayment;
  //User userOwner;
  String direction;
  DateTime recolectionStart;
  DateTime finalDelivery;
  Timestamp deliveryEnd;
  String numberPhone;


  Order({
    Key key,
    this.cantidadRemera,
    this.plancharRemeta,
    this.cantidadJeans,
    this.plancharJeans,
    this.cantidadMedias,
    this.plancharMedias,
    this.cantidadInterior,
    this.plancharInterior,
    this.cantidadShorst,
    this.plancharShorts,
    this.cantidadBuzo,
    this.plancharBuzo,
    this.cantidadSweater,
    this.plancharSweater,
    this.cantidadPantalonAlg,
    this.plancharPantalonAlg,
    this.cantidadChomba,
    this.plancharChomba,
    this.cantidadPantalonVestir,
    this.plancharPantalonVestir,
    this.cantidadCamisa,
    this.plancharCamisa,
    this.cantidadCalza,
    this.plancharCalza,
    this.cantidadCorpino,
    this.plancharCorpino,
    this.cantidadCamperaAlg,
    this.plancharCamperaAlg,
    this.cantidadRemeraSport,
    this.plancharRemeraSport,
    this.cantidadCampera,
    this.plancharCampera,
    this.cantidadJersey,
    this.plancharJersey,
    this.cantidadPollera,
    this.plancharPollera,
    this.cantidadVestido,
    this.plancharVestido,
    this.cantidadUniforme,
    this.plancharUniforme,
    this.cantidadTrajeBano,
    this.plancharTrajeBano,
    this.cantidadBufanda,
    this.plancharBufanda,
    this.cantidadGuantes,
    this.plancharGuantes,
    this.cantidadChaleco,
    this.plancharChaleco,
    this.cantidadFalda,
    this.plancharFalda,
    this.cantidadTop,
    this.plancharTop,
    this.cantidadBody,
    this.plancharBody,
    this.cantidadCancanes,
    this.plancharCancanes,
    this.cantidadToallas,
    this.plancharToallas,
    this.cantidadBlusa,
    this.plancharBlusa,
    this.cantidadZapatilla,
    this.cantidadSabanas,
    this.plancharSabanas,
    this.priceTotal,
    @required this.type,
    @required this.state,
    this.description,
    @required this.neighborhood,
    @required this.typePayment,
    //@required this.userOwner,
    @required this.direction,
    @required this.recolectionStart,
    @required this.finalDelivery,
    @required this.numberPhone
  });



}