import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:generic_bloc_provider/generic_bloc_provider.dart';
import 'package:lavalo/User/Bloc/user_bloc.dart';
import 'package:lavalo/User/Models/user.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:lavalo/User/widgets/avatar.dart';
import 'package:lavalo/Welcome/widgets/image_card.dart';
import 'package:lavalo/Widgets/button_green.dart';

class CardWel extends StatefulWidget {

  String titleButton = "Haz click aquí";
  

  int isMale;

  List<bool> _selections = List.generate(2, (_) => false);

  @override
  _CardWelState createState() => _CardWelState();
}

class _CardWelState extends State<CardWel> {


  UserBloc userBloc;

  @override
  Widget build(BuildContext context) {

    userBloc = BlocProvider.of(context);

    return Center(
      child: CarouselSlider(
        height: MediaQuery.of(context).size.height / 1.2,
        aspectRatio: 12,
        autoPlayInterval: Duration(seconds: 11),
        enableInfiniteScroll: false,
        autoPlay: true,
        items: <Widget>[
          WelcomeImage("assets/img/img1.jpg"),
          WelcomeImage("assets/img/img2.jpg"),
          WelcomeImage("assets/img/img3.jpg"),
          WelcomeImage("assets/img/img4.jpg"),
          WelcomeImage("assets/img/img5.jpg"),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text("Iniciar sesión con Google",
                style: TextStyle(
                    fontSize: 27.0,
                    fontFamily: "Lato",
                    color: Colors.white,
                    fontWeight: FontWeight.bold
                ),
              ),

              ButtonGreen(
                text: widget.titleButton,
                onPressed: (){
                  setState((){
                    widget.titleButton = "Cargando...";
                  });
                userBloc.signOut();
                userBloc.signIn().then((FirebaseUser user){
                    userBloc.updateUserData(User(
                        uid: user.uid,
                        name: user.displayName,
                        email: user.email,
                        photoURL: user.photoUrl,
                    ));
                  });
                },
                width: 300.0,
                height: 50.0,
              ),

            ],
          )
        ],

      ),
    );
  }
}