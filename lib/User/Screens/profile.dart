import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:generic_bloc_provider/generic_bloc_provider.dart';
import 'package:lavalo/User/Bloc/user_bloc.dart';
import 'package:lavalo/User/Models/user.dart';
import 'package:lavalo/User/Screens/sign_in_screen.dart';
import 'package:lavalo/User/widgets/avatar.dart';
import 'package:lavalo/User/widgets/list_order.dart';
import 'package:lavalo/User/widgets/ads.dart';
import 'package:lavalo/User/widgets/bar_icons.dart';
import 'package:lavalo/User/widgets/buttons_orders.dart';
import 'package:lavalo/User/widgets/select_avatar.dart';
import 'package:lavalo/Widgets/button_green.dart';
import 'package:lavalo/Widgets/gradient_back.dart';
import 'package:mercado_pago/mercado_pago.dart';


// ignore: must_be_immutable
class Profile extends StatelessWidget {

  UserBloc userBloc;
  User user;
  String userPayID;

  String pathImage = "assets/img/avatar_male.gif";

  final credentials = MercadoCredentials( publicKey: 'APP_USR-b94e8b02-f5ae-4cf0-9a59-5f676114bd41',
      accessToken: 'APP_USR-3790764958797973-121000-a0d3e66457e06880479819887fe2ca07-85842006');



  @override
  Widget build(BuildContext context) {

    // TODO: implement build
    userBloc = BlocProvider.of<UserBloc>(context);

    return StreamBuilder(
      stream: FirebaseAuth.instance.onAuthStateChanged,
      builder: (BuildContext context, AsyncSnapshot snapshot) {
            if(!snapshot.hasData || snapshot.hasError){
                    print("No logeado");
                          return Scaffold(
                            body: Stack(
                                  children: <Widget>[
                                    GradientBack(),
                                    ListView(
                                      children: <Widget>[
                                        Text(
                                            "Usuario no logeado. Haz Login",
                                            style: TextStyle(
                                              fontSize: 21,
                                              fontWeight: FontWeight.bold
                                            ),
                                          ),

                                          ButtonGreen(
                                            text: "Volver a intentar",
                                            onPressed: (){
                                              Navigator.push(context,
                                                    new MaterialPageRoute(
                                                        builder: (BuildContext context) =>
                                                        new SignIn()
                                                    )
                                                );
                                            },
                                          )

                                      ],
                                    ),
                                  ],
                                ),
                          );
              }else{
                  var user = User(
                                  uid: snapshot.data.uid,
                                  name: snapshot.data.displayName,
                                  email: snapshot.data.email,
                                  photoURL: snapshot.data.photoUrl,
                                  //male: snapshot.data.male,
                              );

                            MercadoPago(credentials)
                                .newUser(
                                firstname: user.name,
                                lastName: 'Lavalo',
                                email: user.email)
                                .then((responseObject) {
                              print('user created with id =  ${responseObject.data} ');
                              var userPayIDInit;
                              userPayIDInit = responseObject.data['id'];
                                if(userPayIDInit != null){
                                  Firestore.instance.collection('users').document(user.uid).updateData({'userPayID': userPayIDInit});
                                }
                            }).catchError((err){
                              print("El usuario no se pudo registrar");
                            });
                    final name = Container(
                                  margin: EdgeInsets.only(
                                    bottom: 9,
                                    
                                  ),
                                  child: Text(
                                    'Hola, ${user.name}!',
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 23,
                                    ),
                                  ),
                                );

                final title = Container(
                    padding: EdgeInsets.only(bottom: 150),
                    child: Text(
                      "¿Qué servicio vas a necesitar hoy?",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 22,
                        color: Colors.white
                      ),
                    ),
                  );

                  final titleAds = Container(
                      padding: EdgeInsets.only(top: 10,bottom:10, left: 20),
                      child: Text(
                        "Promociones",
                        textAlign: TextAlign.left,
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 20,
                            color: Colors.black38
                        ),
                      ),
                    );

                    final buttons = Container(
                          alignment: Alignment.center,
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: <Widget>[
                              ButtonOrders(
                                text: "Lavado",
                                title: "Planchado",
                                width: 130,
                                height: 100,
                                userPayID: userPayID,
                              ),
                            ],
                          ),
                        );

           return MaterialApp(
        home: Scaffold(
            body: ListView(
              children: <Widget>[
                BarIcons(),
                SelectAvatar(user),
                name,
                Stack(
                  alignment: Alignment.center,
                  children: <Widget>[
                    GradientBack(height: 220),
                    title,
                    buttons,
                  ],
                ),
                titleAds,
                Ads(),
                ListOrder(user.uid, user)
              ],
            ),
          ),
        //home:
      );
  }

         
      },
    );
  }
}