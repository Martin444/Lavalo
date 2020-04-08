import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:generic_bloc_provider/generic_bloc_provider.dart';
import 'package:lavalo/Orders/Models/orders.dart';
import 'package:lavalo/Orders/Screens/success.dart';
import 'package:lavalo/Orders/widgets/text_input_location.dart';
import 'package:lavalo/User/Bloc/user_bloc.dart';
import 'package:lavalo/User/Models/user.dart';

import 'package:lavalo/Widgets/gradient_back.dart';
import 'package:lavalo/Widgets/button_purple.dart';
import 'package:lavalo/Widgets/text_input.dart';
import 'package:lavalo/Widgets/title_header_white.dart';
import 'package:mercado_pago/mercado_pago.dart';

import 'package:intl/intl.dart';

  enum SingingTarget { visa, mastercard }
// ignore: must_be_immutable
class DeliveryScreen extends StatefulWidget {

  UserBloc userBloc;
  User user;

  int Total;
  final int remera;
  bool plancharRemera;
  final int jeans;
  bool plancharJeans;
  final int medias;
  bool plancharMedias;
  final int interior;
  bool plancharInterior;
  final int shorts;
  bool plancharShorts;
  final int buzo;
  bool plancharBuzo;
  final int sweater;
  bool plancharSweater;
  final int pantalonAlg;
  bool plancharPantalonAlg;
  final int chomba;
  bool plancharChomba;
  final int pantalonVestir;
  bool plancharPantalonVestir;
  final int camisa;
  bool plancharCamisa;
  final int calza;
  bool plancharCalza;
  final int corpino;
  bool plancharCorpino;
  final int camperaAlg;
  bool plancharCamperaAlg;
  final int remeraSport;
  bool plancharRemeraSport;
  final int Campera;
  bool plancharCampera;
  final int jersey;
  bool plancharJersey;
  final int pollera;
  bool plancharPollera;
  final int vestido;
  bool plancharVestido;
  final int uniforme;
  bool plancharUniforme;
  final int trajeBano;
  bool plancharTrajeBano;
  final int bufanda;
  bool plancharBufanda;
  final int guantes;
  bool plancharGuantes;
  final int chaleco;
  bool plancharChaleco;
  final int campera;
  final int falda;
  bool plancharFalda;
  final int top;
  bool plancharTop;
  final int body;
  bool plancharBody;
  final int cancanes;
  bool plancharCancanes;
  final int toallas;
  bool plancharToallas;
  final int blusa;
  bool plancharBlusa;
  final int zapatillas;
  final int sabanas;
  bool plancharSabanas;

  bool Type;

  String userPayID = "";
  String emailUser = "";
  String idUser = "";
  String cardTok = "";


  DeliveryScreen({ Key key, this.Type, this.Total, this.remera, this.plancharRemera, this.jeans, this.plancharJeans, this.medias, this.plancharMedias,
  this.interior, this.plancharInterior, this.shorts, this.plancharShorts, this.buzo, this.plancharBuzo, this.sweater, this.plancharSweater,
  this.pantalonAlg, this.plancharPantalonAlg, this.chomba, this.plancharChomba, this.pantalonVestir, this.plancharPantalonVestir,
  this.camisa, this.plancharCamisa, this.calza,this.campera, this.corpino, this.plancharCorpino, this.camperaAlg, this.plancharCamperaAlg, this.jersey,
  this.plancharJersey, this.pollera, this.plancharPollera, this.vestido, this.plancharVestido, this.uniforme, this.plancharUniforme,
  this.trajeBano, this.plancharTrajeBano, this.bufanda, this.plancharBufanda, this.guantes, this.plancharGuantes, this.chaleco, this.plancharChaleco,
  this.falda, this.plancharFalda, this.top, this.plancharTop, this.body, this.plancharBody, this.cancanes, this.plancharCancanes,
  this.toallas, this.plancharToallas, this.blusa, this.plancharBlusa, this.Campera, this.plancharCampera, this.zapatillas, this.sabanas, this.plancharSabanas,
  this.plancharCalza, this.remeraSport, this.plancharRemeraSport});

  @override
  _DeliveryScreenState createState() => _DeliveryScreenState();
}

class _DeliveryScreenState extends State<DeliveryScreen> {

