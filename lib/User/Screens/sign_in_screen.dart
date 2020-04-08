import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:lavalo/User/Bloc/user_bloc.dart';
import 'package:lavalo/User/Models/user.dart';
import 'package:lavalo/User/Screens/profile.dart';
import 'package:lavalo/Welcome/card.dart';
import 'package:lavalo/Widgets/gradient_back.dart';

import 'package:generic_bloc_provider/generic_bloc_provider.dart';




class SignIn extends StatefulWidget {

  String titleButton = "Registrarme con Google";

  @override
  State createState() => _SignInState();
}

class _SignInState extends State<SignIn> {

  UserBloc userBloc;

  @override
  Widget build(BuildContext context) {

    userBloc = BlocProvider.of(context);

    return _handleCurrentSession();
  }

  Widget _handleCurrentSession(){
    return StreamBuilder(
        stream: userBloc.authStatus,
        builder: (BuildContext context, AsyncSnapshot snapshot){
          if(!snapshot.hasData || snapshot.hasError) {
            return signInGoogleUI();
          } else {
            return Profile();
          }
        },
    );
  }

  Widget signInGoogleUI() {
    return Scaffold(
      body: Stack(
        alignment: Alignment.bottomCenter,

        children: <Widget>[
          GradientBack(),

          Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
               CardWel(),
            ],
          ),
        ],
      ),
    );
  }


}

