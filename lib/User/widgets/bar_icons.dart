import 'package:flutter/material.dart';
import 'package:generic_bloc_provider/generic_bloc_provider.dart';
import 'package:lavalo/Help/Screen/Help.dart';
import 'package:lavalo/TermsAndConditions/Screen/Terms.dart';
import 'package:lavalo/User/Bloc/user_bloc.dart';
import 'package:lavalo/User/Screens/priceScreen.dart';

class BarIcons extends StatelessWidget {

  UserBloc userBloc;

  @override
  Widget build(BuildContext context) {
    userBloc = BlocProvider.of(context);

    final iconLeft = PopupMenuButton(
      offset: Offset(0, 100),
      icon:Icon(
        Icons.info_outline,
        color: Color(0xFF00d0d3),
      ),
      itemBuilder: (context)=>[
        PopupMenuItem(
          value: 1,
          child: Text("Términos y condiciones"),
        ),
        PopupMenuItem(
          value: 2,
          child: Text("Ayuda"),
        ),

        PopupMenuItem(
          value: 3,
          child: Text("Tabla de Precios"),
        ),
        PopupMenuItem(
          value: 4,
          child: Text("Cerrar Sesión"),
        )
      ],

      onSelected: (value){
        print("Valor seleccionado: $value");
        if( value == 1 ){
          Navigator.push(context,
          new MaterialPageRoute(
              builder: (BuildContext context) =>
              new Terms()
          ));
        }else if(value == 2){
          Navigator.push(context,
              new MaterialPageRoute(
                  builder: (BuildContext context) =>
                  new Help()
              ));
        }else if(value == 3){
          Navigator.push(context,
              new MaterialPageRoute(
                  builder: (BuildContext context) =>
                  new Pricescreen()
              ));
        }else{
          userBloc.signOut();
        }
      },
    );


    final iconRight = InkWell(
      child: Icon(
        Icons.notifications_none,
        color: Color(0xFF00d0d3),
      ),
    );

    return Container(
      margin: EdgeInsets.only(
        top: 10,
        left: 20,
        right: 20
      ),

      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          iconRight,
          iconLeft,
        ],
      ),
    );
  }
}