  final format = DateFormat("dd/mm/yyyy");
  final  timeFormat = DateFormat('hh:mm');
  String _controllerBarrioOrder ;
  final _controllerDescriptionPlace = new TextEditingController();
  final _controllerLocationOrder = TextEditingController();
  final _controllerNumbreCard = new TextEditingController();
  final _controllerDateCard = new TextEditingController();
  int _controllerMonthCard;
  final _controllerCodeCard = new TextEditingController();
  final _controllerDocumentNumber = new TextEditingController();
  final _controllerPhoneNumber = new TextEditingController();
  String pressButon = "Confirmar";


  final credentials = MercadoCredentials( publicKey: 'APP_USR-b94e8b02-f5ae-4cf0-9a59-5f676114bd41',
      accessToken: 'APP_USR-3790764958797973-121000-a0d3e66457e06880479819887fe2ca07-85842006');


  DateTime selectedDate = DateTime.now();
  DateTime selectedFinalDate = DateTime.now();
  TimeOfDay selectedHours = TimeOfDay.now();
  String _selectedPayment = "";

  SingingTarget _target = SingingTarget.visa;


  @override
  Widget build(BuildContext context) {

    UserBloc userBloc = BlocProvider.of<UserBloc>(context);
    final GlobalKey<ScaffoldState> _scaffoldKey = new GlobalKey<ScaffoldState>();

    final GlobalKey<ScaffoldState> _scaffoldKeyAlert = new GlobalKey<ScaffoldState>();
    final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
    _showSnackBar() {
      print("Hola son");
      final snackBar = new SnackBar(content: new Text("Todos los campos son obligatorios"));

      _scaffoldKey.currentState.showSnackBar(snackBar);
    }

     _showSnackBarAlert(text) {
      print("Hola son");
      final snackBar = new SnackBar(content: new Text(text));

      _scaffoldKeyAlert.currentState.showSnackBar(snackBar);
    }

    createAlertDialogTarget(BuildContext context){
      return showDialog(
          context: context,
          builder: (BuildContext context){
            return Scaffold(
              key: _scaffoldKeyAlert,
              body: AlertDialog(
                title: Text("Datos de tu tarjeta"),
                content: Container(
                  decoration: BoxDecoration(
                    color: Colors.white,
                    shape: BoxShape.rectangle,
                    // color: const Color(0xFFFFFF),
                    borderRadius: new BorderRadius.all(new Radius.circular(32.0)),
                  ),
                  alignment: Alignment.bottomCenter,
                  child: ListView(  
                    children:<Widget>[
                      Column(
                        children: <Widget>[

                          RadioListTile<SingingTarget>(
                              title: const Text('Visa'),
                              value: SingingTarget.visa,
                              groupValue: _target,
                              onChanged: (SingingTarget value) {
                                setState(() {
                                  _target = value;
                                });
                              },
                            ),

                          RadioListTile<SingingTarget>(
                              title: const Text('MasterCard'),
                              value: SingingTarget.mastercard,
                              groupValue: _target,
                              onChanged: (SingingTarget value) {
                                setState(() {
                                  _target = value;
                                });
                              },
                            ),

                          Container(
                            width: MediaQuery.of(context).size.width * 2,
                            margin: EdgeInsets.only(bottom: 10),
                            child: TextInput(
                              hintText: "Número de tarjeta",
                              inputType: TextInputType.number,
                              controller: _controllerNumbreCard,
                            ),
                          ),
                          Container(
                            width: MediaQuery.of(context).size.width * 2,
                            margin: EdgeInsets.only(bottom: 10),
                            child: TextInput(
                              hintText: "Año de expiración Ej: 2020",
                              inputType: TextInputType.number,
                              controller: _controllerDateCard,
                            ),
                          ),

                          Container(
                            width: MediaQuery.of(context).size.width * 8,
                            margin: EdgeInsets.only(bottom: 10),
                            child: new DropdownButton<int>(
                                value: _controllerMonthCard == null ? null : _controllerMonthCard,
                                hint: Container(
                                  alignment: Alignment.center,
                                  padding: EdgeInsets.only(top: 20, left: 20),
                                  height: MediaQuery.of(context).size.height / 11,
                                  width: MediaQuery.of(context).size.width / 2,
                                  child: Text("Mes de expiración",
                                    style: TextStyle(
                                      fontSize: 15.0,
                                      fontFamily: "Lato",
                                      color: Colors.blueGrey,
                                      fontWeight: FontWeight.bold,
                                    ),),
                                ),
                                items:<int>[1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12].map<DropdownMenuItem<int>>((int value) {
                                  return DropdownMenuItem<int>(
                                    value: value,
                                    child: Text(
                                      value.toString(),
                                      style: TextStyle(
                                          fontSize: 15.0,
                                          fontFamily: "Lato",
                                          color: Colors.blueGrey,
                                          fontWeight: FontWeight.bold
                                      ),
                                    ),
                                  );
                                }).toList(),
                                onChanged:( value) {
                                  setState(() {
                                    _controllerMonthCard = value;
                                  });
                                }

                            ),
                          ),

                          Container(
                            width: MediaQuery.of(context).size.width * 2,
                            margin: EdgeInsets.only(bottom: 20),
                            child: TextInput(
                              hintText: "CVV",
                              inputType: TextInputType.number,
                              controller: _controllerCodeCard,
                            ),
                          ),

                          Container(
                            width: MediaQuery.of(context).size.width * 2,
                            margin: EdgeInsets.only(bottom: 20),
                            child: TextInput(
                              hintText: "Número de Documento",
                              inputType: TextInputType.number,
                              controller: _controllerDocumentNumber,
                            ),
                          ),



                          Text("Retirar: ${DateFormat("dd/MM/yyyy HH:mm").format(selectedDate)}"),
                          Text("Servicio:${widget.Total}"),
                          Text("Costo de envio: 35 Pesos"),
                          Text("Total:${widget.Total +35} Pesos"),
                        ],
                      ),
                    ],
                  ),
                ),
                actions: <Widget>[
                  MaterialButton(
                    elevation: 0.0,
                    child: Text(
                        "Cancelar"
                    ),
                    onPressed: (){
                      Navigator.pop(context);
                    },
                  ),
                  MaterialButton(
                    elevation: 7.0,
                    child: Text(
                       pressButon
                    ),
                    onPressed: () async{
                        
                 _showSnackBarAlert("Estamos procesando tus datos");
                    await  MercadoPago(credentials).newCard(
                        name: 'Lavalo',
                        code: _controllerCodeCard.text,
                        year: _controllerDateCard.text,
                        month: _controllerMonthCard,
                        card: _controllerNumbreCard.text,
                        docNumber: _controllerDocumentNumber.text,
                        docType: 'DNI').then((responseObject) {
                      print("token => ${responseObject.data}");
                      if(responseObject.data['id'] != null){
                        MercadoPago(credentials).createPayment(
                            total: widget.Total.toDouble(),
                            cardToken:responseObject.data['id'],
                            description: _controllerDescriptionPlace.text,
                            paymentMethod: 'visa',
                            userId: widget.userPayID,
                            email: widget.emailUser
                        ).catchError((e) =>{
                          _showSnackBarAlert("Error: ${e}")
                        })
                        .then((responseObject) {
                          print("payment => ${responseObject.data['status']}");
                          var payStatus = responseObject.data['status'];
                          if(payStatus == 'approved'){
                            userBloc.updateOrderDate(Order(
                                            cantidadRemera : widget.remera,
                                            plancharRemeta : widget.plancharRemera,
                                            cantidadJeans : widget.jeans,
                                            plancharJeans : widget.plancharJeans,
                                            cantidadMedias : widget.medias,
                                            plancharMedias : widget.plancharMedias,
                                            cantidadInterior : widget.interior,
                                            plancharInterior : widget.plancharInterior,
                                            cantidadShorst : widget.shorts,
                                            plancharShorts : widget.plancharShorts,
                                            cantidadBuzo : widget.buzo,
                                            plancharBuzo : widget.plancharBuzo,
                                            cantidadSweater : widget.sweater,
                                            plancharSweater : widget.plancharSweater,
                                            cantidadPantalonAlg : widget.pantalonAlg,
                                            plancharPantalonAlg : widget.plancharPantalonAlg,
                                            cantidadChomba : widget.chomba,
                                            plancharChomba : widget.plancharChomba,
                                            cantidadPantalonVestir : widget.pantalonVestir,
                                            plancharPantalonVestir : widget.plancharPantalonVestir,
                                            cantidadCamisa : widget.camisa,
                                            plancharCamisa : widget.plancharCamisa,
                                            cantidadCalza : widget.calza,
                                            plancharCalza : widget.plancharCalza,
                                            cantidadCorpino : widget.corpino,
                                            plancharCorpino : widget.plancharCorpino,
                                            cantidadCamperaAlg : widget.camperaAlg,
                                            plancharCamperaAlg : widget.plancharCamperaAlg,
                                            cantidadRemeraSport : widget.remeraSport,
                                            plancharRemeraSport : widget.plancharRemeraSport,
                                            cantidadCampera : widget.Campera,
                                            plancharCampera : widget.plancharCampera,
                                            cantidadJersey : widget.jersey,
                                            plancharJersey : widget.plancharJersey,
                                            cantidadPollera : widget.pollera,
                                            plancharPollera : widget.plancharPollera,
                                            cantidadVestido : widget.vestido,
                                            plancharVestido : widget.plancharVestido,
                                            cantidadUniforme : widget.uniforme,
                                            plancharUniforme : widget.plancharUniforme,
                                            cantidadTrajeBano : widget.trajeBano,
                                            plancharTrajeBano : widget.plancharTrajeBano,
                                            cantidadBufanda : widget.bufanda,
                                            plancharBufanda : widget.plancharBufanda,
                                            cantidadGuantes : widget.guantes,
                                            plancharGuantes : widget.plancharGuantes,
                                            cantidadChaleco : widget.chaleco,
                                            plancharChaleco : widget.plancharChaleco,
                                            cantidadFalda : widget.falda,
                                            plancharFalda : widget.plancharFalda,
                                            cantidadTop : widget.top,
                                            plancharTop : widget.plancharTop,
                                            cantidadBody : widget.body,
                                            plancharBody : widget.plancharBody,
                                            cantidadCancanes : widget.cancanes,
                                            plancharCancanes : widget.plancharCancanes,
                                            cantidadToallas : widget.toallas,
                                            plancharToallas : widget.plancharToallas,
                                            cantidadBlusa : widget.blusa,
                                            plancharBlusa : widget.plancharBlusa,
                                            cantidadZapatilla : widget.zapatillas,
                                            cantidadSabanas : widget.sabanas,
                                            plancharSabanas : widget.plancharSabanas,
                                            priceTotal: widget.Total + 35,
                                            type: widget.Type ? "Lavado" : "Planchado",
                                            state: "En proceso",
                                            typePayment: _selectedPayment,
                                            recolectionStart: selectedDate,
                                            finalDelivery: selectedFinalDate,
                                            description: _controllerDescriptionPlace.text,
                                            neighborhood: _controllerBarrioOrder,
                                            direction: _controllerLocationOrder.text,
                                            numberPhone: _controllerPhoneNumber.text,
                                          )).whenComplete(() {
                                            print("TERMINO");
                                          });
                            Navigator.pop(context);
                            Navigator.push(context,
                                new MaterialPageRoute(
                                    builder: (BuildContext context) =>
                                    new SuccessScreen()
                                )
                            );
                          }
                        });
                        
                        Firestore.instance.collection('users').document(widget.idUser).updateData({'cardToken': responseObject.data['id']});
                      }else{
                        print("No se puede ejecutar esta accion");
                        _showSnackBarAlert("Verifica los datos de tu tarjeta y vuelve a intentar");
                      }
                    });
                      },
                  )
                ],
              ),
            );
          }
          );
    }

    createAlertDialog(BuildContext context){
      return showDialog(
          context: context,
          builder: (context){
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



            return AlertDialog(
              title: Text("Total: ${widget.Total + 35}"),
              content: ListView(
                children:<Widget>[
                  Column(
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
                                      fontSize: 16,
                                      fontFamily: "Lato"
                                  ),
                                ),

                                Text(
                                    plancharRemerita

                                )

                              ],
                            ),
                          ) : Column(children: <Widget>[],),

                            widget.blusa >= 1 ? Container(
                            margin: EdgeInsets.only(left: 20, right: 20),
                            child: Row(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: <Widget>[
                                Text(
                                  "Blusas: ${widget.blusa}",
                                  style: TextStyle(
                                      fontSize: 16,
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
                                      fontSize: 16,
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
                                      fontSize: 16,
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
                                      fontSize: 16,
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
                                      fontSize: 16,
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
                                      fontSize: 16,
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
                                      fontSize: 16,
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
                                      fontSize: 16,
                                      fontFamily: "Lato"
                                  ),
                                ),

                                Text(
                                    plancharCancanes
                                )

                              ],
                            ),
                          ) : Column(children: <Widget>[],),
                          widget.campera != null ? Container(
                            margin: EdgeInsets.only(left: 20, right: 20),
                            child: Row(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: <Widget>[
                                Text(
                                  "Camperas: ${widget.campera}",
                                  style: TextStyle(
                                      fontSize: 16,
                                      fontFamily: "Lato"
                                  ),
                                ),

                                Text(
                                    plancharCampera
                                )

                              ],
                            ),
                          ) : Column(children: <Widget>[],),

                          widget.camperaAlg >= 1 ?
                            Container(
                            margin: EdgeInsets.only(left: 20, right: 20),
                            child: Row(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: <Widget>[
                                Text(
                                  "Camperas de Algodón: ${widget.camperaAlg}",
                                  style: TextStyle(
                                      fontSize: 16,
                                      
                                      fontFamily: "Lato"
                                  ),
                                ),

                                Text(
                                    plancharCamperaAlg
                                )

                              ],
                            ),
                          )
                          : widget.camperaAlg == null ?
                             Column(children: <Widget>[],)
                          :  Column(children: <Widget>[],),

                             
                          widget.calza >= 1 ? Container(
                            margin: EdgeInsets.only(left: 20, right: 20),
                            child: Row(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: <Widget>[
                                Text(
                                  "Calzas: ${widget.calza}",
                                  style: TextStyle(
                                      fontSize: 16,
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
                                      fontSize: 16,
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
                                     fontSize: 16,
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
                                      fontSize: 16,
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
                                      fontSize: 16,
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
                                      fontSize: 16,
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
                                      fontSize: 16,
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
                                      fontSize: 16,
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
                                      fontSize: 16,
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
                                      fontSize: 16,
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
                                      fontSize: 16,
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
                                      fontSize: 16,
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
                                      fontSize: 16,
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
                                      fontSize: 16,
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
                                      fontSize: 16,
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
                                      fontSize: 16,
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
                                      fontSize: 16,
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
                                      fontSize: 16,
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
                                      fontSize: 16,
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
                                      fontSize: 16,
                                      fontFamily: "Lato"
                                  ),
                                ),

                                Text(
                                    ""
                                )

                              ],
                            ),
                          ) : widget.zapatillas >= 1 ?
                           Column(children: <Widget>[],)
                           : Column(children: <Widget>[],),


                      Text("Retirar: ${DateFormat("dd/MM/yyyy HH:mm").format(selectedDate)}"),
                      Text("Servicio:${widget.Total}"),
                      Text("Costo de envio: 35 Pesos"),
                      Text("Total:${widget.Total +35} Pesos"),
                    ],
                  ),
                ],
              ),
              actions: <Widget>[
                MaterialButton(
                  elevation: 0.0,
                  child: Text(
                      "Confirmar"
                  ),
                  onPressed: (){
                    Navigator.pop(context);
                    userBloc.updateOrderDate(Order(
                        cantidadRemera : widget.remera,
                        plancharRemeta : widget.plancharRemera,
                        cantidadJeans : widget.jeans,
                        plancharJeans : widget.plancharJeans,
                        cantidadMedias : widget.medias,
                        plancharMedias : widget.plancharMedias,
                        cantidadInterior : widget.interior,
                        plancharInterior : widget.plancharInterior,
                        cantidadShorst : widget.shorts,
                        plancharShorts : widget.plancharShorts,
                        cantidadBuzo : widget.buzo,
                        plancharBuzo : widget.plancharBuzo,
                        cantidadSweater : widget.sweater,
                        plancharSweater : widget.plancharSweater,
                        cantidadPantalonAlg : widget.pantalonAlg,
                        plancharPantalonAlg : widget.plancharPantalonAlg,
                        cantidadChomba : widget.chomba,
                        plancharChomba : widget.plancharChomba,
                        cantidadPantalonVestir : widget.pantalonVestir,
                        plancharPantalonVestir : widget.plancharPantalonVestir,
                        cantidadCamisa : widget.camisa,
                        plancharCamisa : widget.plancharCamisa,
                        cantidadCalza : widget.calza,
                        plancharCalza : widget.plancharCalza,
                        cantidadCorpino : widget.corpino,
                        plancharCorpino : widget.plancharCorpino,
                        cantidadCamperaAlg : widget.camperaAlg,
                        plancharCamperaAlg : widget.plancharCamperaAlg,
                        cantidadRemeraSport : widget.remeraSport,
                        plancharRemeraSport : widget.plancharRemeraSport,
                        cantidadCampera : widget.Campera,
                        plancharCampera : widget.plancharCampera,
                        cantidadJersey : widget.jersey,
                        plancharJersey : widget.plancharJersey,
                        cantidadPollera : widget.pollera,
                        plancharPollera : widget.plancharPollera,
                        cantidadVestido : widget.vestido,
                        plancharVestido : widget.plancharVestido,
                        cantidadUniforme : widget.uniforme,
                        plancharUniforme : widget.plancharUniforme,
                        cantidadTrajeBano : widget.trajeBano,
                        plancharTrajeBano : widget.plancharTrajeBano,
                        cantidadBufanda : widget.bufanda,
                        plancharBufanda : widget.plancharBufanda,
                        cantidadGuantes : widget.guantes,
                        plancharGuantes : widget.plancharGuantes,
                        cantidadChaleco : widget.chaleco,
                        plancharChaleco : widget.plancharChaleco,
                        cantidadFalda : widget.falda,
                        plancharFalda : widget.plancharFalda,
                        cantidadTop : widget.top,
                        plancharTop : widget.plancharTop,
                        cantidadBody : widget.body,
                        plancharBody : widget.plancharBody,
                        cantidadCancanes : widget.cancanes,
                        plancharCancanes : widget.plancharCancanes,
                        cantidadToallas : widget.toallas,
                        plancharToallas : widget.plancharToallas,
                        cantidadBlusa : widget.blusa,
                        plancharBlusa : widget.plancharBlusa,
                        cantidadZapatilla : widget.Type ? widget.zapatillas : 0,
                        cantidadSabanas : widget.sabanas,
                        plancharSabanas : widget.plancharSabanas,
                        priceTotal: widget.Total + 35,
                        type: widget.Type ? "Lavado" : "Planchado",
                        state: "En proceso",
                        typePayment: _selectedPayment,
                        recolectionStart: selectedDate,
                        finalDelivery: selectedFinalDate,
                        description: _controllerDescriptionPlace.text,
                        neighborhood: _controllerBarrioOrder,
                        direction: _controllerLocationOrder.text, 
                        numberPhone: _controllerPhoneNumber.text,
                      )).whenComplete(() {
                        print("TERMINO");
                        Navigator.pop(context);
                        Navigator.push(context,
                          new MaterialPageRoute(
                            builder: (BuildContext context) =>
                                new SuccessScreen()
                          )
                          );
                      });
                  },
                )
              ],
            );
          }
      );
    }

    return StreamBuilder(
      stream: Firestore.instance.collection('users').snapshots(),
      builder: (BuildContext context, AsyncSnapshot<QuerySnapshot> snapshot){
        AsyncSnapshot user = snapshot;

        if(snapshot.hasData){

          user.data.documents.forEach((f){
              widget.userPayID = f['userPayID'];
              widget.idUser = f['uid'];
              widget.cardTok = f['cardToken'];
              widget.emailUser = f['email'];
          });

          return Scaffold(
            key: _scaffoldKey,
            body: Stack(
              children: <Widget>[
                GradientBack(height: 300),
                Row(
                  children: <Widget>[
                    Flexible(
                      child: Container(
                        padding: EdgeInsets.only(top: 38.0, left: 55.0, right: 10.0),
                        child: TitleHeader(title: "Detalles del pedido:"),
                      ),
                    ),
                  ],
                ),

                Form(
                  key: _formKey,
                  child: ListView(
                    children: <Widget>[
                      Container(
                          height: 120,
                          padding: EdgeInsets.only(left: 20, right: 20),
                          margin: EdgeInsets.only(top: 50.0, bottom: 20.0),
                          child:Column(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: <Widget>[
                              Text(
                                "¿Cuándo quieres que retiremos tus prendas? ",
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 20,
                                ),
                              ),
                              InkWell(
                                child: Container(
                                  alignment: Alignment.center,
                                  width: 140,
                                  height: 40,
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(15.0),
                                      gradient: LinearGradient(
                                          colors: [
                                            Color(0xFF1cbb78),//arriba
                                            Color(0xFF1cbb78)//abajo
                                          ],
                                          begin: FractionalOffset(0.2, 0.0),
                                          end: FractionalOffset(1.0, 0.6),
                                          stops: [0.0, 0.6],
                                          tileMode: TileMode.clamp
                                      )
                                  ),
                                  child: Text(
                                    DateFormat('dd-MM-yyyy / HH:mm').format(selectedDate),
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 15,
                                    ),
                                  ),
                                ),
                                onTap: () async{
                                  final selectedDate = await _selectedDateTime(context);
                                  if(selectedDate == null) return;

                                  final selectedTime = await _selectTime(context);
                                  if(selectedTime == null) return;
                                  setState(() {
                                    this.selectedDate = DateTime(
                                        selectedDate.year,
                                        selectedDate.month,
                                        selectedDate.day,
                                        selectedTime.hour,
                                        selectedTime.minute
                                    );
                                    this.selectedHours = selectedTime;
                                  });

                                },
                              ),
                            ],
                          )

                      ),
                      
                      // Container(
                      //     padding: EdgeInsets.only(left: 20, right: 20),
                      //     margin: EdgeInsets.only( bottom: 50.0),
                      //     child:Row(
                      //       crossAxisAlignment: CrossAxisAlignment.center,
                      //       mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      //       children: <Widget>[
                      //         Text(
                      //           "Fecha de entrega",
                      //           style: TextStyle(
                      //             color: Colors.white,
                      //             fontSize: 18,

                      //           ),
                      //         ),
                      //         InkWell(
                      //           child: Container(
                      //             alignment: Alignment.center,
                      //             width: 140,
                      //             height: 40,
                      //             decoration: BoxDecoration(
                      //                 borderRadius: BorderRadius.circular(15.0),
                      //                 gradient: LinearGradient(
                      //                     colors: [
                      //                       Color(0xFF1cbb78),//arriba
                      //                       Color(0xFF1cbb78)//abajo
                      //                     ],
                      //                     begin: FractionalOffset(0.2, 0.0),
                      //                     end: FractionalOffset(1.0, 0.6),
                      //                     stops: [0.0, 0.6],
                      //                     tileMode: TileMode.clamp
                      //                 )
                      //             ),
                      //             child: Text(
                      //               DateFormat('dd-MM-yyyy / HH:mm').format(selectedFinalDate),
                      //               style: TextStyle(
                      //                 color: Colors.white,
                      //                 fontSize: 15,
                      //               ),
                      //             ),
                      //           ),
                      //           onTap: () async{
                      //             final selectedDate = await _selectedDateTime(context);
                      //             if(selectedDate == null) return;


                      //             final selectedTime = await _selectTime(context);
                      //             if(selectedTime == null) return;
                      //             setState(() {
                      //               this.selectedFinalDate = DateTime(
                      //                   selectedDate.year,
                      //                   selectedDate.month,
                      //                   selectedDate.day,
                      //                   selectedTime.hour,
                      //                   selectedTime.minute
                      //               ).add(Duration(days: 1) );
                      //               this.selectedHours = selectedTime;
                      //             });

                      //           },
                      //         ),
                      //       ],
                      //     )

                      // ),

                      TextInput(
                        hintText: "Agrega aquí cualquier información, detalles o cuidado que necesiten tus prendas",
                        inputType: TextInputType.multiline,
                        maxLines: 4,
                        controller: _controllerDescriptionPlace,
                      ),

                      Container(
                        padding: EdgeInsets.only(left: 10.0, right: 10.0),
                        margin: EdgeInsets.only(top: 20.0 ,left: 20.0, right: 20.0),
                        decoration: BoxDecoration(
                            color: Color(0xFFFFFFFF),
                            borderRadius: BorderRadius.all(Radius.circular(9.0)),
                            boxShadow: <BoxShadow>[
                              BoxShadow(
                                  color: Colors.black12,
                                  blurRadius: 15.0,
                                  offset: Offset(0.0, 7.0)
                              )
                            ]
                        ),

                        child: new DropdownButton<String>(
                            value: _controllerBarrioOrder == null ? null : _controllerBarrioOrder,
                            icon: Icon(Icons.location_city),
                            hint: Container(
                              padding: EdgeInsets.only(top: 25),
                              margin: EdgeInsets.only(right: 5),
                              height: MediaQuery.of(context).size.height / 11,
                              width: MediaQuery.of(context).size.width / 1.35,
                              child: Text("¿De qué barrio eres?",
                                style: TextStyle(
                                  fontSize: 15.0,
                                  fontFamily: "Lato",
                                  color: Colors.blueGrey,
                                  fontWeight: FontWeight.bold,
                                ),),
                            ),
                            items:<String>['Palermo', 'Colegiales','La Plata', 'Recoleta', 'Retiro', 'Belgrano', 'Balvanera', 'San Nicolás', 'Monserrat', 'Pto Madero', 'Almagro', 'Villa Crespo'].map<DropdownMenuItem<String>>((String value) {
                              return DropdownMenuItem<String>(
                                value: value,
                                child: Text(
                                  value,
                                  style: TextStyle(
                                      fontSize: 15.0,
                                      fontFamily: "Lato",
                                      color: Colors.blueGrey,
                                      fontWeight: FontWeight.bold
                                  ),
                                ),
                              );
                            }).toList(),
                            onChanged:(String value) {
                              setState(() {
                                _controllerBarrioOrder = value;
                              });
                            }

                        ),
                      ),
                      Container(
                        margin: EdgeInsets.only(top: 20.0),
                        child: TextInputLocation(
                            controller: _controllerLocationOrder ,
                            hintText: "Calle",
                            iconData: Icons.location_on),
                      ),

                      Container(
                        margin: EdgeInsets.only(top: 20.0),
                        child: TextInputLocation(
                            controller: _controllerPhoneNumber,
                            hintText: "Número de teléfono",
                            iconData: Icons.phone),
                      ),

                      Container(

                        child: ButtonPurple(
                          buttonText: "Siguiente",
                          onPressed: (){

                            if(_controllerPhoneNumber.text.length >= 1 && _controllerLocationOrder.text.length >= 1 ){
                            showModalBottomSheet(
                                backgroundColor: Colors.transparent,
                                context: context,
                                builder:(context){
                                  return Container(
                                    height: 150,
                                    child: Column(
                                      children: <Widget>[
                                        Container(
                                          margin: EdgeInsets.only(top: 10),
                                          child: Center(
                                            child: Text(
                                              "Pagar con",
                                              style: TextStyle(
                                                fontSize: 18,
                                                fontWeight: FontWeight.bold,
                                              ),
                                            ),
                                          ),
                                        ),

                                        ListTile(
                                          leading: Icon(Icons.payment),
                                          title: Text("Tarjeta de Crédito o Débito"),
                                          onTap: (){
                                            Navigator.pop(context);
                                            setState(() {
                                              this._selectedPayment = "Tarjeta";
                                            });


                                              createAlertDialogTarget(context);



                                          },
                                        ),

                                        ListTile(
                                          leading: Icon(Icons.monetization_on),
                                          title: Text("Efectivo"),
                                          onTap: (){
                                            Navigator.pop(context);
                                            setState(() {
                                              this._selectedPayment = "Efectivo";
                                            });

                                            createAlertDialog(context);
                                          },
                                        ),
                                      ],
                                    ),
                                    decoration: BoxDecoration(
                                        color: Theme.of(context).canvasColor,
                                        borderRadius: BorderRadius.only(
                                            topLeft: const Radius.circular(20),
                                            topRight: const Radius.circular(80)
                                        )
                                    ),
                                  );
                                }
                            );
                            }else{
                              _showSnackBar();
                            }
                          },
                        ),
                      ),
                    ],
                  ),
                ),


                Container(
                  padding: EdgeInsets.only(top: 22),
                  child: SizedBox(
                    height: 45.0,
                    width: 45.0,
                    child: IconButton(
                      icon: Icon(Icons.keyboard_arrow_left, color: Colors.white, size: 45),
                      onPressed: (){
                        Navigator.pop(context);
                      },
                    ),
                  ),
                ),
              ],
            ),
          );
        }
        else{
          return Scaffold(
            body: Container(
              height: 0.0,
              width: 0.0,
              child: Text("Error"),
            ),
          );
        }

      },
    );


  }

  Future<TimeOfDay> _selectTime(BuildContext context){
    final now = DateTime.now();

    return showTimePicker(
      context: context,
      initialTime: TimeOfDay(hour: now.hour, minute: now.minute),
    );
  }

  Future<DateTime> _selectedDateTime(BuildContext context) => showDatePicker(
      context: context,
      initialDate: DateTime.now().add(Duration(seconds: 1)),
      firstDate: DateTime.now(),
      lastDate: DateTime(2030),
  );
}