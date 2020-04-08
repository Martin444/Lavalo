import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:lavalo/User/Models/user.dart';

import 'avatar.dart';

class SelectAvatar extends StatefulWidget {

  User user;
  int isMale;

  SelectAvatar(this.user);

  @override
  _SelectAvatarState createState() => _SelectAvatarState();
}

class _SelectAvatarState extends State<SelectAvatar> {
  @override
  Widget build(BuildContext context) {
    return StreamBuilder(
      stream: Firestore.instance.collection('users').document(widget.user.uid).snapshots(),
      builder: (BuildContext context, AsyncSnapshot snapshot)  {
       if( snapshot.hasData ){

         Map<dynamic, dynamic> map = snapshot.data.data;

        
         print(map['male']);
        return Container(
          child: Avatar("assets/avatarend.gif"),
        );
       }else{
        return Container(
           child: Text("data"),
         );
       }
      }
    );
  }
}